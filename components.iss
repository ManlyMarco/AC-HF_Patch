[Components]
Name: "BepInEx";                               Description: "BepInEx-Unity.IL2CPP win-x64 v6.0.0-be.738 (Plugin framework)"                        ; Types: full_en full extra_en extra custom bare; Flags: fixed
Name: "BepInEx\MessageCenter";                 Description: "Message Center v0.7 (Allows plugins to show messages in top left corner of the game)" ; Types: full_en full extra extra_en
Name: "BepInEx\ConfigurationManager_Il2Cpp";   Description: "Configuration Manager v18.4.1 (Can change plugin settings. Press F1 to open)"         ; Types: full_en full extra extra_en
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
; Name: "KKManager";                             Description: "KKManager v1.5.0.0 (Manage and update mods, browse cards)"                            ; Types: full_en full extra extra_en custom
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "API";                                   Description: "APIs (Plugins required by other plugins and mods to function)"                        ; Types: full_en full extra extra_en custom bare; Flags: fixed
Name: "API\BepisPlugins";                      Description: "AC_BepisPlugins v21.1.1 (Essential plugins required by many other plugins to function)"; Types: full_en full extra extra_en
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "AT";                                    Description: "XUnity Auto Translator v5.4.6 (Translation loader and automatic translator)"          ; Types: full extra full_en extra_en custom
Name: "AT\TL";                                 Description: "{cm:CompTL}"                                                                          ; Types: full_en extra_en
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "UNC";                                   Description: "{cm:CompUNC}"                                                                         ; Types: full_en full extra extra_en
Name: "UNC\UncensorHardmod";                   Description: "Scuffed Uncensor Hardmod (Basic male and female uncensor with some issues)"           ; Types: full_en full extra extra_en
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "Content";                               Description: "Additional content (Needed to properly some downloaded cards)"                        ; Types: full_en full extra extra_en
; ifndef LITE
; ame: "Content\Hardmods";                      Description: "Hardmod pack 2025/05/06 (Numerous clothing and accessory mods. Can't be uninstalled, CAN CAUSE ISSUES!)"
; ame: "Content\Hardmods\HardmodCards";         Description: "Character and outfit cards (A lot of extra cards that came included with the hardmods. Will fill up your character list!)"
; endif
Name: "Content\Fishbone";                      Description: "Fishbone+CoastalSmell v3.1.2 (API for character and coordinate extension data and syntax suggers)"; Types: extra extra_en
Name: "Content\Fishbone\SardineHead";          Description: "SardineHead v2.0.1 (Runtime texture and material modifier tool)"                      ; Types: extra extra_en
Name: "Content\Fishbone\SardineTail";          Description: "SardineTail v2.1.4 (Adds support for soft mods)"                                      ; Types: extra extra_en
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "FIX";                                   Description: "{cm:CompFIX}"                                                                         ; Types: full_en full extra extra_en
Name: "FIX\IllusionFixes";                     Description: "IllusionFixes_IL2CPP v22.0.4 (A collection of essential fixes and improvements)"      ; Types: full_en full extra extra_en
Name: "FIX\WebRequestBlocker";                 Description: "Web Request Blocker v1.1.2 (Fixes the game requiring internet connection to start)"   ; Types: full_en full extra extra_en
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "Feature";                               Description: "Improvements and additional features"                                                 
Name: "Feature\PovX";                          Description: "PovX v0.0.6 (First-person mode for H scenes. Press N to toggle POV, and M to switch character)"; Types: full_en full extra extra_en
Name: "Feature\GraphicsSettings";              Description: "Graphics Settings v0.8 (Can override game resolution, vsync and frame limit)"         ; Types: full_en full extra extra_en
Name: "Feature\MuteInBackground";              Description: "Mute In Background v0.7 (Mute the game when it's not in focus, configure in plugin settings)"; Types: full_en full extra extra_en
Name: "Feature\JumpLister";                    Description: "JumpLister v1.1 (Adds useful options to the game's Jump List in taskbar right-click menu)"; Types: full_en full extra extra_en
Name: "Feature\EnableFullScreenToggle";        Description: "Enable Full Screen Toggle v0.7 (Press Alt+Enter to toggle full screen mode)"          ; Types: full_en full extra extra_en
Name: "Feature\EnableResize";                  Description: "Enable Resize v0.7 (Enable resizing of game window)"                                  
Name: "Feature\LoveMachine";                   Description: "LoveMachine v4.0.101 (Adds support for some computer-controlled sex toys)"            
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "MISC";                                  Description: "{cm:CompMISC}"                                                                        
Name: "MISC\FPS";                              Description: "FPS Counter v3.3.1 (Useful for performance testing)"                                  ; Types: full_en full extra extra_en
Name: "MISC\RuntimeUnityEditor";               Description: "Runtime Unity Editor v6.1.1 (Debugging tool for applications made with Unity3D game engine (IL2CPP runtime))"; Types: full_en full extra extra_en
Name: "MISC\Memes";                            Description: "Custom intro voices v32.0 (Parasocial for AI vtubers)"                                ; Types: extra extra_en
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
Source: "Input\_Plugins\_out\AC_PovX\*";                    DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\PovX; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\EnableFullScreenToggleIL2CPP\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\EnableFullScreenToggle; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\EnableResizeIL2CPP\*";         DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\EnableResize; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\GraphicsSettingsIL2CPP\*";     DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\GraphicsSettings; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\HCSVS_JumpLister\*";           DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\JumpLister; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\LoveMachine_for_Aicomi\*";     DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\LoveMachine; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\MuteInBackgroundIL2CPP\*";     DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\MuteInBackground; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\FPSCounter_Bep6\*";            DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: MISC\FPS; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\FullSave\*";                   DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: MISC\FullSave; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\Memes\*";                      DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: MISC\Memes; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\RuntimeUnityEditor\*";         DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: MISC\RuntimeUnityEditor; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\IllusionFixes\*";              DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: FIX\IllusionFixes; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\WebRequestBlocker\*";          DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: FIX\WebRequestBlocker; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\Scuffed_Uncensor_Hardmod\*";   DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: UNC\UncensorHardmod; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\XUnity.AutoTranslator\*";      DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: AT; Excludes: "manifest.xml"