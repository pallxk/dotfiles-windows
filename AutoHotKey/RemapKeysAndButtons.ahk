#Include *i include/TrayIconOnCapsLock.ahk
#SingleInstance force

; Wheel horizontal scroll -> Browser navigation
WheelLeft::Browser_Back
WheelRight::Browser_Forward

; Win + mouse buttons -> Window moving
#WheelLeft::Send {Blind}{Left}
#WheelRight::Send {Blind}{Right}
#XButton1::Send {Blind}{Left}
#XButton2::Send {Blind}{Right}

; Win + Alt + mouse buttons -> Multimedia keys
#!LButton::Send {Blind}{Media_Play_Pause}
#!RButton::Send {Blind}{Media_Stop}
#!MButton::Send {Volume_Mute}
#!WheelUp::Send {Volume_Up}
#!WheelDown::Send {Volume_Down}
#!WheelLeft::Send {Blind}{Media_Prev}
#!WheelRight::Send {Blind}{Media_Next}
#!XButton1::Send {Blind}{Media_Prev}
#!XButton2::Send {Blind}{Media_Next}

; Win + Ctrl + mouse buttons -> Win 10 virtual desktops keys
#^LButton::Send {LWin Down}{Tab}{LWin Up}
#^RButton::Send {Blind}d
#^MButton::Send {Blind}{F4}
#^WheelUp::Send {Blind}{Left}
#^WheelDown::Send {Blind}{Right}
#^WheelLeft::Send {Blind}{Left}
#^WheelRight::Send {Blind}{Right}
#^XButton1::Send {Blind}{Left}
#^XButton2::Send {Blind}{Right}


; Filco Minila style key mapping (Fn -> CapsLock)
CapsLock & `::Send {Blind}{Esc}
CapsLock & 1::Send {Blind}{F1}
CapsLock & 2::Send {Blind}{F2}
CapsLock & 3::Send {Blind}{F3}
CapsLock & 4::Send {Blind}{F4}
CapsLock & 5::Send {Blind}{F5}
CapsLock & 6::Send {Blind}{F6}
CapsLock & 7::Send {Blind}{F7}
CapsLock & 8::Send {Blind}{F8}
CapsLock & 9::Send {Blind}{F9}
CapsLock & 0::Send {Blind}{F10}
CapsLock & -::Send {Blind}{F11}
CapsLock & =::Send {Blind}{F12}

CapsLock & e::Send {Blind}{Up}
CapsLock & s::Send {Blind}{Left}
CapsLock & d::Send {Blind}{Down}
CapsLock & f::Send {Blind}{Right}

CapsLock & i::Send {Blind}{PrintScreen}
CapsLock & o::Send {Blind}{ScrollLock}
CapsLock & p::Send {Blind}{Pause}

CapsLock & j::Send {Blind}{Ins}
CapsLock & k::Send {Blind}{Home}
CapsLock & l::Send {Blind}{PgUp}

CapsLock & m::Send {Blind}{Del}
CapsLock & ,::Send {Blind}{End}
CapsLock & .::Send {Blind}{PgDn}

CapsLock & h::Send {Blind}{Bs}  ; Mimic ^H in shells
CapsLock & `;::Send {Blind}{Bs}

; Filco Minila style key mapping (Fn -> AppsKey)
AppsKey::Send {Blind}{AppsKey}  ; Required to fire itself when pressed alone

AppsKey & `::Send {Blind}{Esc}
AppsKey & 1::Send {Blind}{F1}
AppsKey & 2::Send {Blind}{F2}
AppsKey & 3::Send {Blind}{F3}
AppsKey & 4::Send {Blind}{F4}
AppsKey & 5::Send {Blind}{F5}
AppsKey & 6::Send {Blind}{F6}
AppsKey & 7::Send {Blind}{F7}
AppsKey & 8::Send {Blind}{F8}
AppsKey & 9::Send {Blind}{F9}
AppsKey & 0::Send {Blind}{F10}
AppsKey & -::Send {Blind}{F11}
AppsKey & =::Send {Blind}{F12}

AppsKey & e::Send {Blind}{Up}
AppsKey & s::Send {Blind}{Left}
AppsKey & d::Send {Blind}{Down}
AppsKey & f::Send {Blind}{Right}

AppsKey & i::Send {Blind}{PrintScreen}
AppsKey & o::Send {Blind}{ScrollLock}
AppsKey & p::Send {Blind}{Pause}

AppsKey & j::Send {Blind}{Ins}
AppsKey & k::Send {Blind}{Home}
AppsKey & l::Send {Blind}{PgUp}

AppsKey & m::Send {Blind}{Del}
AppsKey & ,::Send {Blind}{End}
AppsKey & .::Send {Blind}{PgDn}

AppsKey & h::Send {Blind}{Bs}   ; Mimic ^H in shells
AppsKey & `;::Send {Blind}{Bs}
