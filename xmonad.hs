import XMonad
import XMonad.Config.Desktop
import XMonad.Hooks.SetWMName
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Layout.NoBorders
import XMonad.Hooks.ManageHelpers
import XMonad.Hooks.EwmhDesktops -- for handleEventHook = fullscreenEventHook
import XMonad.Util.EZConfig(additionalKeys) -- keys
import XMonad.Util.Run(spawnPipe)
import System.IO(hPutStrLn)
import XMonad.Util.Cursor

-- main = xmonad =<< xmobar $ desktopConfig
                            -- {
main = do
    -- xmproc <- spawnPipe "xmobar"
    xmproc <- spawnPipe "~/.local/bin/xmobar ~/.xmobarrc"
    xmonad $ desktopConfig {
            terminal = "urxvt",
            workspaces = ["1:tmux", "2:web", "3:tg"] ++ map show [4, 5] ++ ["6:bg"] ++ map show [7..9],
            modMask = mod4Mask,
            startupHook = composeAll [
                setWMName "LG3D",
                setDefaultCursor xC_left_ptr
            ],
            borderWidth = 3,

            layoutHook = smartBorders . avoidStruts $ layoutHook desktopConfig, -- smartBorders to avoid borders while in fullscreen
            handleEventHook = composeAll[
                handleEventHook desktopConfig,
                docksEventHook,
                fullscreenEventHook -- fix fullscreen
            ],
            manageHook = composeAll [
                manageDocks,
                isFullscreen --> doFullFloat,
                manageHook desktopConfig
            ],

            logHook = dynamicLogWithPP xmobarPP {
                ppOutput = hPutStrLn xmproc,
                -- Colors can be #ff00ff
                ppTitle = xmobarColor "green" "" . shorten 30,
                ppCurrent = xmobarColor "yellow" "" . wrap "[" "]",
                ppSep = " | ",
                ppWsSep = " "
            }
        }
        `additionalKeys`
        [
           ((0, xK_Print),
                spawn "sleep 0.2; ~/.screenshot.zsh"),
           ((controlMask, xK_Print),
                spawn "sleep 0.2; ~/.screenshot-delay-3.zsh"),
           ((shiftMask, xK_Print),
                spawn "sleep 0.2; ~/.screenshot-capture.zsh"),

           ((mod1Mask, xK_m),
                spawn "~/.set-volume.zsh toggle"),
                -- spawn "pactl set-sink-mute 0 toggle"),
           ((mod1Mask, xK_minus),
                spawn "~/.set-volume.zsh down"),
                -- spawn "amixer -q sset Master 5%-"),
           ((mod1Mask, xK_equal),
                spawn "~/.set-volume.zsh up")
                -- spawn "amixer -q sset Master 5%+")
        ]

