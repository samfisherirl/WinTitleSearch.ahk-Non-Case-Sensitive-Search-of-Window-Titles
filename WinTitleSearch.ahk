
SetTitleMatchMode, 2
DetectHiddenWindows, on

;msgbox % WinTitleSearch("steam", "title")
;Returns the Title of the window with the title "Steam"

;msgbox % WinTitleSearch("steam", "PID")
;Returns the PID of the window with the title "Steam"

;msgbox % WinTitleSearch("steam", "1")
;Returns the Title of the window with the title "Steam"

;msgbox % WinTitleSearch("steam", "2")
;Returns the PID of the window with the title "Steam"

WinTitleSearch(input, config){
	list_of_windows := WinTit.list_windows()
	windows_lowercase := WinTit.convert_to_lowercase(list_of_windows)
  ; convert all active windows to lowercase
	StringLower, input_lowercase, input
  ; convert input to lowercase
	keyvalue := WinTit.search(input_lowercase, windows_lowercase)
  ; return keyvalue within array matching lowercase will match key of list of windows
	PID := WinExist(list_of_windows[keyvalue])
  if (config = "title") or (config = 1)
  {
    return list_of_windows[keyvalue]
  }
  if (config = "PID") or (config = 2)
  {
    return PID
  }
}


class WinTit
{
  
  
  
  
	list_windows(){
		window_list := []
		windows_lowercase := []
		WinGet windows, List
		Loop %windows%
		{
			id := windows%A_Index%
			WinGetTitle wt, ahk_id %id%
			window_list[A_Index] := wt
			;r .= wt . "`n"
		}
		return window_list
		;MsgBox %r%
	}
	
	convert_to_lowercase(windows_list){
		windows_lowercase := []
		for k, v in windows_list
			{
				StringLower, val, v
				windows_lowercase[k] := trim(val)
			}
		return windows_lowercase
	}
	
	
	search(input_lower, windows_lowercase){
		for k, v in windows_lowercase
		{
			if InStr(v, input_lower)
			{
				return k
			}
		}
		return 0
	}
	
	
}