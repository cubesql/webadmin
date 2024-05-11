#!/bin/sh
#

# **************************************************************
# Keychain: Notarization
# **************************************************************
# https://developer.apple.com/documentation/xcode/notarizing_macos_software_before_distribution/customizing_the_notarization_workflow?language=objc
# **************************************************************
# 1st: You need to create an application specific password for your AppleID.
# 2nd: You need to know the TeamID.
#
# Add the AppleID, TeamID and app-specific password to your keychain:
# xcrun notarytool store-credentials "Xojo2DMG-notarytool" --apple-id "my-appleid@icloud.com" --team-id "XXXXXXXXXX" --password "aaaa-bbbb-cccc-dddd"
# **************************************************************


# get input
echo "Xojo2PKG: reading input variables..."
PROJECT_PATH=$1
BUILD_LOCATION=$2
BUILD_APPNAME=$3
APP_BUNDLEIDENTIFIER=$4
APP_VERSION=$5
PKG_FILENAME=$6
CODESIGN_IDENT_APPLICATION=$7
CODESIGN_IDENT_INSTALLER=$8
CODESIGN_ENTITLEMENTS=$9

NOTARYTOOL_KEYCHAIN_PROFILE=Xojo2DMG-notarytool


# check input
echo ""
echo "Xojo2PKG: checking input variables..."
if [ -z "$PROJECT_PATH" ]; then
	echo "Xojo2PKG ERROR: \$PROJECT_PATH is empty."
	exit 9
fi
if [ ! -d "${PROJECT_PATH}" ]; then
	echo "Xojo2PKG ERROR: \${PROJECT_PATH} = ${PROJECT_PATH} directory doesn't exist."
	exit 8
fi
if [ -z "$BUILD_LOCATION" ]; then
	echo "Xojo2PKG ERROR: \$BUILD_LOCATION is empty."
	exit 9
fi
if [ ! -d "${BUILD_LOCATION}" ]; then
	echo "Xojo2PKG ERROR: \${BUILD_LOCATION} = ${BUILD_LOCATION} directory doesn't exist."
	exit 8
fi
if [ -z "$BUILD_APPNAME" ]; then
	echo "Xojo2PKG ERROR: \$BUILD_APPNAME is empty."
	exit 9
fi
if [ -z "$CODESIGN_IDENT_APPLICATION" ]; then
	echo "Xojo2PKG ERROR: \$CODESIGN_IDENT_APPLICATION is empty."
	exit 9
fi
if [ -z "$CODESIGN_IDENT_INSTALLER" ]; then
	echo "Xojo2PKG ERROR: \$CODESIGN_IDENT_INSTALLER is empty."
	exit 9
fi
if [ -z "$CODESIGN_ENTITLEMENTS" ]; then
	echo "Xojo2PKG ERROR: \$CODESIGN_ENTITLEMENTS is empty."
	exit 9
fi
if [ ! -f "$CODESIGN_ENTITLEMENTS" ]; then
	echo "Xojo2PKG ERROR: \$CODESIGN_ENTITLEMENTS = ${CODESIGN_ENTITLEMENTS} doesn't exist."
	exit 9
fi

# set up a couple of things
echo ""
echo "Xojo2PKG: setting up a couple of things..."


# we should not need to change these
FROM_FOLDER="${BUILD_LOCATION}"
FROM_EXECUTABLE="${BUILD_LOCATION}/${BUILD_APPNAME}"
FROM_LIBS="${BUILD_LOCATION}/${BUILD_APPNAME} Libs"

PKG_FINAL="${BUILD_LOCATION}/../../${PKG_FILENAME}"
STAGING_DIR_APP="${BUILD_LOCATION}/../_Staging_APP"
STAGING_DIR_PKG="${BUILD_LOCATION}/../_Staging_PKG"
PKG_STAGE="${STAGING_DIR_PKG}/${PKG_FILENAME}"

# change to our working directory
echo ""
echo "Xojo2PKG: change to our working directory"
if [ ! -d "${BUILD_LOCATION}" ]; then
	echo "Xojo2PKG ERROR: \${BUILD_LOCATION} = ${BUILD_LOCATION} doesn't exist."
	exit 8
fi
cd "${BUILD_LOCATION}"

echo "Xojo2PKG: looking for the built .app's macOS executable"
if [ ! -f "${FROM_EXECUTABLE}" ]; then
	echo "Xojo2PKG ERROR: \${FROM_EXECUTABLE} = ${FROM_EXECUTABLE} doesn't exist."
	exit 8
