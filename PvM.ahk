Menu, Tray, Icon, %A_ScriptDir%\icons\rs.jpg
#include, dependencies\variables.ahk
#include, dependencies\random.ahk
#include, dependencies\imagesearch.ahk
#MaxThreadsPerHotkey 2
#SingleInstance Force
#IfWinActive RuneScape

; sets the default profile to 0 so no scripts are active
profile := 0

; creates on screen message for profile change
display_current_profile()
{
    if (global profile = 0) 
        MsgBox, 0, , The current profile is %profile% default, 1.2

    if (global profile = 1)
        MsgBox, 0, , The current profile is %profile% Telos, 1.2

    if (global profile = 2)
        MsgBox, 0, , The current profile is %profile% Solak, 1.2

    if (global profile = 3)
        MsgBox, 0, , The current profile is %profile% AOD, 1.2

    if (global profile = 4)
        MsgBox, 0, , The current profile is %profile% AOD Base, 1.2
     
    if (global profile = 5)
        MsgBox, 0, , The current profile is %profile% Rago, 1.2
    
    if (global profile = 6)
        MsgBox, 0, , The current profile is %profile% AOD Chin, 1.2

    if (global profile = 7)
        MsgBox, 0, , The current profile is %profile% PvM, 1.2
    Return
}

; hot keys below change binds profile
; default
F13::
    global profile :=0
    display_current_profile()
Return

; Telos
F14::
    global profile := 1
    display_current_profile()
Return

; Solak
F15::
    global profile := 2
    display_current_profile()
Return

; AOD
F16::
    global profile := 3
    display_current_profile()
Return

; AOD base
F17::
    global profile := 4
    display_current_profile()
Return

; Rago
F18::
    global profile := 5
    display_current_profile()
Return

; AOD Chin
F19::
    global profile := 6
    display_current_profile()
Return

; PvM
F20::
    global profile := 7
    display_current_profile()
Return

global skip_check := 0

; Disrupt
F2::
    if (profile = 0) {
        F2::F2
    }
    else {
        Send {%swap% down}
        Sleep, % ran(1,2)
        Send {%swap% up}
        Sleep, % ran(1,2)
        Send {%disrupt% down}
        Sleep, % ran(1,2)
        Send {%disrupt% up}
    }
return

; Venge
F3::
if (profile = 0) {
    F3::F3
    }
    else {
        Send {%swap% down}
        Sleep, % ran(1,2)
        Send {%swap% up}
        Sleep, % ran(1,2)
        Send {%venge% down}
        Sleep, % ran(1,2)
        Send {%venge% up}
    }
return

