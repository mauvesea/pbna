	db DEX_INTRUDER ; pokedex id

	db  100,  135,  100,  95,  90
	;   hp  atk  def  spd  spc

	db BLADE_TYPE, FE_MAKER ; type
	db 64 ; catch rate
	db 198 ; base exp

	INCBIN "gfx/pokemon/front/intruder.pic", 0, 1 ; sprite dimensions
	dw IntruderPicFront, IntruderPicBack

	db TELEPORT, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     PSYCHIC_M,    TELEPORT,     MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         METRONOME,    SKULL_BASH,   REST,         THUNDER_WAVE, \
	     PSYWAVE,      TRI_ATTACK,   SUBSTITUTE,   FLASH
	; end

	db BANK(IntruderPicFront)
	assert BANK(IntruderPicFront) == BANK(IntruderPicBack)
