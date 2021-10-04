;非常に便利な機能だが、無効化しないほうがvimの移動に近くなるため切っておく
;$vk1D::
;    startTime := A_TickCount
;    KeyWait, vk1D
;    keyPressDuration := A_TickCount - startTime
;    ; 無変換を押している間に他のホットキーが発動した場合は入力しない
;    ; 無変換を長押ししていた場合も入力しない（~との合わせ技）
;    If (A_ThisHotkey == "$vk1D" and keyPressDuration < 200) {
;        Send,{vk1D}
;    }
;    Return

Ctrl & Space::send,{Esc}{vk1Dsc07B}
~vk1D & h::send,{Blind}{Left}
~vk1D & j::send,{Blind}{Down}
~vk1D & l::send,{Blind}{Right}
~vk1D & k::send,{Blind}{Up}
~vk1D & n::send,{Blind}{Down}
~vk1D & p::send,{Blind}{Up}

~vk1D & a::Send,{Blind}{Home}
~vk1D & e::Send,{Blind}{End}
~vk1D & vkBB::Send,{Blind}{End}

~vk1D & x::send,{Delete}

~vk1D & w::send,{Blind}^{right}
~vk1D & b::send,{Blind}^{left}

;~vk1D & u::send,{Blind}^{z}
~vk1D & d::send,{Blind}{Down 10}

~vk1D & F::Send,{Blind}{AppsKey}
~vk1D & Enter::LButton

#if GetKeyState("vk1D", "P")
vkA0 & u::send, ^{y}

~vk1D & 1::Send, {Blind}{F1}      ; 変換 + 1 = F1
~vk1D & 2::Send, {Blind}{F2}      ; 変換 + 2 = F2
~vk1D & 3::Send, {Blind}{F3}      ; 変換 + 3 = F3
~vk1D & 4::Send, {Blind}{F4}      ; 変換 + 4 = F4
~vk1D & 5::Send, {Blind}{F5}      ; 変換 + 5 = F5
~vk1D & 6::Send, {Blind}{F6}      ; 変換 + 6 = F6
~vk1D & 7::Send, {Blind}{F7}      ; 変換 + 7 = F7
~vk1D & 8::Send, {Blind}{F8}      ; 変換 + 8 = F8
~vk1D & 9::Send, {Blind}{F9}      ; 変換 + 9 = F9
~vk1D & 0::Send, {Blind}{F10}     ; 変換 + 0 = F10
~vk1D & -::Send, {Blind}{F11}     ; 変換 + - = F11
~vk1D & ^::Send, {Blind}{F12}     ; 変換 + ^ = F12

; #IfWinActive,ahk_exe chrome.exe  ;Chrome.exeがアクティブな時にだけ
~vk1D & u::send,{Blind}{Up 10}
#IfWinActive