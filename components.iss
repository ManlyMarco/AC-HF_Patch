[Components]
Name: "BepInEx";                               Description: "BepInEx-Unity.IL2CPP win-x64 v6.0.0-be.738 (Plugin framework)"                        ; Types: full_en full extra_en extra custom bare; Flags: fixed
Name: "BepInEx\MessageCenter";                 Description: "Message Center v0.7 (Allows plugins to show messages in top left corner of the game)" ; Types: full_en full extra extra_en
Name: "BepInEx\ConfigurationManager_Il2Cpp";   Description: "Configuration Manager v18.4.1 (Can change plugin settings. Press F1 to open)"         ; Types: full_en full extra extra_en
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "KKManager";                             Description: "KKManager v1.7.0.0 (Manage plugins and browse character cards)"                       
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "API";                                   Description: "APIs (Plugins required by other plugins and mods to function)"                        ; Types: full_en full extra extra_en custom bare; Flags: fixed
Name: "API\BepisPlugins";                      Description: "AC_BepisPlugins v21.1.2 (Essential plugins required by many other plugins to function)"; Types: full_en full extra extra_en
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "AT";                                    Description: "XUnity Auto Translator v5.5 (Translation loader and automatic translator)"            ; Types: full extra full_en extra_en custom
Name: "AT\TL";                                 Description: "{cm:CompTL}"                                                                          ; Types: full_en extra_en
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "UNC";                                   Description: "{cm:CompUNC}"                                                                         ; Types: full_en full extra extra_en
Name: "UNC\NoBalls";                           Description: "ACUncensorHardmod-NoFutaBalls_V3 (Basic male and female uncensor (futanaris have no balls))"; Types: full_en full extra extra_en; Flags: exclusive
Name: "UNC\YesBalls";                          Description: "ACUncensorHardmod_V3 (Basic male and female uncensor)"                                ; Flags: exclusive
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "Content";                               Description: "Additional content (Needed to properly some downloaded cards)"                        ; Types: full_en full extra extra_en
; ifndef LITE
; ame: "Content\Hardmods";                      Description: "Hardmod pack 2025/05/06 (Numerous clothing and accessory mods. Can't be uninstalled, CAN CAUSE ISSUES!)"
; ame: "Content\Hardmods\HardmodCards";         Description: "Character and outfit cards (A lot of extra cards that came included with the hardmods. Will fill up your character list!)"
; endif
Name: "Content\Fishbone";                      Description: "Fishbone+CoastalSmell v3.1.5 (API for character and coordinate extension data and syntax suggers)"; Types: extra extra_en
Name: "Content\Fishbone\PelvicFin";            Description: "PelvicFin v1.1.5 (Modify misc character status in character creation and H scene)"    ; Types: extra extra_en
Name: "Content\Fishbone\SardineHead";          Description: "SardineHead v2.1.1 (Runtime texture and material modifier tool)"                      ; Types: extra extra_en
Name: "Content\Fishbone\SardineTail";          Description: "SardineTail v2.1.11 (Adds support for soft mods)"                                     ; Types: extra extra_en
Name: "Content\Fishbone\SardineTail\Sardines_modpack"; Description: "A pack of sardines (Modpack with various new items for use in maker)"                 ; Types: extra extra_en
Name: "Content\Hardmods";                      Description: "Hardmod pack 2025/10/06 (Numerous clothing and accessory mods. Can't be uninstalled, CAN CAUSE ISSUES!)"; Types: extra extra_en
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "FIX";                                   Description: "{cm:CompFIX}"                                                                         ; Types: full_en full extra extra_en
Name: "FIX\IllusionFixes";                     Description: "IllusionFixes_IL2CPP v22.1 (A collection of essential fixes and improvements)"        ; Types: full_en full extra extra_en
Name: "FIX\WebRequestBlocker";                 Description: "Web Request Blocker v1.1.2 (Fixes the game requiring internet connection to start)"   ; Types: full_en full extra extra_en
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "Feature";                               Description: "Improvements and additional features"                                                 
Name: "Feature\PovX";                          Description: "PovX v0.0.8 (First-person mode for H scenes. Press N to toggle POV, and M to switch character)"; Types: full_en full extra extra_en
Name: "Feature\Hair";                          Description: "AC_Hair v0.0.1 (If 'eye over hair' is enabled, make hair transparent instead)"        ; Types: full_en full extra extra_en
Name: "Feature\MuteInBackground";              Description: "Mute In Background v0.7 (Mute the game when it's not in focus, configure in plugin settings)"; Types: full_en full extra extra_en
Name: "Feature\EnableFullScreenToggle";        Description: "Enable Full Screen Toggle v0.7 (Press Alt+Enter to toggle full screen mode)"          ; Types: full_en full extra extra_en
Name: "Feature\GraphicsSettings";              Description: "Graphics Settings v0.8 (Can override game resolution, vsync and frame limit)"         ; Types: full_en full extra extra_en
Name: "Feature\JumpLister";                    Description: "JumpLister v1.1 (Adds useful options to the game's Jump List in taskbar right-click menu)"; Types: full_en full extra extra_en
Name: "Feature\ClothingStateMenu";             Description: "Clothing State Menu v5.2.0.2 (Allow hiding of clothing pieces and chara body, press Tab+LeftShift anywhere)"
Name: "Feature\CharaFilter";                   Description: "AC_CharaFilter v0.0.6 (Additional filtering options for character/coordinate cards)"  ; Types: extra extra_en
Name: "Feature\CCPoseLoader";                  Description: "CCPoseLoader v2.1.1 (Additional pose loader for maker, adds more poses)"              ; Types: extra extra_en
Name: "Feature\EnableResize";                  Description: "Enable Resize v0.7 (Enable resizing of game window)"                                  
Name: "Feature\LoveMachine";                   Description: "LoveMachine v4.0.101 (Adds support for some computer-controlled sex toys)"            
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "MISC";                                  Description: "{cm:CompMISC}"                                                                        
Name: "MISC\FPS";                              Description: "FPS Counter v3.3.1 (Useful for performance testing)"                                  ; Types: full_en full extra extra_en
Name: "MISC\RuntimeUnityEditor";               Description: "Runtime Unity Editor v6.3 (Debugging tool for applications made with Unity3D game engine (IL2CPP runtime))"; Types: full_en full extra extra_en
Name: "MISC\RuntimeUnityEditor\CheatTools";    Description: "Cheat Tools v3.6 (In-game trainer/debugging plugin)"                                  ; Types: full_en full extra extra_en
Name: "MISC\Memes";                            Description: "Custom intro voices v33.0 (Being a gooner is my job)"                                 ; Types: extra extra_en
Name: "MISC\FullSave";                         Description: "Unlock FreeH (Save file with FreeH fully unlocked. Overwrites your global unlock progress, but not game saves)"