; AOD and Solak Shit
F4::
    ; Hybrid switch for solak
    if (profile = 2) {
        Send {%hybrid_prayer% down}
        Sleep, % ran(1,2)
        Send {%hybrid_prayer% up}
        Sleep, % ran(1,2)
        Send {%helm% down}
        Sleep, % ran(1,2)
        Send {%helm% up}
        Sleep, % ran(1,2)
        Send {%body% down}
        Sleep, % ran(1,2)
        Send {%body% up}
        Sleep, % ran(1,2)
        Send {%legs% down}
        Sleep, % ran(1,2)
        Send {%legs% up}
        Sleep, % ran(1,2)
        Send {%boots% down}
        Sleep, % ran(1,2)
        Send {%boots% up}
        Sleep, % ran(1,2)
        Send {%melee_2h% down}
        Sleep, % ran(1,2)
        Send {%melee_2h% up}
    }
    ; Auto + Deto + Hammer
    if (profile = 5) {
        Send {%deto% down}
        Sleep, % ran(1,2)
        Send {%deto% up}
        Sleep, % ran(1,2)
        Send {%melee_mainhand% down}
        Sleep, % ran(1,2)
        Send {%melee_mainhand% up}
        Sleep, % ran(1,2)
        Send {%excalibur% down}
        Sleep, % ran(1,2)
        Send {%excalibur% up}
        Sleep, % ran(1,2)
        Send {%ingen% down}
        Sleep, % ran(1,2)
        Send {%ingen% up}
        Sleep, % ran(1,2)
        Send {%eof% down}
        Sleep, % ran(1,2)
        Send {%eof% up}
        Send {%bladed_dive% down}
        Sleep, % ran(1,2)
        Send {%bladed_dive% up}
        Sleep, % ran(1,2)
        Send {Click down}
        Sleep, % ran(1,2)
        Send {Click up}
    }
    ; Smoke Cloud + Deto + Omni
    if (profile = 4) {
        Send {%smoke_cloud% down}
        Sleep, % ran(1,2)
        Send {%smoke_cloud% up}
        Sleep, % ran(1,2)
        Send {%deto% down}
        Sleep, % ran(1,2)
        Send {%deto% up}
        Sleep, % ran(1,2)
        Send {%omni% down}
        Sleep, % ran(1,2)
        Send {%omni% up}
    }
    ; bladed dive-surge for AOD pillars
    if (profile = 3) {
        Send {%melee_mainhand% down}
        Sleep, % ran(1,2)
        Send {%melee_mainhand% up}
        Sleep, % ran(1,2)
        Send {%excalibur% down}
        Sleep, % ran(1,2)
        Send {%excalibur% up}
        Sleep, % ran(1,2)
        Send {%bladed_dive% down}
        Sleep, % ran(1,2)
        Send {%bladed_dive% up}
        Sleep, % ran(1,2)
        Send {Click down}
        Sleep, % ran(1,2)
        Send {Click up}
        Sleep, % ran(1,2)
        Send {%surge% down} 
        Sleep, % ran(1,2)
        Send {%surge% up}
    }
    ; ice auto + deto + gconc
    if (profile = 1){
        Send {%ice_blitz% down}
        Sleep, % ran(1,2)
        Send {%ice_blitz% up}
        Sleep, % ran(1,2)
        Send {%deto% down}
        Sleep, % ran(1,2)
        Send {%deto% up}
        Sleep, % ran(1,2)
        Send {%mainhand% down}
        Sleep, % ran(1,2)
        Send {%mainhand% up}
        Sleep, % ran(1,2)
        Send {%offhand% down}
        Sleep, % ran(1,2)
        Send {%offhand% up}
        Sleep, % ran(1,2)
        Send {%gconc% down}
        Sleep, % ran(1,2)
        Send {%gconc% up}
    }
    else {
        F4::F4
    }
return

; dual wields
    ]::
    if (profile = 0) {
     ]::]
    }
    else {
        if (Item_Check("magic_MH") = 0 or Item_Check("melee_MH") = 0 or Item_Check("range_MH") = 0) {
        Send {%offhand% down}
        Sleep, % ran(1,2)
        Send {%offhand% up}
        skip_check := 0
        }
        else{
        Send {%mainhand% down}
        Sleep, % ran(1,2)
        Send {%mainhand% up}
        Sleep, % ran(1,2)
        Send {%offhand% down}
        Sleep, % ran(1,2)
        Send {%offhand% up}
        }
    }
return

; flank
    home::
    if (profile = 0) {
     home::home
    }
    else {
        if (Item_Check("magic_MH") = 0 or Item_Check("melee_MH") = 0 or Item_Check("range_MH") = 0) {
        Send {%flank% down}
        Sleep, % ran(1,2)
        Send {%flank% up}
        skip_check := 0
        }
        else{
        Send {%mainhand% down}
        Sleep, % ran(1,2)
        Send {%mainhand% up}
        Sleep, % ran(1,2)
        Send {%flank% down}
        Sleep, % ran(1,2)
        Send {%flank% up}
        }
    }
return

; Shield
F1::
    if (profile = 0) {
     Send {F1 down}
     Sleep, % ran(1,2)
     Send {F1 up}
    }
    else {
        if (Item_Check("magic_MH") = 0 or Item_Check("melee_MH") = 0 or Item_Check("range_MH") = 0) {
        Send {%shield% down}
        Sleep, % ran(1,2)
        Send {%shield% up}
        skip_check := 0
        }
        else{
        Send {%mainhand% down}
        Sleep, % ran(1,2)
        Send {%mainhand% up}
        Sleep, % ran(1,2)
        Send {%shield% down}
        Sleep, % ran(1,2)
        Send {%shield% up}
        }
    }
return

