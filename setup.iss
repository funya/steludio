; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
AppName=Steludio
AppVerName=Steludio 1
AppPublisher=Eludia
AppPublisherURL=http://www.eludia.ru
AppSupportURL=http://www.eludia.ru
AppUpdatesURL=http://www.eludia.ru
DefaultDirName={pf}\Eludia\Steludio
DefaultGroupName=Eludia
OutputBaseFilename=steludio_setup_1
SetupIconFile="ea.ico"
Compression=lzma
SolidCompression=yes
ChangesAssociations=yes

[Languages]
Name: "eng"; MessagesFile: "compiler:Default.isl"
Name: "rus"; MessagesFile: "compiler:Languages\Russian.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Registry]
Root: HKCR; Subkey: ".pm"; ValueType: string; ValueName: ""; ValueData: "Steludio"; Flags: uninsdeletevalue
Root: HKCR; Subkey: "Steludio"; ValueType: string; ValueName: ""; ValueData: "Steludio"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Steludio\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\Steludio.exe,0"
Root: HKCR; Subkey: "Steludio\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\Steludio.exe"" ""%1"""

[Files]
Source: "Steludio.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "templates/*"; DestDir: "{app}/templates"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[INI]
Filename: "{app}\Steludio.url"; Section: "InternetShortcut"; Key: "URL"; String: "http://www.eludia.ru"

[Icons]
Name: "{group}\Steludio"; Filename: "{app}\Steludio.exe"
Name: "{group}\{cm:ProgramOnTheWeb,Steludio}"; Filename: "{app}\Steludio.url"
Name: "{group}\{cm:UninstallProgram,Steludio}"; Filename: "{uninstallexe}"
Name: "{userdesktop}\Steludio"; Filename: "{app}\Steludio.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\Steludio"; Filename: "{app}\Steludio.exe"; Tasks: quicklaunchicon

; [Run]
; Filename: "{app}\Steludio.exe"; Description: "{cm:LaunchProgram,Steludio}"; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: files; Name: "{app}\Steludio.url"

