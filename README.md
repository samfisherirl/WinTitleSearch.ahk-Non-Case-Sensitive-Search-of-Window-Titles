# WinTitleSearch.ahk
Search Window Titles without worrying about case sensitivity 

    ;simply:
    #Include WinTitleSearch.ahk

    msgbox % WinTitleSearch("steam", "title")
    Returns the PID of the window with the title "steam"

    ; WinTitleSearch.ahk - Super Simple Solution to Case Sensitive Window Title Search. Return PID from any input search matching a window title. 




    ;msgbox % WinTitleSearch("steam", "title")
    ;Returns the Title of the window with the title "Steam"

    ;msgbox % WinTitleSearch("steam", "PID")
    ;Returns the PID of the window with the title "Steam"

    ;msgbox % WinTitleSearch("steam", "1")
    ;Returns the Title of the window with the title "Steam"

    ;msgbox % WinTitleSearch("steam", "2")
    ;Returns the PID of the window with the title "Steam"
