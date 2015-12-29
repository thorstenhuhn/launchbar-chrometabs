-- LaunchBar Action Script

on run
	set _result to {}
	tell application "System Events"
		
		if (length of (get name of every process whose name is "Google Chrome") is greater than 0) then
			tell application "Google Chrome"
				repeat with _window in (windows whose mode is not "incognito")
					log ("Tabs: " & (count of tabs of _window))
					--repeat with _tab in tabs of _window
					repeat with _index from 1 to count of tabs of _window
						set _tab to item _index of tabs of _window
						log ("Title: " & title of _tab)
						set _result to _result & {{|title|:title of _tab, subtitle:URL of _tab, icon:"com.google.Chrome", action:"selectTab", actionArgument:(id of _window as string) & "." & _index as string}}
					end repeat
				end repeat
			end tell
			
		else
			display dialog "Chrome not opened"
		end if
		
	end tell
	return _result
end run

on selectTab(id)
	set AppleScript's text item delimiters to "."
	set _window to item 1 of text items of id
	set _tab to item 2 of text items of id
	tell application "Google Chrome"
		activate
		set active tab index of window id _window to _tab
		set index of window id _window to 1
	end tell
end selectTab
