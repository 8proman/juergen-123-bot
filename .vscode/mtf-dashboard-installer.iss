[Setup]
SetupIconFile={src}\.vscode\MTF.ico
AppName=MTF Dashboard
AppVersion=1.0
DefaultDirName={pf}\MTF Dashboard
DefaultGroupName=MTF Dashboard
OutputDir=.
OutputBaseFilename=MTF-Dashboard-Installer
Compression=lzma
SolidCompression=yes

[Files]
Source: "dashboard.py"; DestDir: "{app}"; Flags: ignoreversion
Source: "engine.py"; DestDir: "{app}"; Flags: ignoreversion
Source: "requirements.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "data.csv"; DestDir: "{app}"; Flags: ignoreversion
Source: "start_mtf_dashboard.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "LICENSE"; DestDir: "{app}"; Flags: ignoreversion
Source: "README.md"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\MTF Dashboard"; Filename: "{app}\start_mtf_dashboard.bat"; WorkingDir: "{app}"
Name: "{group}\Uninstall MTF Dashboard"; Filename: "{uninstallexe}"
Name: "{commondesktop}\MTF Dashboard"; Filename: "{app}\start_mtf_dashboard.bat"; Tasks: desktopicon

[Run]
Filename: "{app}\start_mtf_dashboard.bat"; WorkingDir: "{app}"; Flags: nowait postinstall skipifsilent

[Tasks]
Name: "desktopicon"; Description: "Desktop-Verknüpfung erstellen"; GroupDescription: "Zusätzliche Icons:"
