; Copyright (C) 2020  ManlyMarco
; This program is free software: you can redistribute it and/or modify
; it under the terms of the GNU General Public License as published by
; the Free Software Foundation, either version 3 of the License, or
; (at your option) any later version.

;-------------Full game name for naming patch itself and desktop icons
#define NAME "Aicomi"
;---------------------------------------------Current HF Patch version
#define VERSION "1.1"
;--Don't include any files in the build to make it go fast for testing
;#define DEBUG
;---Skip file verification for easier testing, COMMENT OUT FOR RELEASE
;#define NOVERIFY
;------------Don't include general, studio and map sideloader modpacks
;#define LITE
;---------------------------------------------------------------------

#include "Assets\Header.iss"
[Setup]
#ifndef LITE
AppName=HF Patch for Aicomi
OutputBaseFilename=Aicomi HF Patch v{#VERSION}
#else
AppName=HF Patch for Aicomi (Light Version)
OutputBaseFilename=Aicomi HF Patch v{#VERSION} Light Version
#endif
ArchitecturesInstallIn64BitMode=x64
CloseApplications=yes
RestartApplications=no
CloseApplicationsFilter=*.exe,*.dll
Compression=lzma2/ultra64
;lzma2/ultra64 | zip | lzma2/fast
LZMAUseSeparateProcess=yes
;LZMADictionarySize=108576
LZMADictionarySize=262144
LZMANumFastBytes=273
LZMANumBlockThreads=8
DiskSpanning=no
DefaultDirName={code:GetDefaultDirName}

WindowResizable=yes
WizardStyle=modern
WizardSizePercent=120,150

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"
Name: "jp"; MessagesFile: "compiler:Languages\Japanese.isl"

#include "Translations.iss"

[Types]
Name: "full_en";  Description: "{cm:fullInstall}"; Languages: en;
Name: "full";     Description: "{cm:fullInstall}"; Languages: jp; 
Name: "extra_en"; Description: "{cm:extraInstall}"; Languages: en;
Name: "extra";    Description: "{cm:extraInstall}"; Languages: jp; 
Name: "bare";     Description: "{cm:bareInstall}"
Name: "none";     Description: "{cm:noneInstall}"
Name: "custom";   Description: "{cm:customInstall}"; Flags: iscustom

[Components]
Name: "Patch";                    Description: "Repair common issues"                   ; Types: full_en full extra_en extra custom bare none; Flags: fixed
;Name: "Patch\VR";                 Description: "Install/Update VR Module"                                                         ; Types: extra_en extra
;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

[Files]
Source: "HelperLib.dll";                  DestDir: "{app}";                       Flags: dontcopy
#ifndef DEBUG
Source: "Plugin Readme.md";               DestDir: "{app}"
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Source: "Input\_Patch\1_base\*";                   DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs solidbreak; Components: Patch
Source: "Input\_Patch\2_1003\*";                   DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs;            Components: Patch
Source: "Input\_Patch\9_unhollowed-1003\*";        DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs;            Components: Patch
#endif

; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
; This include should be here because the patch files above can be overwritten by this include, and the Files section below overwrites some config files that this include extracts
#include "components.iss"

[Files]
#ifndef DEBUG
Source: "Input\BepInEx_config\*";         DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs solidbreak; Components: BepInEx
;Source: "Input\BepInEx_Dev\*";     DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs;            Components: BepInEx\Dev
Source: "Input\Default_configs\*"; DestDir: "{app}\BepInEx\config"; Flags: ignoreversion recursesubdirs onlyifdoesntexist; Components: BepInEx
;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Source: "Input\_TL\*";             DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: AT\TL

Source: "Input\Config_eng\*";      DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Languages: en
Source: "Input\Config_jap\*";      DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Languages: jp
;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#endif

[InstallDelete]
; Someone tried using Reipatcher to install AT
Type: filesandordirs; Name: "{app}\Aicomi_Data\Managed"
Type: filesandordirs; Name: "{app}\ReiPatcher"
Type: files; Name: "{app}\Aicomi (Patch and Run).lnk"
Type: files; Name: "{app}\SetupReiPatcherAndAutoTranslator.exe"

; Remove incompatible / broken old mods
Type: filesandordirs; Name: "{app}\BepInEx\Translation"; Components: AT\TL
Type: files; Name: "{app}\BepInEx\plugins\ConfigurationManager.dll";                Components: BepInEx\ConfigurationManager_Il2Cpp
Type: files; Name: "{app}\BepInEx\plugins\BepInEx.KeyboardShortcut.dll";            Components: BepInEx\ConfigurationManager_Il2Cpp
Type: files; Name: "{app}\lib\sardinetail.unity3d"; Components: Content\Fishbone\SardineTail

; Clean up old patches and packs
Type: files; Name: "{app}\start.bat"
Type: files; Name: "{app}\desktop.ini"
Type: files; Name: "{app}\*.ico"
Type: files; Name: "{app}\[BR]*"
Type: files; Name: "{app}\abdata_original"
Type: files; Name: "{app}\BepInEx\config\SpockBauru*"

; Always not necessary
Type: files; Name: "{app}\0Harmony.dll"
Type: files; Name: "{app}\BepInEx.dll"
Type: files; Name: "{app}\Mono.Cecil.dll"

; Junk
Type: filesandordirs; Name: "{app}\BepInEx\bepinex4_backup"
Type: filesandordirs; Name: "{app}\BepInEx_Shim_Backup"
Type: filesandordirs; Name: "{app}\BepInEx\ErrorLog*"
Type: filesandordirs; Name: "{app}\BepInEx\LogOutput*"
Type: filesandordirs; Name: "{app}\temp"
Type: files; Name: "{app}\README.*"
Type: files; Name: "{app}\*.log"
Type: files; Name: "{app}\*.pdb"
Type: files; Name: "{app}\changelog.txt"
Type: files; Name: "{app}\HF_Patch_log.txt"
Type: files; Name: "{app}\output_log.txt"
;Type: files; Name: "{app}\Studio\changelog.txt"
;Type: files; Name: "{app}\Studio\output_log.txt"
; Yikes, someone extracted a sideloader mod...
Type: files; Name: "{app}\manifest.xml"

; Just in case. Also resets any hash caches
; Type: filesandordirs; Name: "{app}\[UTILITY] KKManager"; Components: KKManager
Type: filesandordirs; Name: "{app}\temp"

; Will get replaced, makes sure there are no stale files left
Type: filesandordirs; Name: "{app}\BepInEx\cache"; Components: BepInEx
Type: filesandordirs; Name: "{app}\BepInEx\core"; Components: BepInEx
Type: filesandordirs; Name: "{app}\BepInEx\interop-Aicomi"; Components: BepInEx
Type: filesandordirs; Name: "{app}\BepInEx\unhollowed"; Components: BepInEx
Type: filesandordirs; Name: "{app}\BepInEx\unity-libs"; Components: BepInEx
Type: filesandordirs; Name: "{app}\BepInEx\dummy"; Components: BepInEx
Type: filesandordirs; Name: "{app}\mono"; Components: BepInEx
Type: filesandordirs; Name: "{app}\dotnet"; Components: BepInEx
Type: files; Name: "{app}\hid.dll"; Components: BepInEx
Type: files; Name: "{app}\version.dll"; Components: BepInEx
Type: files; Name: "{app}\winhttp.dll"; Components: BepInEx
Type: files; Name: "{app}\doorstop_config.ini"; Components: BepInEx

[Registry]
Root: HKCU; Subkey: "Software\ILLGAMES"
Root: HKCU; Subkey: "Software\ILLGAMES\Aicomi"
Root: HKCU; Subkey: "Software\ILLGAMES\Aicomi"; ValueType: string; ValueName: "INSTALLDIR_HFP"; ValueData: "{app}\"
Root: HKCU; Subkey: "Software\ILLGAMES\Aicomi"; ValueType: string; ValueName: "INSTALLDIR"; ValueData: "{app}\"; Tasks: regfix
Root: HKCU; Subkey: "Software\ILLGAMES\Aicomi"; ValueType: string; ValueName: "PRODUCTNAME"; ValueData: "アイコミ"; Tasks: regfix

[Dirs]
Name: {app}\sardines; Components: Content\Fishbone\SardineTail

[Tasks]
Name: desktopicon; Description: "{cm:TaskIcon}"; Flags: unchecked
Name: regfix; Description: "Fix game registry"
Name: delete; Description: "{cm:TaskDelete}";
;Name: delete\Sidemods; Description: "{cm:TaskDeleteSide}"
Name: delete\Plugins; Description: "{cm:TaskDeletePlugins}";
Name: delete\Config; Description: "{cm:TaskDeletePluginSettings}"; Flags: unchecked
Name: delete\scripts; Description: "Delete old scripts (ScriptLoader, frida)"
;Name: delete\Listfiles; Description: "{cm:TaskDeleteLst}"; Flags: unchecked
;Name: fixSideloaderDupes; Description: "{cm:TaskSideDupes}";

[Icons]
Name: "{userdesktop}\{cm:IconGame}"; Filename: "{app}\Aicomi.exe"; IconFilename: "{app}\Aicomi.exe"; WorkingDir: "{app}\"; Flags: createonlyiffileexists; Tasks: desktopicon; Comment: "{cm:IconGame}"

[Run]
;Filename: "{tmp}\hfp\DirectXRedist2010\DXSETUP.exe"; Parameters: "/silent"; Description: "Installing DirectX redistributables"; Flags: skipifdoesntexist runascurrentuser

Filename: "{app}\Aicomi.exe"; Description: "{cm:RunGame}"; Flags: postinstall runasoriginaluser nowait skipifsilent skipifdoesntexist

Filename: "https://wiki.anime-sharing.com/hgames/index.php?title=Aicomi"; Description: "{cm:RunWiki}"; Flags: shellexec runasoriginaluser postinstall unchecked nowait skipifsilent

Filename: "https://discord.gg/hevygx6"; Description: "{cm:RunDiscord}"; Flags: shellexec runasoriginaluser postinstall unchecked nowait skipifsilent;

Filename: "https://github.com/ManlyMarco/AC-HF_Patch"; Description: "Latest HF Patch releases and source code"; Flags: shellexec runasoriginaluser postinstall unchecked nowait skipifsilent

Filename: "https://www.patreon.com/ManlyMarco"; Description: "ManlyMarco Patreon (Creator of this patch)"; Flags: shellexec runasoriginaluser postinstall unchecked nowait skipifsilent;

;Filename: "{app}\[UTILITY] KKManager\StandaloneUpdater.exe"; Parameters: """{app}"""; Description: "{cm:StartUpdate}"; Flags: postinstall runascurrentuser unchecked nowait skipifsilent skipifdoesntexist

[Code]
procedure FindInstallLocation(path: String; gameName: String; gameNameSteam: String; out strout: WideString);
external 'FindInstallLocation@files:HelperLib.dll stdcall';

procedure CreateBackup(path: String);
external 'CreateBackup@files:HelperLib.dll stdcall';

procedure FixConfig(path: String);
external 'FixConfig@files:HelperLib.dll stdcall';

procedure PostInstallCleanUp(path: String);
external 'PostInstallCleanUp@files:HelperLib.dll stdcall';

procedure WriteVersionFile(path, version: String);
external 'WriteVersionFile@files:HelperLib.dll stdcall';

procedure SetConfigDefaults(path: String);
external 'SetConfigDefaults@files:HelperLib.dll stdcall';

procedure FixPermissions(path: String);
external 'FixPermissions@files:HelperLib.dll stdcall';

procedure RemoveJapaneseCards(path: String);
external 'RemoveJapaneseCards@files:HelperLib.dll stdcall';

procedure RemoveNonstandardListfiles(path: String);
external 'RemoveNonstandardListfiles@files:HelperLib.dll stdcall';

procedure RemoveSideloaderDuplicates(path: String);
external 'RemoveSideloaderDuplicates@files:HelperLib.dll stdcall';

procedure RemoveModsExceptModpacks(path: String);
external 'RemoveModsExceptModpacks@files:HelperLib.dll stdcall';

function PersonalityDlcInstalled(): Boolean;
begin
  Result := FileExists(ExpandConstant('{app}\abdata\sv_add020_00'));
end;

function DolceInstalled(): Boolean;
begin
  Result := FileExists(ExpandConstant('{app}\DigitalCraft\DigitalCraft.exe'));
end;

function GetDefaultDirName(Param: string): string;
var
  str: WideString;
begin
  FindInstallLocation(ExpandConstant('{src}'), 'Aicomi', 'Aicomi', str);
  Result := str;
end;

// function IsSteam(): Boolean;
// begin
//   Result := FileExists(ExpandConstant('{app}\DefaultData\url\st_up_api_token.dat'));
// end;
// 
// function DirectXRedistNeedsInstall(): Boolean;
// begin
//   Result := not RegKeyExists(HKLM, 'SOFTWARE\WOW6432Node\Valve\Steam\Apps\CommonRedist\DirectX\Jun2010')
// end;

procedure CurPageChanged(CurPageID: Integer);
begin
  if CurPageID = wpSelectTasks then
  begin
    //// If garbage plugins are detected, delete all old mods by default
    //if(FileExists(ExpandConstant('{app}\Studio\BepInEx\config\BepInEx.cfg')) or DirExists(ExpandConstant('{app}\BepInEx\unhollowed'))) then
    //begin
    //  WizardForm.TasksList.CheckItem(2, coCheckWithChildren);
    //end;
    
  end;
end;

procedure CurStepChanged(CurStep: TSetupStep);
var
  ResultCode: Integer;
begin
  // After install completes
  if (CurStep = ssPostInstall) then
  begin
    DeleteFile(ExpandConstant('{app}\changelog.txt'));
    
    // Delete Japanese versions of cards and bgs if English versions are installed (only those with different names)
    //if IsComponentSelected('AT\TL\EnglishTranslation\UserData') then
    //    RemoveJapaneseCards(ExpandConstant('{app}'));

    // Always clean up sideloader mods in case user already messed up
    //if IsTaskSelected('fixSideloaderDupes') then
    //    RemoveSideloaderDuplicates(ExpandConstant('{app}'));
    
    //if DolceInstalled() then
    //    FileCopy(ExpandConstant('{app}\winhttp.dll'), ExpandConstant('{app}\DigitalCraft\winhttp.dll'), false);

    FixConfig(ExpandConstant('{app}'));
    WriteVersionFile(ExpandConstant('{app}'), '{#VERSION}');
    
    // Prevent trying to install the redist again
    //Exec('reg', 'add HKEY_LOCAL_MACHINE\SOFTWARE\Valve\Steam\Apps\CommonRedist\DirectX\Jun2010 /v dxsetup /t REG_DWORD /d 1 /f /reg:32', ExpandConstant('{app}'), SW_HIDE, ewWaitUntilTerminated, ResultCode);
    
    PostInstallCleanUp(ExpandConstant('{app}'));
  end;
end;

function IsCharValid(Value: Char): Boolean;
begin
  Result := Ord(Value) <= $007F;
end;

function IsDirNameValid(const Value: string): Boolean;
var
  I: Integer;
begin
  Result := False;
  for I := 1 to Length(Value) do
    if not IsCharValid(Value[I]) then
      Exit;
  Result := True;
end;

function NextButtonClick(CurPageID: Integer): Boolean;
var
  ResultCode: Integer;
begin
  // allow the setup turning to the next page
  Result := True;

  if (CurPageID = wpSelectDir) then
  begin
    if (not FileExists(ExpandConstant('{app}\Aicomi_Data\resources.assets'))) then
    begin
      if(SuppressibleMsgBox(ExpandConstant('{cm:MsgExeNotFound}'), mbError, MB_YESNO, 0) = IDNO) then
        Result := False;
    end;

    if Result = True then
    begin
      if (Length(ExpandConstant('{app}')) > 100) then
      begin
        MsgBox(ExpandConstant('{cm:MsgPathTooLong}'), mbError, MB_OK);
        Result := False;
      end
    end;

    if Result = True then
    begin
      if not IsDirNameValid(ExpandConstant('{app}')) then
      begin
        MsgBox(ExpandConstant('{cm:MsgPathNonLatin}'), mbError, MB_OK);
      end;
    end;

    if Result = True then
    begin
      if (Pos(LowerCase(ExpandConstant('{app}\')), LowerCase(ExpandConstant('{src}\'))) > 0) then
      begin
        MsgBox('This patch is inside of the game directory you are attempting to install to. You have to move the patch files outside of the game directory and try again.', mbError, MB_OK);
        Result := False;
      end
    end;

    if Result = True then
    begin
      if (FileExists(ExpandConstant('{app}\EmotionCreators.exe'))
      or FileExists(ExpandConstant('{app}\Koikatu.exe'))
      or FileExists(ExpandConstant('{app}\Koikatsu Party.exe'))
      or FileExists(ExpandConstant('{app}\PlayHome.exe'))
      or FileExists(ExpandConstant('{app}\AI-Syoujyo.exe'))
      or FileExists(ExpandConstant('{app}\AI-Shoujo.exe'))
      or FileExists(ExpandConstant('{app}\RoomGirl.exe'))
      or FileExists(ExpandConstant('{app}\HoneyCome.exe'))
      or FileExists(ExpandConstant('{app}\HoneyComeccp.exe'))
      or FileExists(ExpandConstant('{app}\SamabakeScramble.exe'))
      or FileExists(ExpandConstant('{app}\HoneySelect2.exe'))) then
      begin
        MsgBox(ExpandConstant('{cm:MsgDifferentGameDetected}'), mbError, MB_OK);
        Result := False;
      end
    end;

    if Result = True then
    begin
      if (FileExists(ExpandConstant('{app}\DigitalCraft.exe'))) then
      begin
        MsgBox('It looks like the Studio is installed to the same directory as the game, most likely breaking the game install. Studio executable should be in a "DigitalCraft" subfolder. You will have to reinstall the game and run this patch again.', mbError, MB_OK);
        Result := False;
      end
    end;

    if Result = True then
    begin
      // Check for file corruptions
      if (not FileExists(ExpandConstant('{app}\lib\chara\co_top_000_00.unity3d'))
      or not FileExists(ExpandConstant('{app}\lib\env\r\spe\000_00.unity3d'))
      or not FileExists(ExpandConstant('{app}\lib\sound\setting\2d\000_00.unity3d'))) then
      begin
        MsgBox(ExpandConstant('{cm:MsgMissingGameFiles}'), mbError, MB_OK);
        Result := False;
      end
      else
      begin
        // Check for missing paid DLC
        //if not PersonalityDlcInstalled() then
        //begin
        //  SuppressibleMsgBox(ExpandConstant('{cm:MsgMissingDLC1}'), mbInformation, MB_OK, 0);
        //end;
      end;
    end;

    if Result = True then
    begin
      // Check for extracted zipmods
      if FileExists(ExpandConstant('{app}\manifest.xml')) then
      begin
        SuppressibleMsgBox(ExpandConstant('{cm:MsgExtractedZipmod}'), mbError, MB_OK, 0);
      end;
    end;
  end;
end;

procedure VerifyFiles(srcexe: String; out errormsg: WideString);
external 'VerifyFiles@files:HelperLib.dll stdcall';

// Set up a custom prepare to install page with progress
var
  PrepareToInstallWithProgressPage : TOutputProgressWizardPage;
procedure InitializeWizard;
var
  A: AnsiString;
  S: String;
begin
  // The string msgWizardPreparing has the placeholder '[name]' inside that I have to replace with the name of my app, stored in a define constant of my script.
  S := SetupMessage(msgPreparingDesc); 
  StringChange(S, '[name]', '{#NAME} HF Patch');
  A := S;
  PrepareToInstallWithProgressPage := CreateOutputProgressPage(SetupMessage(msgWizardPreparing), A);
end;

function PrepareToInstall(var NeedsRestart: Boolean): String;
var
  ResultCode: Integer;
  VerifyResult: WideString;
begin
  NeedsRestart := false;

  PrepareToInstallWithProgressPage.Show;
  
  PrepareToInstallWithProgressPage.SetProgress(0, 10);
  PrepareToInstallWithProgressPage.SetText('Verifying HF Patch files, this can take a few minutes', '');
  
#ifndef NOVERIFY
  VerifyFiles(ExpandConstant('{srcexe}'), VerifyResult);
#endif

  // If verification failed, set return of this method to it and innosetup will automatically fail the install. Still need to skip rest of the code though.
  if not (VerifyResult = '') then
  begin
    Result := VerifyResult;
  end
  else
  begin
    try
      PrepareToInstallWithProgressPage.SetProgress(4, 10);
      PrepareToInstallWithProgressPage.SetText('Exiting running game processes', '');
      
      // Close the game if it's running
      Exec('taskkill', '/F /IM Aicomi.exe', ExpandConstant('{app}'), SW_HIDE, ewWaitUntilTerminated, ResultCode);
      Exec('taskkill', '/F /IM UnityCrashHandler64.exe', ExpandConstant('{app}'), SW_HIDE, ewWaitUntilTerminated, ResultCode);
      Exec('taskkill', '/F /IM InitSetting.exe', ExpandConstant('{app}'), SW_HIDE, ewWaitUntilTerminated, ResultCode);
      Exec('taskkill', '/F /IM KKManager.exe', ExpandConstant('{app}'), SW_HIDE, ewWaitUntilTerminated, ResultCode);
      Exec('taskkill', '/F /IM StandaloneUpdater.exe', ExpandConstant('{app}'), SW_HIDE, ewWaitUntilTerminated, ResultCode);

        // Often needed after fixing permissions to unlock the files so the permissions can be written, without this access to them is always denied
        //Exec('taskkill', '/F /IM explorer.exe', ExpandConstant('{app}'), SW_HIDE, ewWaitUntilTerminated, ResultCode);
    
      PrepareToInstallWithProgressPage.SetProgress(5, 10);
      PrepareToInstallWithProgressPage.SetText('Fixing file permissions of game directory', '');
      
      // Fix file permissions
      //Exec('takeown', ExpandConstant('/f "{app}" /r /SKIPSL /d y'), ExpandConstant('{app}'), SW_HIDE, ewWaitUntilTerminated, ResultCode);
      //Exec('icacls', ExpandConstant('"{app}" /grant everyone:F /t /c /l'), ExpandConstant('{app}'), SW_HIDE, ewWaitUntilTerminated, ResultCode);
      FixPermissions(ExpandConstant('{app}'));
      
      //try
      //  ExecAsOriginalUser('explorer.exe', '', '', 0, ewNoWait, ResultCode);
      //except
      //  ShowExceptionMessage();
      //end;
    except
      ShowExceptionMessage();
    end;

    PrepareToInstallWithProgressPage.SetProgress(6, 10);
    PrepareToInstallWithProgressPage.SetText('Creating a plugin backup', '');
      
    CreateBackup(ExpandConstant('{app}'));

    PrepareToInstallWithProgressPage.SetProgress(8, 10);
    PrepareToInstallWithProgressPage.SetText('Changing plugin configuration', '');
    
    // Remove BepInEx folder
    if (IsTaskSelected('delete\Config') and IsTaskSelected('delete\Plugins')) then begin
      DelTree(ExpandConstant('{app}\BepInEx'), True, True, True);
    end
    else
    begin
      // Or only remove plugins
      if (IsTaskSelected('delete\Plugins')) then begin
        DelTree(ExpandConstant('{app}\BepInEx\plugins'), True, True, True);
        DelTree(ExpandConstant('{app}\BepInEx\patchers'), True, True, True);
      end;
      
      if (IsTaskSelected('delete\Config')) then begin
        DelTree(ExpandConstant('{app}\BepInEx\config'), True, True, True);
      end;
    end;
    
    PrepareToInstallWithProgressPage.SetProgress(9, 10);
    PrepareToInstallWithProgressPage.SetText('Cleaning up old mods and scripts', '');
    
    if (IsTaskSelected('delete\Sidemods')) then
      RemoveModsExceptModpacks(ExpandConstant('{app}'));

    //if (IsTaskSelected('delete\Listfiles')) then
    //  RemoveNonstandardListfiles(ExpandConstant('{app}'));
    
    if (IsTaskSelected('delete\scripts')) then begin
      DelTree(ExpandConstant('{app}\scripts'), True, True, True);
      DelTree(ExpandConstant('{app}\frida-scripts'), True, True, True);
      DeleteFile(ExpandConstant('{app}\dxgi.dll'));
      DeleteFile(ExpandConstant('{app}\frida-gadget.config'));
      DeleteFile(ExpandConstant('{app}\frida-gadget.dll'));
    end;

    SetConfigDefaults(ExpandConstant('{app}'));
  end;
  
  PrepareToInstallWithProgressPage.SetProgress(10, 10);
  PrepareToInstallWithProgressPage.Hide;
end;
