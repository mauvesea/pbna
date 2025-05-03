	db DEX_PROMENADE ; pokedex id

	db  150,  220,  185,  185,  255
	;   hp  atk  def  spd  spc

	db SPECIAL_TYPE, JANK_MAKER ; type
	db 3 ; catch rate
	db 245 ; base exp

	INCBIN "gfx/pokemon/front/promenade.pic", 0, 1 ; sprite dimensions
	dw PromenadePicFront, PromenadePicBack

	db TELEPORT, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     PSYCHIC_M,    TELEPORT,     MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         METRONOME,    SKULL_BASH,   REST,         THUNDER_WAVE, \
	     PSYWAVE,      TRI_ATTACK,   SUBSTITUTE,   FLASH
	; end

	db BANK(PromenadePicFront)
	assert BANK(PromenadePicFront) == BANK(PromenadePicBack)