fi

echo "Xojo2PKG: looking for the built .app's Libs"
if [ ! -d "${FROM_LIBS}" ]; then
	echo "Xojo2PKG ERROR: \${FROM_LIBS} = ${FROM_LIBS} doesn't exist."
	exit 8
fi

# clear out any old data
echo ""
echo "Xojo2PKG: clear out any old data"
rm -rf "${STAGING_DIR_APP}" "${STAGING_DIR_PKG}" "${PKG_FINAL}"

sync

# Prepare Environment to build the PKG
# ************************************

# create our staging directory
echo ""
echo "Xojo2PKG: create our staging directory to build the PKG"
cd "${BUILD_LOCATION}/.."
mkdir -p "${STAGING_DIR_APP}/${BUILD_APPNAME}"
if [ ! -d "${STAGING_DIR_APP}/${BUILD_APPNAME}" ]; then
	echo "Xojo2PKG ERROR: \${STAGING_DIR_APP}/${BUILD_APPNAME} = ${STAGING_DIR_APP}/${BUILD_APPNAME} doesn't exist."
	exit 8
fi

# copy over the stuff we want in the final disk image to our staging directory
echo ""
echo "Xojo2PKG: copy all we need in the final disk image to our staging directory"
ditto "${BUILD_LOCATION}" "${STAGING_DIR_APP}/${BUILD_APPNAME}"
if [ $? -gt 0 ]; then
	echo "Xojo2PKG ERROR: ditto \"${BUILD_LOCATION}\" \"${STAGING_DIR_APP}/${BUILD_APPNAME}\" failed."
	exit 8
fi

echo ""
echo "Xojo2PKG: waiting for App to finish copying to staging directory..."
sync
sleep 2

# CodeSign
# ********
cd "${STAGING_DIR_APP}"

echo ""
echo "Xojo2PKG: Begin CodeSigning"
# Removing extended Attributes (otherwise Xcode 8 and newer won't sign)
echo ""
echo "Xojo2PKG: Remove extended Attributes"
xattr -rc "${STAGING_DIR_APP}"

echo "Xojo2PKG: perform CodeSign with Hardened Runtime"

echo "Xojo2PKG: Make a copy of Entitlements.plist"
CODESIGN_ENTITLEMENTS_APPLY="${STAGING_DIR_APP}/CodeSign_Entitlements.plist"
if [ -f "${CODESIGN_ENTITLEMENTS_APPLY}" ]; then
	rm -f "${CODESIGN_ENTITLEMENTS_APPLY}"
fi
ditto "${CODESIGN_ENTITLEMENTS}" "${CODESIGN_ENTITLEMENTS_APPLY}"
sync
if [ ! -f "${CODESIGN_ENTITLEMENTS_APPLY}" ]; then
	echo "Xojo2PKG ERROR: \$CODESIGN_ENTITLEMENTS plist file not found."
	exit 11
fi
echo "Xojo2PKG: Entitlements: Disable com.apple.security.cs.debugger"
sed -i '' '/<key>com.apple.security.cs.debugger</{n;s/true/false/;}' "${CODESIGN_ENTITLEMENTS_APPLY}"

# Sign the app
echo ""
echo "Xojo2PKG: Sign the app..."
cd "${STAGING_DIR_APP}/${BUILD_APPNAME}"
if [ -d "./_CodeSignature" ]; then
	echo "Xojo2PKG: Removing existing _CodeSignature..."
	rm -r -f "./_CodeSignature"
	sync
	sleep 1
fi

echo ""
echo "Xojo2PKG: Sign the app's .dylibs"
codesign --timestamp -f -s "${CODESIGN_IDENT_APPLICATION}" "./${BUILD_APPNAME} Libs/"*.dylib
echo ""
echo "Xojo2PKG: Sign the app's .commands"
codesign --timestamp -f -s "${CODESIGN_IDENT_APPLICATION}" "./"*.command
echo ""
echo "Xojo2PKG: Sign the app executable"
codesign --timestamp -f --options runtime --entitlements "${CODESIGN_ENTITLEMENTS_APPLY}" --deep -s "${CODESIGN_IDENT_APPLICATION}" -i "${APP_BUNDLEIDENTIFIER}" "./${BUILD_APPNAME}"
echo ""
echo "Xojo2PKG: waiting for App to finish signing..."
sleep 3