[Files]
Source: "Input\_Plugins\_out\BepInEx-Unity.IL2CPP-win-x64\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs solidbreak; Components: BepInEx; Excludes: "manifest.xml"
#ifndef LITE
; Source: "Input\_Plugins\_out\Hardmods\*";                   DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Content\Hardmods; Excludes: "manifest.xml"
; Source: "Input\_Plugins\_out\Hardmods_cards\*";             DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Content\Hardmods\HardmodCards; Excludes: "manifest.xml"
#endif 
Source: "Input\_Plugins\_out\BepInEx.ConfigurationManager\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: BepInEx\ConfigurationManager_Il2Cpp; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\MessageCenterIL2CPP\*";        DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: BepInEx\MessageCenter; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\AC_BepisPlugins\*";            DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: API\BepisPlugins; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\AC_Fishbone\*";                DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Content\Fishbone; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\AC_SardineHead\*";             DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Content\Fishbone\SardineHead; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\AC_SardineTail\*";             DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Content\Fishbone\SardineTail; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\AC_PelvicFin\*";               DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Content\Fishbone\PelvicFin; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\Hardmod_modpack\*";            DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Content\Hardmods; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\Sardines_modpack\*";           DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Content\Fishbone\SardineTail\Sardines_modpack; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\AC_PovX\*";                    DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\PovX; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\EnableFullScreenToggleIL2CPP\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\EnableFullScreenToggle; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\EnableResizeIL2CPP\*";         DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\EnableResize; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\GraphicsSettingsIL2CPP\*";     DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\GraphicsSettings; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\HCSVS_JumpLister\*";           DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\JumpLister; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\LoveMachine_for_Aicomi\*";     DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\LoveMachine; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\MuteInBackgroundIL2CPP\*";     DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\MuteInBackground; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\AC_CCPoseLoader\*";            DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\CCPoseLoader; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\AC_CharaFilter\*";             DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\CharaFilter; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\AC_ClothingStateMenu\*";       DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\ClothingStateMenu; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\AC_Hair\*";                    DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\Hair; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\FPSCounter_Bep6\*";            DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: MISC\FPS; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\FullSave\*";                   DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: MISC\FullSave; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\Memes\*";                      DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: MISC\Memes; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\RuntimeUnityEditor\*";         DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: MISC\RuntimeUnityEditor; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\AC_CheatTools\*";              DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: MISC\RuntimeUnityEditor\CheatTools; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\IllusionFixes\*";              DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: FIX\IllusionFixes; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\WebRequestBlocker\*";          DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: FIX\WebRequestBlocker; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\ACUncensorHardmod_V3\*";       DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: UNC\YesBalls; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\ACUncensorHardmod-NoFutaBalls_V3\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: UNC\NoBalls; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\XUnity.AutoTranslator\*";      DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: AT; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\KKManager\*";                  DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: KKManager; Excludes: "manifest.xml"