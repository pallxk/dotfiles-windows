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


; Filco Minila style key mapping
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

CapsLock & `;::Send {Blind}{Bs}