if [ -f "${CODESIGN_ENTITLEMENTS_APPLY}" ]; then
	rm -f "${CODESIGN_ENTITLEMENTS_APPLY}"
fi
sync


# Check CodeSign
echo ""
echo "Xojo2PKG: checking CodeSign... (Verifying Part 1)"
codesign -d -vvvv "./${BUILD_APPNAME}"
if [ $? -gt 0 ]; then
	echo "Xojo2PKG ERROR: codesign -d -vvvv \"${BUILD_APPNAME}\" failed."
	exit 11
fi
echo ""
echo "Xojo2PKG: checking CodeSign... (Verifying Part 2)"
codesign --verify --verbose=3 "./${BUILD_APPNAME}"
if [ $? -gt 0 ]; then
	echo "Xojo2PKG ERROR: codesign --verify --verbose=3 \"${BUILD_APPNAME}\" failed."
	exit 11
fi
echo ""
echo "Xojo2PKG: checking CodeSign... (Verifying Part 3)"
codesign -d -vvvv "./${BUILD_APPNAME} Libs/"*.dylib
if [ $? -gt 0 ]; then
	echo "Xojo2PKG ERROR: codesign -d -vvvv of .dylibs failed."
	exit 11
fi
echo ""
echo "Xojo2PKG: checking CodeSign... (Verifying Part 4)"
codesign --verify --verbose=3 "./${BUILD_APPNAME} Libs/"*.dylib
if [ $? -gt 0 ]; then
	echo "Xojo2PKG ERROR: codesign --verify --verbose=3 of .commands failed."
	exit 11
fi
echo ""
echo "Xojo2PKG: checking CodeSign... (Verifying Part 5)"
codesign -d -vvvv "./"*.command
if [ $? -gt 0 ]; then
	echo "Xojo2PKG ERROR: codesign -d -vvvv of .dylibs failed."
	exit 11
fi
echo ""
echo "Xojo2PKG: checking CodeSign... (Verifying Part 6)"
codesign --verify --verbose=3 "./"*.command
if [ $? -gt 0 ]; then
	echo "Xojo2PKG ERROR: codesign --verify --verbose=3 of .commands failed."
	exit 11
fi

echo ""
echo "Xojo2PKG: finished checking CodeSign"
sleep 1


#*******************
# Create .pkg
#*******************
echo ""
echo "Xojo2PKG: preparing stage for .pkg"

cd "${STAGING_DIR_PKG}"

mkdir -p "${STAGING_DIR_PKG}"
if [ ! -d "${STAGING_DIR_PKG}" ]; then
	echo "Xojo2PKG ERROR: \${STAGING_DIR_PKG} = ${STAGING_DIR_PKG} doesn't exist."
	exit 8
fi

echo ""
echo "Xojo2PKG: creating .pkg with pkgbuild..."

pkgbuild --root "${STAGING_DIR_APP}" \
         --identifier "${APP_BUNDLEIDENTIFIER}.pkg" \
         --version "${APP_VERSION}" \
         --install-location "/Applications" \
         --sign "${CODESIGN_IDENT_INSTALLER}" \
         --timestamp \
         "${PKG_STAGE}"

if [ $? -gt 0 ]; then
	echo "Xojo2PKG ERROR: pkgbuild failed."
	exit 8
fi

sync
sleep 1

echo ""
echo "Xojo2PKG: prep distribution.xml"

cd "${STAGING_DIR_PKG}"

productbuild --synthesize --package "${PKG_STAGE}" "./_distribution.xml"
if [ $? -gt 0 ]; then
	echo "Xojo2PKG ERROR: productbuild synthesize package failed."
	exit 8
fi

sync
sleep 1

echo ""
echo "Xojo2PKG: finalize distribution.xml"

awk "NR==3{print \"<title>${BUILD_APPNAME}</title>\"}1" "./_distribution.xml" > "./distribution.xml"
if [ $? -gt 0 ]; then
	echo "Xojo2PKG ERROR: adding title to distribution.xml failed."
	exit 8
fi

sync
sleep 1

echo ""
echo "Xojo2PKG: productbuild .pkg for distribution"

cd "${STAGING_DIR_PKG}"

