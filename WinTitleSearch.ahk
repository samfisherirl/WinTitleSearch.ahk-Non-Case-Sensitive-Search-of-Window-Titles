
SetTitleMatchMode, 2
DetectHiddenWindows, on

;msgbox % WinTitleSearch("steam")
;Returns the PID of the window with the title "steam"

WinTitleSearch(input){
	list_of_windows := WinTit.list_windows()
	windows_lowercase := WinTit.convert_lower(list_of_windows)
	StringLower, inputs_lowercase, input
	keyvalue := WinTit.search(inputs_lowercase, windows_lowercase)
	PID := WinExist(list_of_windows[keyvalue])
	return PID
}


class WinTit
{
	
	search(input_lower, windows_lowercase){
		for k, v in windows_lowercase
		{
			if (v = input_lower)
			{
				return k
			}
		}
		return 0
	}
	
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
	
	convert_lower(windows_list){
		windows_lowercase := []
		for k, v in windows_list
			{
				StringLower, val, v
				windows_lowercase[k] := trim(val)
			}
		return windows_lowercase
	}
	
	
	
}