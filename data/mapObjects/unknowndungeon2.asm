UnknownDungeon2Object: ; 0x45e14 (size=73)
	db $7d ; border block

	db $6 ; warps
	db $1, $1d, $2, UNKNOWN_DUNGEON_1
	db $6, $16, $3, UNKNOWN_DUNGEON_1
	db $7, $13, $4, UNKNOWN_DUNGEON_1
	db $1, $9, $5, UNKNOWN_DUNGEON_1
	db $3, $1, $6, UNKNOWN_DUNGEON_1
	db $b, $3, $7, UNKNOWN_DUNGEON_1

	db $0 ; signs

	db $3 ; people
	db SPRITE_BALL, $9 + 4, $1d + 4, $ff, $ff, ITEM | $1, PP_UP
	db SPRITE_BALL, $f + 4, $4 + 4, $ff, $ff, ITEM | $2, ULTRA_BALL
	db SPRITE_BALL, $6 + 4, $d + 4, $ff, $ff, ITEM | $3, FULL_RESTORE

	; warp-to
	EVENT_DISP UNKNOWN_DUNGEON_2_WIDTH, $1, $1d ; UNKNOWN_DUNGEON_1
	EVENT_DISP UNKNOWN_DUNGEON_2_WIDTH, $6, $16 ; UNKNOWN_DUNGEON_1
	EVENT_DISP UNKNOWN_DUNGEON_2_WIDTH, $7, $13 ; UNKNOWN_DUNGEON_1
	EVENT_DISP UNKNOWN_DUNGEON_2_WIDTH, $1, $9 ; UNKNOWN_DUNGEON_1
	EVENT_DISP UNKNOWN_DUNGEON_2_WIDTH, $3, $1 ; UNKNOWN_DUNGEON_1
	EVENT_DISP UNKNOWN_DUNGEON_2_WIDTH, $b, $3 ; UNKNOWN_DUNGEON_1
