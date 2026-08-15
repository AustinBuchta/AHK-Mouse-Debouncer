ListLines False

; Press Ctrl + Escape at ANY time to kill the script instantly
*^Esc::ExitApp

global DebounceTime := 40

$LButton::
{
    ; Check both physical ('P') and logical states
    if (GetKeyState("LButton", "P") && GetKeyState("LButton"))
        return

    SendInput("{LButton Down}")
    
    Loop
    {
        KeyWait("LButton")
        Sleep(DebounceTime)
        
        if GetKeyState("LButton", "P")
            continue
        else
            break
    }
    
    SendInput("{LButton Up}")
}