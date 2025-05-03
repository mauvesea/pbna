	db DEX_PIXAIL ; pokedex id

	db  230,  90,  100,  90,  80
	;   hp  atk  def  spd  spc

	db SPECIAL_TYPE, JANK_MAKER ; type
	db 128 ; catch rate
	db 226 ; base exp

	INCBIN "gfx/pokemon/front/pixail.pic", 0, 1 ; sprite dimensions
	dw PixailPicFront, PixailPicBack

	db TELEPORT, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     PSYCHIC_M,    TELEPORT,     MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         METRONOME,    SKULL_BASH,   REST,         THUNDER_WAVE, \
	     PSYWAVE,      TRI_ATTACK,   SUBSTITUTE,   FLASH
	; end

	db BANK(PixailPicFront)
	assert BANK(PixailPicFront) == BANK(PixailPicBack)
