Route2Object: ; 0x54022 (size=72)
	db $f ; border block

	db $6 ; warps
	db $9, $c, $0, DIGLETTS_CAVE_EXIT
	db $b, $3, $1, VIRIDIAN_FOREST_EXIT
	db $13, $f, $0, ROUTE_2_HOUSE
	db $23, $11, $1, ROUTE_2_GATE
	db $27, $f, $2, ROUTE_2_GATE
	db $2b, $3, $2, VIRIDIAN_FOREST_ENTRANCE

	db $2 ; signs
	db $41, $5, $5 ; Route2Text3
	db $b, $b, $6 ; Route2Text4

	db $4 ; people
	db SPRITE_BALL, $36 + 4, $d + 4, $ff, $ff, ITEM | $1, MOON_STONE
	db SPRITE_BALL, $2d + 4, $d + 4, $ff, $ff, ITEM | $2, HP_UP
	db SPRITE_BERRY_TREE, $10 + 4, $10 + 4, $ff, $ff, $3 ; person
	db SPRITE_BERRY_TREE, $29 + 4, $8 + 4, $ff, $ff, $4 ; person

	; warp-to
	EVENT_DISP ROUTE_2_WIDTH, $9, $c ; DIGLETTS_CAVE_EXIT
	EVENT_DISP ROUTE_2_WIDTH, $b, $3 ; VIRIDIAN_FOREST_EXIT
	EVENT_DISP ROUTE_2_WIDTH, $13, $f ; ROUTE_2_HOUSE
	EVENT_DISP ROUTE_2_WIDTH, $23, $11 ; ROUTE_2_GATE
	EVENT_DISP ROUTE_2_WIDTH, $27, $f ; ROUTE_2_GATE
	EVENT_DISP ROUTE_2_WIDTH, $2b, $3 ; VIRIDIAN_FOREST_ENTRANCE
