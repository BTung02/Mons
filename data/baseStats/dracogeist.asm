DracogeistBaseStats: ; numbers
db DEX_DRACOGEIST ;
db 90 ; base hp
db 130 ; base attack
db 80 ; base defense
db 112 ; base speed
db 84 ; base special
db DRAGON ; species type 1
db GHOST ; species type 2
db 45 ; catch rate
db 220 ; base exp yield
INCBIN "pic/bmon/dracogeist.pic",0,1 ;  77, sprite dimensions
dw DracogeistPicFront
dw DracogeistPicBack
; move tutor compatibility flags
	m_tutor 0
	m_tutor 0
	m_tutor 0
	m_tutor 0
db 5 ; growth rate
; learnset
	tmlearn 2,3,6,7,8
	tmlearn 15,16
	tmlearn 23
	tmlearn 29,30,31,32
	tmlearn 34,38
	tmlearn 42,43,48
	tmlearn 52,54
db BANK(DracogeistPicFront)
