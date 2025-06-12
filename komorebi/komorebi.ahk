;#Requires AutoHotkey v2.0.2
#SingleInstance Force

Komorebic(cmd) {
    RunWait(format("komorebic.exe {}", cmd), , "Hide")
}

YasbRestart() {
    RunWait("yasbc stop", , "Hide")
    RunWait("yasbc start", , "Hide")
}

YasbStart() {
    RunWait("Taskkill /IM Yasb* /F")
    RunWait("yasbc start", , "Hide")
}

#y::YasbRestart()
#+y::YasbStart()


#w::Komorebic("close")
#m::Komorebic("minimize")

; Focus windows
#+Left::Komorebic("focus left")
#+Down::Komorebic("focus down")
#+Up::Komorebic("focus up")
#+Right::Komorebic("focus right")


!Tab::Komorebic("cycle-focus previous")
!+Tab::Komorebic("cycle-focus next")

; Move windows
#Left::Komorebic("move left")
#Down::Komorebic("move down")
#Up::Komorebic("move up")
#Right::Komorebic("move right")
#Home::Komorebic("promote")
#Enter::Komorebic("promote")


; Stack windows
;#Left::Komorebic("stack left")

#NumpadDown::Komorebic("stack down")
#NumpadUp::Komorebic("stack up")
#NumpadRight::Komorebic("stack right")
#NumpadLeft::Komorebic("stack left")
#NumpadIns::Komorebic("unstack")
#NumpadPgup::Komorebic("cycle-stack previous")
#NumpadPgDn::Komorebic("cycle-stack next")

#Numpad2::Komorebic("stack down")
#Numpad8::Komorebic("stack up")
#Numpad6::Komorebic("stack right")
#Numpad4::Komorebic("stack left")
#Numpad0::Komorebic("unstack")
#Numpad9::Komorebic("cycle-stack previous")
#Numpad3::Komorebic("cycle-stack next")


; Resize
#^Right::Komorebic("resize-axis horizontal increase")
#^Left::Komorebic("resize-axis horizontal decrease")
#^Up::Komorebic("resize-axis vertical increase")
#^Down::Komorebic("resize-axis vertical decrease")

; Manipulate windows
#t::Komorebic("toggle-float")
#f::Komorebic("toggle-monocle")

#e::Komorebic("toggle-window-based-work-area-offset")

; Window manager options
;!+r::Komorebic("retile")
;!p::Komorebic("toggle-pause")

; Layouts
;!x::Komorebic("flip-layout horizontal")
;!y::Komorebic("flip-layout vertical")

; Workspaces
;!1::Komorebic("focus-workspace 0")
;!2::Komorebic("focus-workspace 1")
;!3::Komorebic("focus-workspace 2")
;!4::Komorebic("focus-workspace 3")
;!5::Komorebic("focus-workspace 4")
;!6::Komorebic("focus-workspace 5")
;!7::Komorebic("focus-workspace 6")
;!8::Komorebic("focus-workspace 7")

; Move windows across workspaces
;!+1::Komorebic("move-to-workspace 0")
;!+2::Komorebic("move-to-workspace 1")
;!+3::Komorebic("move-to-workspace 2")
;!+4::Komorebic("move-to-workspace 3")
;!+5::Komorebic("move-to-workspace 4")
;!+6::Komorebic("move-to-workspace 5")
;!+7::Komorebic("move-to-workspace 6")
;!+8::Komorebic("move-to-workspace 7")