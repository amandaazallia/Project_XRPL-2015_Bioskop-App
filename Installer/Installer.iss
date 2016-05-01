[Setup] 
AppName=Bioskop 
AppVerName=1.0
AppVersion=1.0
AppPublisher=InMan
AllowCancelDuringInstall = yes 
DefaultDirName={pf}\Prosoft2015\Bioskop
DefaultGroupName=Prosoft2015\Bioskop
Compression = lzma 
SolidCompression = yes 
OutputBaseFilename=Bioskop
AllowNoIcons = yes 
AlwaysRestart = no 
AlwaysShowComponentsList = no 
DisableProgramGroupPage = yes 
AppendDefaultDirName = yes 
CreateUninstallRegKey = yes 
DisableStartupPrompt = yes 
LanguageDetectionMethod=none 
ShowLanguageDialog=no 
Uninstallable = yes 
UninstallFilesDir={app}\uninst 
UninstallDisplayIcon={app}\Bioskop.exe,0 
UninstallDisplayName=Bioskop 1.0
WindowVisible = no 
AppCopyright=Copyright © 2015. Prosoft 2015 
FlatComponentsList = yes 
PrivilegesRequired = admin 
VersionInfoVersion=1.0 
;SetupIconFile=belajaronline.ico 
[Languages] 
;languages, bahasa... :D 
Name: en; MessagesFile: compiler:Default.isl 
 
[Tasks] 
;task digunakan untuk membuat tugas-tugas pada proses pemasangan aplikasi  
 
 
[Files] 
;daftar file MySQL, aktifkan apabila ini dibutuhkan 
;Source: mysql.exe;DestDir:{app}\MySQL\;Flags: ignoreversion   
;Source: sa.sql;DestDir:{app}\MySQL\;Flags: ignoreversion
;daftar file MySQL ODBC 5.1, bisa menggunakan versi lainnya apabila memungkinkan 
Source: "Connector ODBC 5.3\myodbc5a.dll"; DestDir: {sys}; Flags: onlyifdoesntexist 
Source: "Connector ODBC 5.3\myodbc5S.dll"; DestDir: {sys}; Flags: onlyifdoesntexist 
Source: "Connector ODBC 5.3\myodbc5a.lib"; DestDir: {sys}; Flags: onlyifdoesntexist 
Source: "Connector ODBC 5.3\myodbc5S.lib"; DestDir: {sys}; Flags: onlyifdoesntexist 
Source: "Connector ODBC 5.3\myodbc-installer.exe"; DestDir: {sys}; Flags: onlyifdoesntexist 
 
;My Application, aplikasi exe utama 
Source: Project3.exe; DestDir: {app}; Flags: ignoreversion
Source : Bioskop.exe; DestDir: {app}; Flags: ignoreversion
Source : ver.txt; DestDir: {app}; Flags: ignoreversion
 
;font apabila ada tambahan 
;Source: "FontAwesome.otf"; DestDir: "{fonts}"; FontInstall: "FontAwesome"; Flags: onlyifdoesntexist uninsneveruninstall 
 
[Icons] 
;icon, untuk memasang icon-icon pada desktop, startmenu dan lain lain 
Name: {group}\Prosoft\Bioskop; Filename: {app}\Bioskop.exe; WorkingDir: {app} 
Name: {userdesktop}\Bioskop; Filename: {app}\Bioskop.exe; WorkingDir: {app}
 
 
[Run] 
;apabila menggunakan database offline, gunakan koding berikut untuk proses create database dan undump database 
;Filename: "{app}\MySQL\mysql.exe"; Parameters: "-u root -e ""CREATE DATABASE sa"""; Flags: runhidden; MinVersion: 0,5.01.2600sp2 
;Filename: "{app}\MySQL\mysql.exe"; Parameters: "-u root ""sa < sa.sql"""; Flags: runhidden; MinVersion: 0,5.01.2600sp2 
 
;install driver myodbc 
;aktifkan apabila menggunakan database online atau offline, karena untuk membuat koneksi odbc nya  
Filename: "{sys}\myodbc-installer.exe"; Parameters: "-d -a -n ""MySQL ODBC 5.3 ANSI Driver"" -t ""DRIVER=myodbc5a.dll;SETUP=myodbc5S.dll"""; StatusMsg: "Tunggu sedang mendaftarkan driver MySQL Connector ODBC 5.1.5"; Flags: runhidden 
Filename: "{sys}\myodbc-installer.exe"; Parameters: "-s -a -c2 -n ""pro"" -t ""DRIVER=MySQL ODBC 5.3 ANSI Driver;SERVER=ariefsetya.com;DATABASE=ariefset_in_man;UID=ariefset_in_man;PWD=bioskopxx1;""";StatusMsg: "Sedang membuat data source"; Flags: runhidden 
 
[UninstallRun] 
;koding berikut akan dieksekusi pada saat proses uninstall 
;sebaiknya berhati-hati untuk service yang akan dihapus 
Filename: "{sys}\myodbc-installer.exe"; Parameters: "-d -r -n ""MySQLODBC 5.2 ANSI Driver"""; StatusMsg: "Tunggu sedang menghapus driver MySQL Connector ODBC 5.1.5"; Flags: runhidden 
 
[UninstallDelete]  
;koding berikut akan dieksekusi pada saat proses uninstall 
;sebaiknya berhati-hati untuk file yang akan dihapus 
Type: files; Name:{app} 
 
[Registry] 
;mencatat lokasi instalasi program, ini dibutuhkan jika kita ingin membuat paket instalasi update 
Root: HKCU; Subkey: "Software\InMan"; ValueName: "installDir"; ValueType: String; ValueData: {app}; Flags: uninsdeletevalue 