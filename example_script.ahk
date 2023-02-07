#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;simply:

#Include WinTitleSearch.ahk

msgbox % WinTitleSearch("steam", 1)
;Returns the PID of the window with the title "steam"

PID := WinTitleSearch("steam", 2)

msgbox % WinExist(PID)
; WinTitleSearch.ahk - Super Simple Solution to Case Sensitive Window Title Search. Return PID from any input search matching a window title. 


;msgbox % WinTitleSearch("steam", "title")
;Returns the Title of the window with the title "steam"

;msgbox % WinTitleSearch("steam", "PID")
;Returns the PID of the window with the title "steam"

;msgbox % WinTitleSearch("steam", "1")
;Returns the Title of the window with the title "steam"

;msgbox % WinTitleSearch("steam", "2")
;Returns the PID of the window with the title "steam"