SilphCo6Object: ; 0x1a2fb (size=112)
	db $2e ; border block

	db $5 ; warps
	db $0, $10, $1, SILPH_CO_7F
	db $0, $e, $0, SILPH_CO_5F
	db $0, $12, $0, SILPH_CO_ELEVATOR
	db $3, $3, $4, SILPH_CO_4F
	db $3, $17, $6, SILPH_CO_2F

	db $0 ; signs

	db $a ; objects
	object SPRITE_LAPRAS_GIVER, $a, $6, FACE, STAY, $1 ; person
	object SPRITE_LAPRAS_GIVER, $14, $6, FACE, STAY, $2 ; person
	object SPRITE_ERIKA, $15, $6, FACE, DOWN, $3 ; person
	object SPRITE_ERIKA, $b, $a, FACE, LEFT, $4 ; person
	object SPRITE_LAPRAS_GIVER, $12, $d, FACE, UP, $5 ; person
	object SPRITE_ROCKET, $11, $3, FACE, LEFT, $6, ROCKET + $C8, $1e
	object SPRITE_OAK_AIDE, $7, $8, FACE, DOWN, $7, SCIENTIST + $C8, $7
	object SPRITE_ROCKET, $e, $f, FACE, RIGHT, $8, ROCKET + $C8, $1f
	object SPRITE_BALL, $3, $c, FACE, STAY, $9, HP_UP
	object SPRITE_BALL, $2, $f, FACE, STAY, $a, X_ACCURACY

	; warp-to
	EVENT_DISP SILPH_CO_6F_WIDTH, $0, $10 ; SILPH_CO_7F
	EVENT_DISP SILPH_CO_6F_WIDTH, $0, $e ; SILPH_CO_5F
	EVENT_DISP SILPH_CO_6F_WIDTH, $0, $12 ; SILPH_CO_ELEVATOR
	EVENT_DISP SILPH_CO_6F_WIDTH, $3, $3 ; SILPH_CO_4F
	EVENT_DISP SILPH_CO_6F_WIDTH, $3, $17 ; SILPH_CO_2F
