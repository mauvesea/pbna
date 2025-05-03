	db DEX_SPIRAL ; pokedex id

	db  65,  60,  45,  55,  45
	;   hp  atk  def  spd  spc

	db BLADE_TYPE, JANK_MAKER ; type
	db 128 ; catch rate
	db 98 ; base exp

	INCBIN "gfx/pokemon/front/spiral.pic", 0, 1 ; sprite dimensions
	dw SpiralPicFront, SpiralPicBack

	db TELEPORT, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     PSYCHIC_M,    TELEPORT,     MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         METRONOME,    SKULL_BASH,   REST,         THUNDER_WAVE, \
	     PSYWAVE,      TRI_ATTACK,   SUBSTITUTE,   FLASH
	; end

	db BANK(SpiralPicFront)
	assert BANK(SpiralPicFront) == BANK(SpiralPicBack)
