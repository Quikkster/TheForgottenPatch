@echo off

cd ..\..\

set PATH=%localappdata%\xlabs\data\iw4x;%PATH%
set ServerFilename=TheForgottenPatch.cfg

:: choose a map or use default
type "E:\SteamLibrary\steamapps\common\Call of Duty Modern Warfare 2\mods\TheForgottenPatch\config.txt"

color 5

set "map=mp_highrise"
set /p "map=Enter map name or press [ENTER] for default [%map%]: "

color 7
echo The map will be set to %map%

pause

start iw4x.exe -nointro +set fs_game "mods\TheForgottenPatch" +exec %ServerFilename% +set g_gametype war +set ui_gametype war +devmap %map%
