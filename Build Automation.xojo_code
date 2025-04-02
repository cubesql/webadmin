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
					'Post Build Script is for Builds on macOS or Linux
					If (Not TargetMacOS) And (Not TargetLinux) Then
					Return
					End If
					
					'Make sure the Launch Script is executable:
					Var sBUILD_LOCATION As String = CurrentBuildLocation.ReplaceAll("\", "") 'don't escape Path
					Call DoShellCommand("chmod 755 """ + sBUILD_LOCATION + "/Launch.sh""", 0)
					
				End
				Begin IDEScriptBuildStep CreateTGZ , AppliesTo = 2, Architecture = 0, Target = 0
					'**************************************************
					' Create .tgz for Linux Builds
					'**************************************************
					
					If DebugBuild Then Return 'don't create .tgz for DebugRuns
					
					' bSILENT=True : don't show any error messages
					Var bSILENT As Boolean = False
					
					'Check Build Target
					Select Case CurrentBuildTarget
					Case 4 'Linux (Intel, 32Bit)
					Case 17 'Linux (Intel, 64Bit)
					Case 18 'Linux (ARM, 32Bit)
					Case 26 'Linux (ARM, 64Bit)
					Else
					If (Not bSILENT) Then Print "CreateTGZ: Unsupported Build Target"
					Return
					End Select
					
					'Xojo Project Settings
					Var sPROJECT_PATH As String
					Var sBUILD_LOCATION As String = CurrentBuildLocation
					Var sAPP_NAME As String = CurrentBuildAppName
					Var sCHAR_FOLDER_SEPARATOR As String
					If TargetWindows Then 'Xojo IDE is running on Windows
					sPROJECT_PATH = DoShellCommand("echo %PROJECT_PATH%", 0).Trim
					sCHAR_FOLDER_SEPARATOR = "\"
					ElseIf TargetMacOS Or TargetLinux Then 'Xojo IDE running on macOS or Linux
					sPROJECT_PATH = DoShellCommand("echo $PROJECT_PATH", 0).Trim
					If sPROJECT_PATH.Right(1) = "/" Then
					'no trailing /
					sPROJECT_PATH = sPROJECT_PATH.Left(sPROJECT_PATH.Length - 1)
					End If
					If sBUILD_LOCATION.Right(1) = "/" Then
					'no trailing /
					sBUILD_LOCATION = sBUILD_LOCATION.Left(sBUILD_LOCATION.Length - 1)
					End If
					sBUILD_LOCATION = sBUILD_LOCATION.ReplaceAll("\", "") 'don't escape Path
					sCHAR_FOLDER_SEPARATOR = "/"
					End If
					
					If (sPROJECT_PATH = "") Then
					If (Not bSILENT) Then Print "CreateTGZ: Could not get the Environment Variable PROJECT_PATH from the Xojo IDE." + EndOfLine + EndOfLine + "Unfortunately, it's empty.... try again after re-launching the Xojo IDE and/or rebooting your machine."
					Return
					End If
					
					'Check Stage Code for TGZ Filename
					Var sSTAGECODE_SUFFIX As String
					Select Case PropertyValue("App.StageCode")
					Case "0" 'Development
					sSTAGECODE_SUFFIX = "-dev"
					Case "1" 'Alpha
					sSTAGECODE_SUFFIX = "-alpha"
					Case "2" 'Beta
					sSTAGECODE_SUFFIX = "-beta"
					Case "3" 'Final
					'not used in filename
					End Select
					
					'Build TGZ Filename
					Var sTGZ_FILENAME As String
					Select Case CurrentBuildTarget
					Case 4 'Linux (Intel, 32Bit)
					sTGZ_FILENAME = sAPP_NAME.ReplaceAll(" ", "_") + sSTAGECODE_SUFFIX + "_Linux_Intel_32Bit.tgz"
					Case 17 'Linux (Intel, 64Bit)
					sTGZ_FILENAME = sAPP_NAME.ReplaceAll(" ", "_") + sSTAGECODE_SUFFIX + "_Linux_Intel_64Bit.tgz"
					Case 18 'Linux (ARM, 32Bit)
					sTGZ_FILENAME = sAPP_NAME.ReplaceAll(" ", "_") + sSTAGECODE_SUFFIX + "_Linux_ARM_32Bit.tgz"
					Case 26 'Linux (ARM, 64Bit)
					sTGZ_FILENAME = sAPP_NAME.ReplaceAll(" ", "_") + sSTAGECODE_SUFFIX + "_Linux_ARM_64Bit.tgz"
					Else
					Return
					End Select
					
					'Create .tgz
					Var sPATH_PARTS() As String = sBUILD_LOCATION.Split(sCHAR_FOLDER_SEPARATOR)
					Var sAPP_FOLDERNAME As String = sPATH_PARTS(sPATH_PARTS.LastIndex)
					If TargetWindows Then sAPP_FOLDERNAME = sAPP_NAME 'on Windows, BuildLocation is short shell path (e.g. APPNAM~1)
					sPATH_PARTS.RemoveAt(sPATH_PARTS.LastIndex)
					Var sFOLDER_BASE As String = String.FromArray(sPATH_PARTS, sCHAR_FOLDER_SEPARATOR)
					
					Var sTGZ_PARAMS_MACOS As String = If(TargetMacOS, "--no-mac-metadata --no-xattrs", "")
					Var sTGZ_COMMAND As String = "cd """ + sFOLDER_BASE + """ && tar -c -z -v " + sTGZ_PARAMS_MACOS + " -f "".." + sCHAR_FOLDER_SEPARATOR + sTGZ_FILENAME + """ ""." + sCHAR_FOLDER_SEPARATOR + sAPP_FOLDERNAME + """"
					
					Var iTGZ_RESULT As Integer
					Var sTGZ_OUTPUT As String = DoShellCommand(sTGZ_COMMAND, 0, iTGZ_RESULT)
					If (iTGZ_RESULT <> 0) Then
					If (Not bSILENT) Then Print "CreateTGZ Error" + EndOfLine + EndOfLine + _
					sTGZ_OUTPUT.Trim + EndOfLine + _
					"[ExitCode: " + iTGZ_RESULT.ToString + "]"
					End If
					
				End
				Begin IDEScriptBuildStep Xojo2Docker , AppliesTo = 3, Architecture = 0, Target = 0
					'******************************************
					'Xojo Web App 2 Docker
					'******************************************
					'https://github.com/jo-tools/crccalculator
					'******************************************
					
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
					Var sDOCKER_ARCH As String
					Var sDOCKER_BUILD_MULTIARCH_IMAGE As String = "amd64-arm64v8"
					Select Case CurrentBuildTarget
					Case 17
					'Linux (Intel, 64Bit)
					sDOCKER_ARCH = "amd64"
					Case 26
					'Linux (ARM, 64Bit)
					sDOCKER_ARCH = "arm64v8"
					Else
					Return
					End Select
					
					'Check Build
					If DebugBuild Then
					Return
					End If
					
					'Xojo Project Settings
					Var sPROJECT_PATH As String = DoShellCommand("echo $PROJECT_PATH", 0).Trim
					If sPROJECT_PATH.Right(1) = "/" Then
					'no trailing /
					sPROJECT_PATH = sPROJECT_PATH.Left(sPROJECT_PATH.Length - 1)
					End If
					Var sBUILD_LOCATION As String = CurrentBuildLocation.ReplaceAll("\", "") 'don't escape Path
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
					sShellArguments.Add(sDOCKER_ARCH)
					sShellArguments.Add(sDOCKER_BUILD_MULTIARCH_IMAGE)
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
					'https://github.com/jo-tools/xojo2dmg
					'**************************************************
					
					'*******************************
					'Required: Xojo Project Settings
					'*******************************
					Var sPROJECT_PATH As String = DoShellCommand("echo $PROJECT_PATH", 0).Trim
					If sPROJECT_PATH.Right(1) = "/" Then
					'No trailing /
					sPROJECT_PATH = sPROJECT_PATH.Left(sPROJECT_PATH.Length - 1)
					End If
					Var sBUILD_LOCATION As String = CurrentBuildLocation.ReplaceAll("\", "") 'don't escape Path
					Var sBUILD_APPNAME As String = CurrentBuildAppName 'Xojo 2022r1 adds .app
					If (sBUILD_APPNAME.Right(4) = ".app") Then sBUILD_APPNAME = sBUILD_APPNAME.Left(sBUILD_APPNAME.Length - 4)
					
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
					sPKG_FILENAME = sBUILD_APPNAME + sStageCodeInfo + "_macOS_Intel_64Bit.pkg"
					Case 24 'macOS: ARM 64Bit
					sPKG_FILENAME = sBUILD_APPNAME + sStageCodeInfo + "_macOS_ARM_64Bit.pkg"
					Case 9 'macOS: Universal (Intel 64Bit, ARM 64Bit)
					sPKG_FILENAME = sBUILD_APPNAME + sStageCodeInfo + "_macOS_Universal.pkg"
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
					
					If (sCODESIGN_IDENT_APPLICATION = "") Or (sCODESIGN_IDENT_INSTALLER = "") Then
					Print "Xojo2PKG requires the DeveloperID information for CodeSign and Notarization"
					Return
					End If
					
					
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
				Begin IDEScriptBuildStep CodeSign , AppliesTo = 2, Architecture = 0, Target = 0
					'****************************************************
					' CodeSign | Azure Trusted Signing | PFX | Docker
					'****************************************************
					' https://github.com/jo-tools/ats-codesign-innosetup
					'****************************************************
					
					If DebugBuild Then Return 'don't CodeSign DebugRun's
					
					'bSILENT=True : don't show any messages until checking configuration
					'               once .json required files are found: expect Docker and codesign to work
					'               use this e.g. in Open Source projects so that your builds will be codesigned,
					'               but if others are building the project it won't show messages to them
					Var bSILENT As Boolean = True
					
					'Check Build Target
					Select Case CurrentBuildTarget
					Case 3  'Windows (Intel, 32Bit)
					Case 19 'Windows (Intel, 64Bit)
					Case 25 'Windows(ARM, 64Bit)
					Else
					If (Not bSILENT) Then Print "Codesign: Unsupported Build Target"
					Return
					End Select
					
					'Don't CodeSign Development and Alpha Builds
					Select Case PropertyValue("App.StageCode")
					Case "0" 'Development
					If (Not bSILENT) Then Print "Codesign: Not enabled for Development Builds"
					Return
					Case "1" 'Alpha
					If (Not bSILENT) Then Print "Codesign: Not enabled for Alpha Builds"
					Return
					Case "2" 'Beta
					Case "3" 'Final
					End Select
					
					'Configure what to be CodeSigned
					Var sSIGN_FILES() As String
					
					Select Case PropertyValue("App.StageCode")
					Case "3" 'Final
					' sign all .exe's and all .dll's
					sSIGN_FILES.Add("""./**/*.exe""") 'recursively all .exe's
					sSIGN_FILES.Add("""./**/*.dll""") 'recursively all .dll's
					Else
					' only sign all .exe's for Beta/Alpha/Development builds
					sSIGN_FILES.Add("""./**/*.exe""") 'recursively all .exe's
					End Select
					
					'Note: In your project use jotools/codesign if you are not using the InnoSetup Build Step.
					'      It's a smaller Docker Image...
					'      Should your project use the Post Build Script 'InnoSetup' too, then change here to use jotools/innosetup.
					'      InnoSetup includes codesign, too. So you don't need having two different Docker Images taking up space on your machine.
					Var sDOCKER_IMAGE As String = "jotools/codesign" 'or: "jotools/innosetup"
					
					Var sFILE_ACS_JSON As String = "" 'will be searched in ~/.ats-codesign
					Var sFILE_AZURE_JSON As String = "" 'will be searched in ~/.ats-codesign
					Var sFILE_PFX_JSON As String = "" 'will be searched in ~/.pfx-codesign
					Var sFILE_PFX_CERTIFICATE As String = "" 'will be searched in ~/.pfx-codesign
					Var sBUILD_LOCATION As String = CurrentBuildLocation
					
					'Check Environment
					Var sDOCKER_EXE As String = "docker"
					If TargetWindows Then 'Xojo IDE is running on Windows
					sFILE_ACS_JSON = DoShellCommand("if exist %USERPROFILE%\.ats-codesign\acs.json echo %USERPROFILE%\.ats-codesign\acs.json").Trim
					sFILE_AZURE_JSON = DoShellCommand("if exist %USERPROFILE%\.ats-codesign\azure.json echo %USERPROFILE%\.ats-codesign\azure.json").Trim
					sFILE_PFX_JSON = DoShellCommand("if exist %USERPROFILE%\.pfx-codesign\pfx.json echo %USERPROFILE%\.pfx-codesign\pfx.json").Trim
					sFILE_PFX_CERTIFICATE = DoShellCommand("if exist %USERPROFILE%\.pfx-codesign\certificate.pfx echo %USERPROFILE%\.pfx-codesign\certificate.pfx").Trim
					ElseIf TargetMacOS Or TargetLinux Then 'Xojo IDE running on macOS or Linux
					sDOCKER_EXE = DoShellCommand("[ -f /usr/local/bin/docker ] && echo /usr/local/bin/docker").Trim
					If (sDOCKER_EXE = "") Then sDOCKER_EXE = DoShellCommand("[ -f /snap/bin/docker ] && echo /snap/bin/docker").Trim
					sFILE_ACS_JSON = DoShellCommand("[ -f ~/.ats-codesign/acs.json ] && echo ~/.ats-codesign/acs.json").Trim
					sFILE_AZURE_JSON = DoShellCommand("[ -f ~/.ats-codesign/azure.json ] && echo ~/.ats-codesign/azure.json").Trim
					sBUILD_LOCATION = sBUILD_LOCATION.ReplaceAll("\", "") 'don't escape Path
					sFILE_PFX_JSON = DoShellCommand("[ -f ~/.pfx-codesign/pfx.json ] && echo ~/.pfx-codesign/pfx.json").Trim
					sFILE_PFX_CERTIFICATE = DoShellCommand("[ -f ~/.pfx-codesign/certificate.pfx ] && echo ~/.pfx-codesign/certificate.pfx").Trim
					Else
					If (Not bSILENT) Then Print "Codesign: Xojo IDE running on unknown Target"
					Return
					End If
					
					Var bCODESIGN_ATS As Boolean = (sFILE_ACS_JSON <> "") And (sFILE_AZURE_JSON <> "")
					Var bCODESIGN_PFX As Boolean = (sFILE_PFX_JSON <> "") And (sFILE_PFX_CERTIFICATE <> "")
					
					If (Not bCODESIGN_ATS) And (Not bCODESIGN_PFX) Then
					If (Not bSILENT) Then
					Print "Codesign:" + EndOfLine + _
					"acs.json and azure.json not found in [UserHome]-[.ats-codesign]-[acs|azure.json]" + EndOfLine + _
					"pfx.json and certificate.pfx not found in [UserHome]-[.pfx-codesign]-[pfx.json|certificate.pfx]"
					End If
					Return
					End If
					
					'Check Docker
					Var iCHECK_DOCKER_RESULT As Integer
					Var sCHECK_DOCKER_EXE As String = DoShellCommand(sDOCKER_EXE + " --version", 0, iCHECK_DOCKER_RESULT).Trim
					If (iCHECK_DOCKER_RESULT <> 0) Or (Not sCHECK_DOCKER_EXE.Contains("Docker")) Or (Not sCHECK_DOCKER_EXE.Contains("version")) Or (Not sCHECK_DOCKER_EXE.Contains("build "))Then
					Print "Codesign: Docker not available"
					Return
					End If
					
					Var sCHECK_DOCKER_PROCESS As String = DoShellCommand(sDOCKER_EXE + " ps", 0, iCHECK_DOCKER_RESULT).Trim
					If (iCHECK_DOCKER_RESULT <> 0) Then
					Print "Codesign: Docker not running"
					Return
					End If
					
					'Get Credential from Secure Storage
					Var bENV_ATS_CREDENTIAL As Boolean
					Var bENV_PFX_CREDENTIAL As Boolean
					
					If bCODESIGN_ATS Or bCODESIGN_PFX Then
					Var SFILE_CREDENTIAL As String
					Var sCREDENTIAL_COMMAND As String
					
					If TargetWindows Then 'Xojo IDE is running on Windows
					If bCODESIGN_ATS Then
					SFILE_CREDENTIAL = DoShellCommand("if exist %USERPROFILE%\.ats-codesign\ats-codesign-credential.ps1 echo %USERPROFILE%\.ats-codesign\ats-codesign-credential.ps1").Trim
					ElseIf bCODESIGN_PFX Then
					SFILE_CREDENTIAL = DoShellCommand("if exist %USERPROFILE%\.pfx-codesign\pfx-codesign-credential.ps1 echo %USERPROFILE%\.pfx-codesign\pfx-codesign-credential.ps1").Trim
					End If
					If (SFILE_CREDENTIAL <> "") Then
					sCREDENTIAL_COMMAND = "powershell """ + SFILE_CREDENTIAL + """"
					End If
					ElseIf TargetMacOS Or TargetLinux Then 'Xojo IDE running on macOS or Linux
					If bCODESIGN_ATS Then
					SFILE_CREDENTIAL = DoShellCommand("[ -f ~/.ats-codesign/ats-codesign-credential.sh ] && echo ~/.ats-codesign/ats-codesign-credential.sh").Trim
					ElseIf bCODESIGN_PFX Then
					SFILE_CREDENTIAL = DoShellCommand("[ -f ~/.pfx-codesign/pfx-codesign-credential.sh ] && echo ~/.pfx-codesign/pfx-codesign-credential.sh").Trim
					End If
					If (SFILE_CREDENTIAL <> "") Then
					Call DoShellCommand("chmod 755 """ + SFILE_CREDENTIAL + """") 'just to make sure it's executable
					sCREDENTIAL_COMMAND = SFILE_CREDENTIAL
					End If
					End If
					
					If (sCREDENTIAL_COMMAND <> "") Then
					'Once the Credential Helper Script is in place, we expect to get a value from it
					Var iCREDENTIAL_RESULT As Integer
					Var sCREDENTIAL As String = DoShellCommand(sCREDENTIAL_COMMAND, 0, iCREDENTIAL_RESULT).Trim
					If (iCREDENTIAL_RESULT <> 0) Or (sCREDENTIAL = "") Then
					Print  "Codesign: Could not retrieve " + If(bCODESIGN_ATS, "ATS", "PFX") + " Credential"
					Return
					End If
					
					'Use Environment Variable
					If bCODESIGN_ATS Then
					EnvironmentVariable("AZURE_CLIENT_SECRET") = sCREDENTIAL
					bENV_ATS_CREDENTIAL = True
					ElseIf bCODESIGN_PFX Then
					EnvironmentVariable("PFX_PASSWORD") = sCREDENTIAL
					bENV_PFX_CREDENTIAL = True
					End If
					End If
					End If
					
					'CodeSign in Docker Container
					Var sSIGN_COMMAND As String
					Var sSIGN_ENTRYPOINT As String
					If bCODESIGN_ATS Then
					'CodeSign using Azure Trusted Signing
					sSIGN_ENTRYPOINT = "ats-codesign.sh"
					sSIGN_COMMAND = _
					sDOCKER_EXE + " run " + _
					"--rm " + _
					"-v """ + sFILE_ACS_JSON + """:/etc/ats-codesign/acs.json " + _
					"-v """ + sFILE_AZURE_JSON + """:/etc/ats-codesign/azure.json " + _
					If(bENV_ATS_CREDENTIAL, "-e AZURE_CLIENT_SECRET ", "") + _
					"-v """ + sBUILD_LOCATION + """:/data " + _
					"-w /data " + _
					"--entrypoint " + sSIGN_ENTRYPOINT + " " + _
					sDOCKER_IMAGE + " " + _
					String.FromArray(sSIGN_FILES, " ")
					ElseIf bCODESIGN_PFX Then
					'CodeSign using .pfx
					sSIGN_ENTRYPOINT = "pfx-codesign.sh"
					sSIGN_COMMAND = _
					sDOCKER_EXE + " run " + _
					"--rm " + _
					"-v """ + sFILE_PFX_JSON + """:/etc/pfx-codesign/pfx.json " + _
					"-v """ + sFILE_PFX_CERTIFICATE + """:/etc/pfx-codesign/certificate.pfx " + _
					If(bENV_PFX_CREDENTIAL, "-e PFX_PASSWORD ", "") + _
					"-v """ + sBUILD_LOCATION + """:/data " + _
					"-w /data " + _
					"--entrypoint " + sSIGN_ENTRYPOINT + " " + _
					sDOCKER_IMAGE + " " + _
					String.FromArray(sSIGN_FILES, " ")
					End If
					
					Var iSIGN_RESULT As Integer
					Var sSIGN_OUTPUT As String = DoShellCommand(sSIGN_COMMAND, 0, iSIGN_RESULT)
					
					If (iSIGN_RESULT <> 0) Then
					Clipboard = sSIGN_OUTPUT
					Print "Codesign: " + sSIGN_ENTRYPOINT + " Error" + EndOfLine + _
					"[ExitCode: " + iSIGN_RESULT.ToString + "]" + EndOfLine + EndOfLine + _
					"Note: Shell Output is available in Clipboard."
					
					If (iSIGN_RESULT <> 125) Then
					Var iCHECK_DOCKERIMAGE_RESULT As Integer
					Var sCHECK_DOCKERIMAGE_OUTPUT As String = DoShellCommand(sDOCKER_EXE + " image inspect " + sDOCKER_IMAGE, 0, iCHECK_DOCKERIMAGE_RESULT)
					If (iCHECK_DOCKERIMAGE_RESULT <> 0) Then
					Print "Codesign: Docker Image '" + sDOCKER_IMAGE + "' not available"
					End If
					End If
					End If
					
				End
				Begin IDEScriptBuildStep CreateZIP , AppliesTo = 2, Architecture = 0, Target = 0
					'**************************************************
					' Create .zip for Windows Builds
					'**************************************************
					
					If DebugBuild Then Return 'don't create .zip for DebugRuns
					
					' bSILENT=True : don't show any error messages
					Var bSILENT As Boolean = False
					
					'Check Build Target
					Select Case CurrentBuildTarget
					Case 3 'Windows (Intel, 32Bit)
					Case 19 'Windows (Intel, 64Bit)
					Case 25 'Windows(ARM, 64Bit)
					Else
					If (Not bSILENT) Then Print "CreateZIP: Unsupported Build Target"
					Return
					End Select
					
					'Xojo Project Settings
					Var sPROJECT_PATH As String
					Var sBUILD_LOCATION As String = CurrentBuildLocation
					Var sAPP_NAME As String = CurrentBuildAppName
					If (sAPP_NAME.Right(4) = ".exe") Then
					sAPP_NAME = sAPP_NAME.Left(sAPP_NAME.Length - 4)
					End If
					Var sCHAR_FOLDER_SEPARATOR As String
					If TargetWindows Then 'Xojo IDE is running on Windows
					sPROJECT_PATH = DoShellCommand("echo %PROJECT_PATH%", 0).Trim
					sCHAR_FOLDER_SEPARATOR = "\"
					ElseIf TargetMacOS Or TargetLinux Then 'Xojo IDE running on macOS or Linux
					sPROJECT_PATH = DoShellCommand("echo $PROJECT_PATH", 0).Trim
					If sPROJECT_PATH.Right(1) = "/" Then
					'no trailing /
					sPROJECT_PATH = sPROJECT_PATH.Left(sPROJECT_PATH.Length - 1)
					End If
					If sBUILD_LOCATION.Right(1) = "/" Then
					'no trailing /
					sBUILD_LOCATION = sBUILD_LOCATION.Left(sBUILD_LOCATION.Length - 1)
					End If
					sBUILD_LOCATION = sBUILD_LOCATION.ReplaceAll("\", "") 'don't escape Path
					sCHAR_FOLDER_SEPARATOR = "/"
					End If
					
					If (sPROJECT_PATH = "") Then
					If (Not bSILENT) Then Print "CreateZIP: Could not get the Environment Variable PROJECT_PATH from the Xojo IDE." + EndOfLine + EndOfLine + "Unfortunately, it's empty.... try again after re-launching the Xojo IDE and/or rebooting your machine."
					Return
					End If
					
					'Check Stage Code for ZIP Filename
					Var sSTAGECODE_SUFFIX As String
					Select Case PropertyValue("App.StageCode")
					Case "0" 'Development
					sSTAGECODE_SUFFIX = "-dev"
					Case "1" 'Alpha
					sSTAGECODE_SUFFIX = "-alpha"
					Case "2" 'Beta
					sSTAGECODE_SUFFIX = "-beta"
					Case "3" 'Final
					'not used in filename
					End Select
					
					'Build ZIP Filename
					Var sZIP_FILENAME As String
					Select Case CurrentBuildTarget
					Case 3 'Windows (Intel, 32Bit)
					sZIP_FILENAME = sAPP_NAME.ReplaceAll(" ", "_") + sSTAGECODE_SUFFIX + "_Windows_Intel_32Bit.zip"
					Case 19 'Windows (Intel, 64Bit)
					sZIP_FILENAME = sAPP_NAME.ReplaceAll(" ", "_") + sSTAGECODE_SUFFIX + "_Windows_Intel_64Bit.zip"
					Case 25 'Windows(ARM, 64Bit)
					sZIP_FILENAME = sAPP_NAME.ReplaceAll(" ", "_") + sSTAGECODE_SUFFIX + "_Windows_ARM_64Bit.zip"
					Else
					Return
					End Select
					
					'Create .zip
					Var sPATH_PARTS() As String = sBUILD_LOCATION.Split(sCHAR_FOLDER_SEPARATOR)
					Var sAPP_FOLDERNAME As String = sPATH_PARTS(sPATH_PARTS.LastIndex)
					sPATH_PARTS.RemoveAt(sPATH_PARTS.LastIndex)
					Var sFOLDER_BASE As String = String.FromArray(sPATH_PARTS, sCHAR_FOLDER_SEPARATOR)
					
					If TargetWindows Then 'Xojo IDE is running on Windows
					Var sPOWERSHELL_COMMAND As String = "cd """ + sFOLDER_BASE + """; Compress-Archive -Path .\* -DestinationPath ""..\" + sZIP_FILENAME + """ -Force"
					Var iPOWERSHELL_RESULT As Integer
					Var sPOWERSHELL_OUTPUT As String = DoShellCommand("powershell -command """ + sPOWERSHELL_COMMAND.ReplaceAll("""", "'") + """", 0, iPOWERSHELL_RESULT)
					If (iPOWERSHELL_RESULT <> 0) Then
					If (Not bSILENT) Then Print "CreateZIP Error" + EndOfLine + EndOfLine + _
					sPOWERSHELL_OUTPUT.Trim + EndOfLine + _
					"[ExitCode: " + iPOWERSHELL_RESULT.ToString + "]"
					End If
					ElseIf TargetMacOS Or TargetLinux Then 'Xojo IDE running on macOS or Linux
					Var iZIP_RESULT As Integer
					Var sZIP_OUTPUT As String = DoShellCommand("cd """ + sFOLDER_BASE + """ && zip -r ""../" + sZIP_FILENAME + """ ""./" + sAPP_FOLDERNAME + """", 0, iZIP_RESULT)
					If (iZIP_RESULT <> 0) Then
					If (Not bSILENT) Then Print "CreateZIP Error" + EndOfLine + EndOfLine + _
					sZIP_OUTPUT.Trim + EndOfLine + _
					"[ExitCode: " + iZIP_RESULT.ToString + "]"
					End If
					End If
					
				End
			End
			Begin BuildStepList Xojo Cloud
				Begin BuildProjectStep Build
				End
			End
#tag EndBuildAutomation
