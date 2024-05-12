#tag BuildAutomation
			Begin BuildStepList Linux
				Begin BuildProjectStep Build
				End
				Begin CopyFilesBuildStep CopyLaunchSh
					AppliesTo = 2
					Architecture = 0
					Target = 0
					Destination = 0
					Subdirectory = 
					FolderItem = Li4vc2NyaXB0cy9MYXVuY2guc2g=
				End
				Begin IDEScriptBuildStep ChmodLaunchSh , AppliesTo = 2, Architecture = 0, Target = 0
					'Post Build Script is for Builds on macOS
					If (Not TargetMacOS) Then
					Return
					End If
					
					'Make sure the Launch Script is executable:
					Var sBUILD_LOCATION As String = CurrentBuildLocation.ReplaceAll("\", "") 'don't escape Path
					Call DoShellCommand("chmod 755 """ + sBUILD_LOCATION + "/Launch.sh""", 0)
					
				End
				Begin IDEScriptBuildStep CreateTGZ , AppliesTo = 2, Architecture = 0, Target = 0
					'****************************
					'Create .tgz for Linux Builds
					'****************************
					
					'Post Build Script is for Builds on macOS
					If (Not TargetMacOS) Then
					Return
					End If
					
					'Check Build
					If DebugBuild Then
					Return
					End If
					
					'Check Stage Code
					Var sStageCodeInfo As String
					Select Case PropertyValue("App.StageCode")
					Case "0" 'Development
					sStageCodeInfo = "-dev"
					Case "1" 'Alpha
					sStageCodeInfo = "-alpha"
					Case "2" 'Beta
					sStageCodeInfo = "-beta"
					Case "3" 'Final
					'not used in filename
					End Select
					
					'Check Build Target
					Var sTGZFilename As String
					Select Case CurrentBuildTarget
					Case 4 'Linux (Intel, 32Bit)
					sTGZFilename = "cubeSQLWebAdmin" + sStageCodeInfo + "_Linux_Intel_32Bit.tgz"
					Case 17 'Linux (Intel, 64Bit)
					sTGZFilename = "cubeSQLWebAdmin" + sStageCodeInfo + "_Linux_Intel_64Bit.tgz"
					Case 18 'Linux (ARM, 32Bit)
					sTGZFilename = "cubeSQLWebAdmin" + sStageCodeInfo + "_Linux_ARM_32Bit.tgz"
					Case 26 'Linux (ARM, 64Bit)
					sTGZFilename = "cubeSQLWebAdmin" + sStageCodeInfo + "_Linux_ARM_64Bit.tgz"
					Else
					Return
					End Select
					
					'Xojo Project Settings
					Var sPROJECT_PATH As String = Trim(DoShellCommand("echo $PROJECT_PATH", 0))
					If Right(sPROJECT_PATH, 1) = "/" Then
					'no trailing /
					sPROJECT_PATH = Mid(sPROJECT_PATH, 1, Len(sPROJECT_PATH)-1)
					End If
					Var sBUILD_LOCATION As String = ReplaceAll(CurrentBuildLocation, "\", "") 'don't escape Path
					Var sBUILD_APPNAME As String = CurrentBuildAppName
					
					If (sPROJECT_PATH = "") Then
					Print "Xojo PostBuild Script CreateTGZ requires to get the Environment Variable $PROJECT_PATH from the Xojo IDE." + EndOfLine + EndOfLine + "Unfortunately, it's empty.... try again after re-launching the Xojo IDE and/or rebooting your machine."
					Return
					End If
					
					'Create .tgz
					Var pathParts() As String = sBUILD_LOCATION.Split("/")
					Var foldernameApp As String = pathParts(pathParts.LastIndex)
					pathParts.RemoveAt(pathParts.LastIndex)
					Var baseFolder As String = String.FromArray(pathParts, "/")
					
					Call DoShellCommand("cd """ + baseFolder + """ && tar -c -z -v --no-mac-metadata --no-xattrs -f ../" + sTGZFilename + " ./" + foldernameApp, 0)
					
				End
				Begin IDEScriptBuildStep Xojo2Docker , AppliesTo = 3, Architecture = 1, Target = 0
					'*************************************************************
					'Xojo Web App 2 Docker - How to use with your Xojo-built .app?
					'*************************************************************
					'1. copy the folder 'scripts' to your project folder.
					'2. Edit the file 'Dockerfile' in your favourite Text Editor.
					'   1. Look for the last line: CMD /app/CRCCalculatorWeb
					'      Make sure the App Name is the same as in your Xojo
					'      project in Build Settings -> Linux
					'   2. Look for the line: EXPOSE 80
					'      Make sure the App Name is the same as in your Xojo
					'      project in Build Settings -> Shared: Build (Port)
					'3. Create a PostBuild Copy File Step 'CopyDockerfile'
					'   Copy the file 'resources/Dockerfile' to 'App Parent Folder'
					'4. create a PostBuild Script, place it after the
					'   build step and copy-and-paste this one.
					'5. Add/Modify the Constant App.constDockerTag to fit your
					'   Company/App
					'6. Read the Comments in the PostBuild Script,
					'   modify according to your needs.
					'**************************************************
					
					'**************************************************
					'Setup Xojo Web App 2 Docker - Post Build Script
					'**************************************************
					'1. Read the comments in this PostBuild Script
					'2. Edit the values according to your needs
					'**************************************************
					'3. If it's working for you: Do you like it? Does it help you? Has it saved you time and money?
					'   You're welcome - it's free...
					'   If you want to say thanks I appreciate a message or a small donation.
					'   Contact: xojo@jo-tools.ch
					'   PayPal:  https://paypal.me/jotools
					'**************************************************
					
					
					'**************************************************
					'Requires Docker Installation
					'**************************************************
					'Download, install and run Docker.app:
					'https://docs.docker.com/docker-for-mac/install/
					'**************************************************
					
					'Configuration
					'-------------
					'Docker Tag: will be used from App.constDockerTag
					'Docker Push (to Docker Hub):
					Var bDockerPushEnabled As Boolean = False
					Select Case PropertyValue("App.StageCode")
					Case "0" 'Development
					bDockerPushEnabled = False
					Case "1" 'Alpha
					bDockerPushEnabled = False
					Case "2" 'Beta
					bDockerPushEnabled = False
					Case "3" 'Final
					bDockerPushEnabled = True
					End Select
					
					
					'*******************************************
					'Xojo Web App 2 Docker  - Let's go...
					'*******************************************
					If (Not TargetMacOS) Then
					Return
					End If
					
					
					'Check Build Target
					Select Case CurrentBuildTarget
					Case 17
					'Linux (Intel, 64Bit)
					Else
					Return
					End Select
					
					'Check Build
					If DebugBuild Then
					Return
					End If
					
					'Xojo Project Settings
					Var sPROJECT_PATH As String = Trim(DoShellCommand("echo $PROJECT_PATH", 0))
					If Right(sPROJECT_PATH, 1) = "/" Then
					'no trailing /
					sPROJECT_PATH = Mid(sPROJECT_PATH, 1, Len(sPROJECT_PATH)-1)
					End If
					Var sBUILD_LOCATION As String = ReplaceAll(CurrentBuildLocation, "\", "") 'don't escape Path
					Var sBUILD_APPNAME As String = CurrentBuildAppName
					
					If (sPROJECT_PATH = "") Then
					Print "Xojo Web App 2 Docker requires to get the Environment Variable $PROJECT_PATH from the Xojo IDE." + EndOfLine + EndOfLine + "Unfortunately, it's empty.... try again after re-launching the Xojo IDE and/or rebooting your machine."
					Return
					End If
					
					'App Version -> used for Docker Image Tag
					Var sAPP_VERSION As String = PropertyValue("App.MajorVersion") + "." + PropertyValue("App.MinorVersion") + "." + PropertyValue("App.BugVersion")
					Select Case PropertyValue("App.StageCode")
					Case "0"
					sAPP_VERSION = sAPP_VERSION + "-dev"
					Case "1"
					sAPP_VERSION = sAPP_VERSION + "-alpha"
					Case "2"
					sAPP_VERSION = sAPP_VERSION + "-beta"
					End Select
					
					'DockerTag
					Var sDOCKER_TAG As String = ConstantValue("App.constDockerTag")
					If (sDOCKER_TAG = "") Then
					Print "Xojo Web App 2 Docker requires the Constant: App.constDockerTag."
					Return
					End If
					sDOCKER_TAG = sDOCKER_TAG + ":" + sAPP_VERSION
					
					'Add DockerFile
					Call DoShellCommand("cp """ + sPROJECT_PATH + "/scripts/Dockerfile"" """ + sBUILD_LOCATION + "/Dockerfile""", 0)
					
					
					'The Contents of Array will later be passed to
					'the ShellScript 'xojo2docker.sh', which does all the processing
					'
					'The order is important, so don't change anything here without
					'changing the ShellScript, too.
					Var sShellArguments() As String
					
					'Parameters required to create the Docker Image
					sShellArguments.Add(sPROJECT_PATH)
					sShellArguments.Add(sBUILD_LOCATION)
					sShellArguments.Add(sBUILD_APPNAME)
					sShellArguments.Add(sDOCKER_TAG)
					sShellArguments.Add(If(bDockerPushEnabled, "yes", "no"))
					
					'Make sure the ShellScript is executable:
					Call DoShellCommand("chmod 755 """ + sPROJECT_PATH + "/scripts/xojo2docker.sh""", 0)
					
					If (Not DebugBuild) Then
					'Automate Terminal:
					'Pass ShellArguments to Script and execute it in Terminal.app
					Call DoShellCommand("osascript -e 'tell application ""Terminal"" to activate'", 0)
					Call DoShellCommand("osascript -e 'tell application ""Terminal"" to do script ""\""" + sPROJECT_PATH + "/scripts/xojo2docker.sh\"" \""" + Join(sShellArguments, "\"" \""") + "\""""'", 0)
					Return 'see progress and errors in Terminal.app
					End If
					
				End
			End
			Begin BuildStepList Mac OS X
				Begin BuildProjectStep Build
				End
				Begin CopyFilesBuildStep CopyLaunchShCommand
					AppliesTo = 2
					Architecture = 0
					Target = 0
					Destination = 0
					Subdirectory = 
					FolderItem = Li4vc2NyaXB0cy9MYXVuY2guc2guY29tbWFuZA==
				End
				Begin IDEScriptBuildStep ChmodLaunchShCommand , AppliesTo = 2, Architecture = 0, Target = 0
					'Post Build Script is for Builds on macOS
					If (Not TargetMacOS) Then
					Return
					End If
					
					'Make sure the Launch Script is executable:
					Var sBUILD_LOCATION As String = CurrentBuildLocation.ReplaceAll("\", "") 'don't escape Path
					Call DoShellCommand("chmod 755 """ + sBUILD_LOCATION + "/Launch.sh.command""", 0)
					
				End
				Begin SignProjectStep Sign
				  DeveloperID=
				End
				Begin IDEScriptBuildStep Xojo2PKG , AppliesTo = 3, Architecture = 0, Target = 0
					'***********************
					'Create a notarized .pkg
					'***********************
					
					'Only for Final Builds
					Select Case PropertyValue("App.StageCode")
					Case "3" 'Final
					'continue
					Else
					Return
					End Select
					
					'Post Build Script is for Builds on macOS
					If (Not TargetMacOS) Then
					Return
					End If
					
					'Check Build
					If DebugBuild Then
					Return
					End If
					
					'Check Xojo's Build Target
					Select Case CurrentBuildTarget
					Case 16 'macOS: Intel 64Bit
					'ok, continue
					Case 24 'macOS: ARM 64Bit
					'ok, continue
					Case 9 'macOS: Universal (Intel 64Bit, ARM 64Bit)
					'ok, continue
					Else
					Return
					End Select
					
					'**************************************************
					'Xojo2PKG is a modified version of
					'**************************************************
					'Setup Xojo2DMG - Post Build Script
					'**************************************************
					'1. Read the comments in this PostBuild Script
					'2. Edit the values according to your needs
					'**************************************************
					'3. If it's working for you:
					'   Do you like it? Does it help you? Has it saved you time and money?
					'   You're welcome - it's free...
					'   If you want to say thanks I appreciate a message or a small donation.
					'   Contact: xojo@jo-tools.ch
					'   PayPal:  https://paypal.me/jotools
					'**************************************************
					
					'*******************************
					'Required: Xojo Project Settings
					'*******************************
					Var sPROJECT_PATH As String = DoShellCommand("echo $PROJECT_PATH", 0).Trim
					If sPROJECT_PATH.Right(1) = "/" Then
					'No trailing /
					sPROJECT_PATH = sPROJECT_PATH.Middle(1, sPROJECT_PATH.Length-1)
					End If
					Var sBUILD_LOCATION As String = CurrentBuildLocation.ReplaceAll("\", "") 'don't escape Path
					Var sBUILD_APPNAME As String = CurrentBuildAppName 'Xojo 2022r1 adds .app
					If (sBUILD_APPNAME.Right(4) = ".app") Then sBUILD_APPNAME = sBUILD_APPNAME.Left(sBUILD_APPNAME.Length-4)
					
					If (sBUILD_LOCATION.Right(9) = "Universal") Then
					'Xojo does not add the folder of the Console/Web App in Universal Builds to the Constant :(
					sBUILD_LOCATION = sBUILD_LOCATION + "/" + sBUILD_APPNAME
					End If
					
					Var sAPP_BUNDLEIDENTIFIER As String = PropertyValue("App.Application Identifier")
					Var sAPP_VERSION As String = PropertyValue("App.Version")
					
					'Check Stage Code
					Var sStageCodeInfo As String
					Select Case PropertyValue("App.StageCode")
					Case "0" 'Development
					sStageCodeInfo = "-dev"
					Case "1" 'Alpha
					sStageCodeInfo = "-alpha"
					Case "2" 'Beta
					sStageCodeInfo = "-beta"
					Case "3" 'Final
					'not used in filename
					End Select
					
					Var sPKG_FILENAME As String
					Select Case CurrentBuildTarget
					Case 16 'macOS: Intel 64Bit
					sPKG_FILENAME = "cubeSQLWebAdmin" + sStageCodeInfo + "_macOS_Intel_64Bit.pkg"
					Case 24 'macOS: ARM 64Bit
					sPKG_FILENAME = "cubeSQLWebAdmin" + sStageCodeInfo + "_macOS_ARM_64Bit.pkg"
					Case 9 'macOS: Universal (Intel 64Bit, ARM 64Bit)
					sPKG_FILENAME = "cubeSQLWebAdmin" + sStageCodeInfo + "_macOS_Universal.pkg"
					Else
					Return
					End Select
					
					Var sFolderScripts As String = "/scripts"
					
					'*************************
					'CodeSign with DeveloperID
					'*************************
					'Var sCODESIGN_IDENT_APPLICATION As String = "Developer ID Application: YOUR NAME"
					'Var sCODESIGN_IDENT_INSTALLER As String = "Developer ID Installer: YOUR NAME"
					Var sCODESIGN_IDENT_APPLICATION As String = ""
					Var sCODESIGN_IDENT_INSTALLER As String = ""
					Var sCODESIGN_ENTITLEMENTS As String = sPROJECT_PATH + sFolderScripts + "/entitlements.plist"
					
					
					'*********************
					'Notarization by Apple
					'*********************
					'This requires CodeSigning (with DeveloperID) to be enabled (see above)
					'Apple's Documentation:
					'https://developer.apple.com/documentation/xcode/notarizing_macos_software_before_distribution
					'Xojo2DMG uses the customized workflow:
					'https://developer.apple.com/documentation/xcode/notarizing_macos_software_before_distribution/customizing_the_notarization_workflow?language=objc
					
					'**************************************************************
					'Keychain: Notarization
					'**************************************************************
					'1st: You need to create an application specific password for your AppleID:
					'     https://support.apple.com/en-us/HT204397
					'
					'2nd: You need to know the TeamID. This is especially important if the AppleID is associated with multiple teams.
					'     The TeamID is shown on https://developer.apple.com/ -> Account: MemberShip Details
					'
					'Now that you have all information you need:
					'Store these credentials (AppleID, TeamID, app-specific password) using Apple's notarytool to your keychain:
					'
					'xcrun notarytool store-credentials "Xojo2DMG-notarytool" --apple-id "my-appleid@icloud.com" --team-id "XXXXXXXXXX" --password "aaaa-bbbb-cccc-dddd"
					'
					'**************************************************************
					
					
					'*******************************************
					'Xojo2PKG - Let's go...
					'*******************************************
					Var sShellArguments() As String
					
					sShellArguments.Add(sPROJECT_PATH)
					sShellArguments.Add(sBUILD_LOCATION)
					sShellArguments.Add(sBUILD_APPNAME)
					
					sShellArguments.Add(sAPP_BUNDLEIDENTIFIER)
					sShellArguments.Add(sAPP_VERSION)
					sShellArguments.Add(sPKG_FILENAME)
					
					sShellArguments.Add(sCODESIGN_IDENT_APPLICATION)
					sShellArguments.Add(sCODESIGN_IDENT_INSTALLER)
					sShellArguments.Add(sCODESIGN_ENTITLEMENTS)
					
					'Make sure the ShellScripts are executable:
					Call DoShellCommand("chmod 755 """ + sPROJECT_PATH + sFolderScripts + "/xojo2pkg.sh""", 0)
					
					'Pass ShellArguments to Script and execute it in Terminal.app
					Call DoShellCommand("osascript -e 'tell application ""Terminal"" to activate'", 0)
					Call DoShellCommand("osascript -e 'tell application ""Terminal"" to do script ""\""" + sPROJECT_PATH + sFolderScripts + "/xojo2pkg.sh\"" \""" + String.FromArray(sShellArguments, "\"" \""") + "\""""'", 0)
					Return 'see progress and errors in Terminal.app
					
				End
			End
			Begin BuildStepList Windows
				Begin BuildProjectStep Build
				End
				Begin CopyFilesBuildStep CopyLaunchBat
					AppliesTo = 2
					Architecture = 0
					Target = 0
					Destination = 0
					Subdirectory = 
					FolderItem = Li4vc2NyaXB0cy9MYXVuY2guYmF0
				End
				Begin IDEScriptBuildStep CreateZIP , AppliesTo = 2, Architecture = 0, Target = 0
					'******************************
					'Create .zip for Windows Builds
					'******************************
					
					'Post Build Script is for Builds on macOS
					If (Not TargetMacOS) Then
					Return
					End If
					
					'Check Build
					If DebugBuild Then
					Return
					End If
					
					'Check Stage Code
					Var sStageCodeInfo As String
					Select Case PropertyValue("App.StageCode")
					Case "0" 'Development
					sStageCodeInfo = "-dev"
					Case "1" 'Alpha
					sStageCodeInfo = "-alpha"
					Case "2" 'Beta
					sStageCodeInfo = "-beta"
					Case "3" 'Final
					'not used in filename
					End Select
					
					'Check Build Target
					Var sZIPFilename As String
					Select Case CurrentBuildTarget
					Case 3 'Windows (Intel, 32Bit)
					sZIPFilename = "cubeSQLWebAdmin" + sStageCodeInfo + "_Windows_Intel_32Bit.zip"
					Case 19 'Windows (Intel, 64Bit)
					sZIPFilename = "cubeSQLWebAdmin" + sStageCodeInfo + "_Windows_Intel_64Bit.zip"
					Case 25 'Windows(ARM, 64Bit)
					sZIPFilename = "cubeSQLWebAdmin" + sStageCodeInfo + "_Windows_ARM_64Bit.zip"
					Else
					Return
					End Select
					
					'Xojo Project Settings
					Var sPROJECT_PATH As String = Trim(DoShellCommand("echo $PROJECT_PATH", 0))
					If Right(sPROJECT_PATH, 1) = "/" Then
					'no trailing /
					sPROJECT_PATH = Mid(sPROJECT_PATH, 1, Len(sPROJECT_PATH)-1)
					End If
					Var sBUILD_LOCATION As String = ReplaceAll(CurrentBuildLocation, "\", "") 'don't escape Path
					Var sBUILD_APPNAME As String = CurrentBuildAppName
					
					If (sPROJECT_PATH = "") Then
					Print "Xojo PostBuild Script CreateZIP requires to get the Environment Variable $PROJECT_PATH from the Xojo IDE." + EndOfLine + EndOfLine + "Unfortunately, it's empty.... try again after re-launching the Xojo IDE and/or rebooting your machine."
					Return
					End If
					
					'Make sure the ShellScripts are executable:
					Call DoShellCommand("chmod 755 """ + sBUILD_LOCATION + "/Launch.sh""", 0)
					
					'Create .zip
					Var pathParts() As String = sBUILD_LOCATION.Split("/")
					Var foldernameApp As String = pathParts(pathParts.LastIndex)
					pathParts.RemoveAt(pathParts.LastIndex)
					Var baseFolder As String = String.FromArray(pathParts, "/")
					
					Call DoShellCommand("cd """ + baseFolder + """ && zip -r ../" + sZIPFilename + " ./" + foldernameApp, 0)
					
				End
			End
			Begin BuildStepList Xojo Cloud
				Begin BuildProjectStep Build
				End
			End
#tag EndBuildAutomation
