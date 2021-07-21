; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "WinBox for 86Box"
#define MyAppVersion "1.0.0.562"
#define MyAppPublisher "Laci b�'"
#define MyAppURL "https://users.atw.hu/laciba/"    

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{D3D646C1-1D59-4F32-B244-C41F695BC8E9}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\Laci b�'\{#MyAppName}     
LicenseFile="LICENSE.txt"
AllowNoIcons=yes
DisableProgramGroupPage=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
OutputDir=..\Win32\Installer
OutputBaseFilename=WinBox-for-86Box-{#MyAppVersion}
Compression=lzma2/ultra64
SetupIconFile=setup.ico
WizardImageFile=banner.bmp        
WizardSmallImageFile=logo.bmp
WizardImageStretch=true
SolidCompression=yes
WizardStyle=modern
VersionInfoVersion={#MyAppVersion}
; ArchitecturesAllowed=x64
; ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "hungarian"; MessagesFile: "compiler:Languages\Hungarian.isl"    
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"        

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[InstallDelete]                        
Type: filesandordirs; Name: "{app}\Samples"
Type: filesandordirs; Name: "{app}\Templates"     

[Files]
Source: "..\Win32\Debug\WinBox.exe"; DestDir: "{app}"; Flags: ignoreversion;          
Source: "..\Win32\Debug\Templates\*"; DestDir: "{app}\Templates"; Flags: ignoreversion recursesubdirs createallsubdirs;         
Source: "..\Languages\*"; DestDir: "{app}\Languages"; Flags: ignoreversion recursesubdirs createallsubdirs;                         
Source: "LICENSE.TXT"; DestDir: "{app}"; Flags: ignoreversion; 
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\WinBox.exe"; Check: Is64BitInstallMode   
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\WinBox.exe"; Tasks: desktopicon; Check: Is64BitInstallMode   

[Run]
Filename: "{app}\WinBox.exe"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent; Check: Is64BitInstallMode 