productbuild --distribution "./distribution.xml"  --package-path "./${PKG_FILENAME}" --sign "${CODESIGN_IDENT_INSTALLER}" "${PKG_FINAL}"
if [ $? -gt 0 ]; then
	echo "Xojo2PKG ERROR: productbuild for distribution failed."
	exit 8
fi

sync
sleep 2


# check .pkg signature
echo ""
echo "Xojo2PKG: check .pkg signature"
pkgutil --check-signature "$PKG_FINAL"
if [ $? -gt 0 ]; then
	echo "Xojo2PKG ERROR: Checking signature of .pkg failed."
	exit 8
fi


# clean up
echo ""
echo "Xojo2PKG: cleaning up..."
rm -rf "${STAGING_DIR_APP}" "${STAGING_DIR_PKG}"


#*******************
# Notarize by Apple
#*******************
NOTARIZATION_COMPLETED=0
NOTARIZATION_RESULT=0

echo "Xojo2PKG: Notarize by Apple"
sync
NOTARIZATION_COMPLETED=0
echo "Xojo2PKG: Submitting to Apple for Notarization... This can take a while..."
APP_NOTARIZATION_OUTPUT="${BUILD_LOCATION}/../notarization_output.txt"
APP_NOTARIZATION_LOG="${BUILD_LOCATION}/../notarization_log.txt"
xcrun notarytool submit "${PKG_FINAL}" --keychain-profile "${NOTARYTOOL_KEYCHAIN_PROFILE}" --wait 2>&1 | tee "${APP_NOTARIZATION_OUTPUT}"
NOTARIZATION_RESULT=$?
sync

NOTARYTOOL_REQUEST_ID=$(sed -n 's/  id: \(.*\)/\1/p' "${APP_NOTARIZATION_OUTPUT}" | head -n 1)
NOTARYTOOL_STATUS=$(sed -n 's/  status: \(.*\)/\1/p' "${APP_NOTARIZATION_OUTPUT}" | tail -n 1)

if [ "${NOTARYTOOL_STATUS}" = "Accepted" ]; then
	NOTARIZATION_COMPLETED=1
	echo "Xojo2PKG: Notarization Accepted - Staple to .pkg"
	sync
	xcrun stapler staple -v "${PKG_FINAL}"
	NOTARIZATION_RESULT=$?
	if [ $NOTARIZATION_RESULT -eq 0 ]; then
		echo "Notarization: Staple to .pkg successfully completed"
		NOTARIZATION_COMPLETED=2
	else
		echo "Xojo2PKG ERROR: Notarization Error - Staple to .pkg was not successful."
		exit 12
	fi
else
	if [ ! -z $NOTARYTOOL_REQUEST_ID ]; then
		echo "Xojo2PKG: Get Notarization Log"
		xcrun notarytool log "${NOTARYTOOL_REQUEST_ID}" --keychain-profile "${NOTARYTOOL_KEYCHAIN_PROFILE}" $NOTARIZATION_IN_GITHUB_ACTIONS_KEYCHAINPATH 2>&1 | tee "${APP_NOTARIZATION_LOG}"
	fi
	echo "Xojo2PKG ERROR: Notarization Error"
	exit 12
fi

#cleanup output - Notarization was successful
rm -f "${APP_NOTARIZATION_OUTPUT}"
sync

if [ $NOTARIZATION_COMPLETED -eq 2 ]; then
	echo "Xojo2PKG: Notarization by Apple has completed successfully."
else
	echo "Xojo2PKG ERROR: Notarization could not be completed."
	exit 12
fi
sync

sync
sleep 2

# check .pkg signature
echo ""
echo "Xojo2PKG: check .pkg signature"
pkgutil --check-signature "$PKG_FINAL"
if [ $? -gt 0 ]; then
	echo "Xojo2PKG ERROR: Checking signature of .pkg failed."
	exit 12
fi

# check .pkg Notarization
echo ""
echo "Xojo2PKG: check .pkg Notarization"
stapler validate "$PKG_FINAL"
if [ $? -gt 0 ]; then
	echo "Xojo2PKG ERROR: Checking Notarization of .pkg failed."
	exit 12
fi

# SecAssessment of .pkg
echo ""
echo "Xojo2PKG: SecAssessment of .pkg"
spctl -a -v --type install "$PKG_FINAL"
if [ $? -gt 0 ]; then
	echo "Xojo2PKG ERROR: SecAssessment of .pkg failed."
	exit 12
fi


echo ""
echo "Xojo2PKG: It's all done."
exit 0