; bladed dive
end::
    if (profile = 0) {
        Send {end down}
        Sleep, % ran(1,2)
        Send {end up}
    }
    else {
        Send {%melee_mainhand% down}
        Sleep, % ran(1,2)
        Send {%melee_mainhand% up}
        Sleep, % ran(1,2)
        Send {%excalibur% down}
        Sleep, % ran(1,2)
        Send {%excalibur% up}
        Sleep, % ran(1,2)
        Send {%bladed_dive% down}
        Sleep, % ran(1,2)
        Send {%bladed_dive% up}
    }
return

; AOD sgb spec no sirenic switch
Del::
        if (profile = 3) {
        Send {%sgb% down}
        Sleep, % ran(1,2)
        Send {%sgb% up}
        Sleep, % ran(1,2)
        Send {%ranged_prayer% down}
        Sleep, % ran(1,2)
        Send {%ranged_prayer% up}
        Sleep, % ran(1,2)
        Send {%ingen% down}
        Sleep, % ran(1,2)
        Send {%ingen% up}
        Sleep, % ran(1,2)
        Send {%eof% down}
        Sleep, % ran(1,2)
        Send {%eof% up}
        Sleep, % ran(1,2)
        Send {%mage_prayer% down}
        Sleep, % ran(1,2)
        Send {%mage_prayer% up}
    }
; AOD sgb spec with sirenic switch
        if (profile = 4) {
        Send {%sgb% down}
        Sleep, % ran(1,2)
        Send {%sgb% up}
        Sleep, % ran(1,2)
        Send {%body% down}
        Sleep, % ran(1,2)
        Send {%body% up}
        Sleep, % ran(1,2)
        Send {%legs% down}
        Sleep, % ran(1,2)
        Send {%legs% up}
        Sleep, % ran(1,2)
        Send {%ranged_prayer% down}
        Sleep, % ran(1,2)
        Send {%ranged_prayer% up}
        Sleep, % ran(1,2)
        Send {%ingen% down}
        Sleep, % ran(1,2)
        Send {%ingen% up}
        Sleep, % ran(1,2)
        Send {%eof% down}
        Sleep, % ran(1,2)
        Send {%eof% up}
        Sleep, % ran(1,2)
        Send {%mage_prayer% down}
        Sleep, % ran(1,2)
        Send {%mage_prayer% up}
    }
; Sonic + BD for telos phase
        if (profile = 1) {
        Send {d down}
        Sleep, % ran(1,2)
        Send {d up}
        Sleep, % ran(1,2)
        Send {%melee_mainhand% down}
        Sleep, % ran(1,2)
        Send {%melee_mainhand% up}
        Sleep, % ran(1,2)
        Send {%excalibur% down}
        Sleep, % ran(1,2)
        Send {%excalibur% up}
        Sleep, % ran(1,2)
        Send {%bladed_dive% down}
        Sleep, % ran(1,2)
        Send {%bladed_dive% up}
        Sleep, % ran(1,2)
        Send {Click down}
        Sleep, % ran(1,2)
        Send {Click up}
        }
    else {
        Del::Del
    }
return

; Auto + Deto + Wild Magic
pgup::
    if (profile = 3) {
        Send {%auto% down}
        Sleep, % ran(1,2)
        Send {%auto% up}
        Sleep, % ran(1,2)
        Send {%deto% down}
        Sleep, % ran(1,2)
        Send {%deto% up}
        Sleep, % ran(1,2)
        Send {%wild_magic% down}
        Sleep, % ran(1,2)
        Send {%wild_magic% up} 
    }
    else {
        pgup::pgup
    }
return


F9::
; Smoke cloud + Deto + Gstaff
    if (profile = 4) {
        Send {%smoke_cloud% down}
        Sleep, % ran(1,2)
        Send {%smoke_cloud% up}
        Sleep, % ran(1,2)
        Send {%deto% down}
        Sleep, % ran(1,2)
        Send {%deto% up}
        Sleep, % ran(1,2)
        Send {%eof% down}
        Sleep, % ran(1,2)
        Send {%eof% up}
    }
; Auto + Deto + Gstaff
    if (profile = 3) {
        Send {%auto% down}
        Sleep, % ran(1,2)
        Send {%auto% up}
        Sleep, % ran(1,2)
        Send {%deto% down}
        Sleep, % ran(1,2)
        Send {%deto% up}
        Sleep, % ran(1,2)
        Send {%eof% down}
        Sleep, % ran(1,2)
        Send {%eof% up}
    }
return