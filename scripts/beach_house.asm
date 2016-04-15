BeachHouseScript:
	jp EnableAutoTextBoxDrawing

BeachHouseTextPointers:
	dw BeachHouseText1
	dw BeachHouseText2
	dw BeachHouseText3
	dw BeachHouseText4

BeachHouseText1: ; later a move tutor 
	TX_FAR _BeachHouseDudeText
	db "@"

BeachHouseText2: ; Pikachu
	TX_FAR _BeachHousePikachuText
	db $08 ; asm
	ld a, PIKACHU
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd

BeachHouseText3: ; give TM 15
	db $08 ; asm
	ld a, [wd857]
	bit 0, a
	jr nz, .already_received
	ld hl, BeachHouseGiveSurfText
	ld a, [wPlayerGender]
	and a
	jr z, .next
	ld hl, BeachHouseGiveSurfText2 ; if you're a girl
.next
	call PrintText
	lb bc, TM_15, 1
	call GiveItem
	jr nc, .BagFull
	ld hl, ReceivedHM03Text
	call PrintText
	ld hl, wd857
	set 0, [hl]
	jr .done
.BagFull
	ld hl, HM03NoRoomText
	call PrintText
	jr .done
.already_received
	ld hl, HM03ExplanationText
	call PrintText
.done
	jp TextScriptEnd

BeachHouseGiveSurfText:
	TX_FAR _BeachHouseGiveSurfText
	db "@"
	
BeachHouseGiveSurfText2:
	TX_FAR _BeachHouseGiveSurfText2
	db "@"

ReceivedHM03Text:
	TX_FAR _ReceivedHM03Text
	db $0B, "@"

HM03ExplanationText:
	TX_FAR _HM03ExplanationText
	db "@"

HM03NoRoomText:
	TX_FAR _HM03NoRoomText
	db "@"
	
BeachHouseText4:
	TX_FAR _BeachHouseOldManText
	db "@"
