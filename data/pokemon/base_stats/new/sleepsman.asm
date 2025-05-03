	db DEX_SLEEPSMAN ; pokedex id

	db  90,  80,  80,  100,  170
	;   hp  atk  def  spd  spc

	db SPECIAL_TYPE, JANK_MAKER ; type
	db 64 ; catch rate
	db 198 ; base exp

	INCBIN "gfx/pokemon/front/sleepsman.pic", 0, 1 ; sprite dimensions
	dw SleepsmanPicFront, SleepsmanPicBack

	db TELEPORT, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     PSYCHIC_M,    TELEPORT,     MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         METRONOME,    SKULL_BASH,   REST,         THUNDER_WAVE, \
	     PSYWAVE,      TRI_ATTACK,   SUBSTITUTE,   FLASH
	; end

	db BANK(SleepsmanPicFront)
	assert BANK(SleepsmanPicFront) == BANK(SleepsmanPicBack)
