; open terminal if it's not open and focus the most recently focused window of it
#t::
{
  processName := "WindowsTerminal.exe"
  processToRun := "wt"
  
  if not WinExist("ahk_exe" processName)
    {
      Run processToRun
    }
  if WinWait("ahk_exe" processName)
    {
      WinActivate("ahk_exe" processName)
    }
}
  
; open chrome if it's not open and focus the most recently focused window of ity
#g::
{
  processName := "chrome.exe"
  processToRun := "chrome.exe"

  if not WinExist("ahk_exe" processName)
    {
      Run processToRun
    }
  if WinWait("ahk_exe" processName)
    {
      WinActivate("ahk_exe" processName)
    }
}

; open steam if it's not open and focus the most recently focused window of ity
#s::
{
  processName := "steamwebhelper.exe"
  processToRun := "C:\Program Files (x86)\Steam\steam.exe"

  if not WinExist("ahk_exe" processName)
    {
      Run processToRun
    }
  if WinWait("ahk_exe" processName)
    {
      WinActivate("ahk_exe" processName)
    }
}

; open incognito chrome
+#g::
{
  Run("chrome.exe --incognito")
}

; used to get active window process name
#h::
  {
    title := WinGetProcessName("A")
    MsgBox Format("The active window is {1}", title)
    return
}