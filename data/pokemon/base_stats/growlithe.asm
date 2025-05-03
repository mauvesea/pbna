	db DEX_GROWLITHE ; pokedex id

	db  50,  55,  50,  60,  115
	;   hp  atk  def  spd  spc

	db ICE_TYPE, STING_MAKER ; type
	db 64 ; catch rate
	db 122 ; base exp

	INCBIN "gfx/pokemon/front/growlithe.pic", 0, 1 ; sprite dimensions
	dw GrowlithePicFront, GrowlithePicBack

	db BITE, ROAR, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  RAGE,         \
	     DRAGON_RAGE,  DIG,          MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         FIRE_BLAST,   SWIFT,        SKULL_BASH,   REST,         \
	     SUBSTITUTE
	; end

	db BANK(GrowlithePicFront)
	assert BANK(GrowlithePicFront) == BANK(GrowlithePicBack)
