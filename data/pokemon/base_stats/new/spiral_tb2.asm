	db DEX_SPIRAL_TB2 ; pokedex id

	db  125,  130,  135,  155,  125
	;   hp  atk  def  spd  spc

	db BLADE_TYPE, JANK_MAKER ; type
	db 43 ; catch rate
	db 245 ; base exp

	INCBIN "gfx/pokemon/front/spiral_tb2.pic", 0, 1 ; sprite dimensions
	dw SpiralTB2PicFront, SpiralTB2PicBack

	db TELEPORT, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     PSYCHIC_M,    TELEPORT,     MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         METRONOME,    SKULL_BASH,   REST,         THUNDER_WAVE, \
	     PSYWAVE,      TRI_ATTACK,   SUBSTITUTE,   FLASH
	; end

	db BANK(SpiralTB2PicFront)
	assert BANK(SpiralTB2PicFront) == BANK(SpiralTB2PicBack)
