Loop {
   Language := GetLayout()
   ; if Dvorak is enabled then enable all remaps
   If (Language == "0xf0020409")
   {     
      Suspend Off
   }
   ; else proceed like normal
   else
   {
      Suspend On
   }
   Sleep, 100
}


GetLayout()
{
   hWnd := WinExist("A")
   ThreadID := DllCall("GetWindowThreadProcessId", "Ptr", hWnd, "UInt", 0)
   KLID := DllCall("GetKeyboardLayout", "UInt", ThreadID, "UInt")
   return Format("0x{:x}", KLID)
}

;F1::
;   Language := GetLayout()
;   MsgBox % "Keyboard layout: " Language "`n"
;      . "Keyboard language identifier: " Language
;return

;Hotkey, F2, ShowLanguage
;ShowLanguage:
;Language := GetLayout()
;MsgBox % "Keyboard layout: " Language "`n"
;. "Keyboard language identifier: " Language
;return



;	=Dvorak Hot Key Fixes ( Autohotkey )
;--------------------------------------
;----------------- CTRL ALT KEY
^![::Send ^!-
^!]::Send ^!=
^!'::Send ^!q
^!,::Send ^!w
^!.::Send ^!e
^!p::Send ^!r
^!y::Send ^!t
^!f::Send ^!y
^!g::Send ^!u
^!c::Send ^!i
^!r::Send ^!o
^!l::Send ^!p
^!/::Send ^![
^!=::Send ^!]
^!o::Send ^!s
^!e::Send ^!d
^!u::Send ^!f
^!i::Send ^!g
^!d::Send ^!h
^!h::Send ^!j
^!t::Send ^!k
^!n::Send ^!l
^!s::Send ^!`;
^!-::Send ^!'
^!`;::Send ^!z
^!q::Send ^!x
^!j::Send ^!c
^!k::Send ^!v
^!x::Send ^!b
^!b::Send ^!n
^!m::Send ^!m
^!w::Send ^!,
^!v::Send ^!.
^!z::Send ^!/


;----------------- CTRL SHIFT KEY

^+[::Send ^+-
^+]::Send ^+=
^+'::Send ^+q
^+,::Send ^+w
^+.::Send ^+e
^+p::Send ^+r
^+y::Send ^+t
^+f::Send ^+y
^+g::Send ^+u
^+c::Send ^+i
^+r::Send ^+o
^+l::Send ^+p
^+/::Send ^+[
^+=::Send ^+]
^+o::Send ^+s
^+e::Send ^+d
^+u::Send ^+f
^+i::Send ^+g
^+d::Send ^+h
^+h::Send ^+j
^+t::Send ^+k
^+n::Send ^+l
^+s::Send ^+`;
^+-::Send ^+'
^+`;::Send ^+z
^+q::Send ^+x
^+j::Send ^+c
^+k::Send ^+v
^+x::Send ^+b
^+b::Send ^+n
^+m::Send ^+m
^+w::Send ^+,
^+v::Send ^+.
^+z::Send ^+/

;----------------- CTRL KEY

*^[::Send ^-
*^]::Send ^=

*^'::Send ^q
*^,::Send ^w
*^.::Send ^e
*^p::Send ^r
*^y::Send ^t
*^f::Send ^y
*^g::Send ^u
*^c::Send ^i
*^r::Send ^o
*^l::Send ^p
*^/::Send ^[
*^=::Send ^]

*^o::Send ^s
*^e::Send ^d
*^u::Send ^f
*^i::Send ^g
*^d::Send ^h
*^h::Send ^j
*^t::Send ^k
*^n::Send ^l
*^s::Send ^`;
*^-::Send ^'

*^`;::Send ^z
*^q::Send ^x
*^j::Send ^c
*^k::Send ^v
*^x::Send ^b
*^b::Send ^n
*^m::Send ^m
*^w::Send ^,
*^v::Send ^.
*^z::Send ^/

;----------------- ALT SHIFT KEY

!+[::Send !+-
!+]::Send !+=
!+'::Send !+q
!+,::Send !+w
!+.::Send !+e
!+p::Send !+r
!+y::Send !+t
!+f::Send !+y
!+g::Send !+u
!+c::Send !+i
!+r::Send !+o
!+l::Send !+p
!+/::Send !+[
!+=::Send !+]
!+o::Send !+s
!+e::Send !+d
!+u::Send !+f
!+i::Send !+g
!+d::Send !+h
!+h::Send !+j
!+t::Send !+k
!+n::Send !+l
!+s::Send !+`;
!+-::Send !+'
!+`;::Send +!z
!+q::Send !+x
!+j::Send !+c
!+k::Send !+v
!+x::Send !+b
!+b::Send !+n
!+m::Send !+m
!+w::Send !+,
!+v::Send !+.
!+z::Send !+/

;----------------- ALT KEY

*![::Send !-
*!]::Send !=

*!'::Send !q
*!,::Send !w
*!.::Send !e
*!p::Send !r
*!y::Send !t
*!f::Send !y
*!g::Send !u
*!c::Send !i
*!r::Send !o
*!l::Send !p
*!/::Send ![
*!=::Send !]

*!o::Send !s
*!e::Send !d
*!u::Send !f
*!i::Send !g
*!d::Send !h
*!h::Send !j
*!t::Send !k
*!n::Send !l
*!s::Send !`;
*!-::Send !'

*!`;::Send !z
*!q::Send !x
*!j::Send !c
*!k::Send !v
*!x::Send !b
*!b::Send !n
*!m::Send !m
*!w::Send !,
*!v::Send !.
*!z::Send !/

;----------------- WINDOWS KEY
*#[::Send #-
*#]::Send #=

*#'::Send #q
*#,::Send #w
*#.::Send #e
*#p::Send #r
*#y::Send #t
*#f::Send #y
*#g::Send #u
*#c::Send #i
*#r::Send #o
*#l::Send #p
*#/::Send #[
*#=::Send #]

*#o::Send #s
*#e::Send #d
*#u::Send #f
*#i::Send #g
*#d::Send #h
*#h::Send #j
*#t::Send #k
*#n::Send #l
*#s::Send #`;
*#-::Send #'

*#`;::Send #z
*#q::Send #x
*#j::Send #c
*#k::Send #v
*#x::Send #b
*#b::Send #n
*#m::Send #m
*#w::Send #,
*#v::Send #.
*#z::Send #/

^#j::Send ^#c