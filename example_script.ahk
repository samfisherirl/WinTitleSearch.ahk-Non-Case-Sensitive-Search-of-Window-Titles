#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
#Include WinTitleSearch.ahk

msgbox % WinTitleSearch("steam")

; WinTitleSearch.ahk - Super Simple Solution to Case Sensitive Window Title Search. Return PID from any input search matching a window title. 