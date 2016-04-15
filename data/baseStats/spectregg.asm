SpectreggBaseStats: ; numbers
db DEX_SPECTREGG ;
db 42 ; base hp
db 58 ; base attack
db 35 ; base defense
db 56 ; base speed
db 32 ; base special
db DRAGON ; species type 1
db GHOST ; species type 2
db 45 ; catch rate
db 82 ; base exp yield
INCBIN "pic/bmon/spectregg.pic",0,1 ;  55, sprite dimensions
dw SpectreggPicFront
dw SpectreggPicBack
; move tutor compatibility flags
	m_tutor 0
	m_tutor 0
	m_tutor 0
	m_tutor 0
db 5 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 16
	tmlearn 23
	tmlearn 30
	tmlearn 33,34,40
	tmlearn 42,47
	tmlearn 54
db BANK(SpectreggPicFront)
