	db DEX_DITTO ; pokedex id

	db  95,  110,  110,  115,  200
	;   hp  atk  def  spd  spc

	db SPECIAL_TYPE, TAHIRO_MAKER ; type
	db 32 ; catch rate
	db 242 ; base exp

	INCBIN "gfx/pokemon/front/ditto.pic", 0, 1 ; sprite dimensions
	dw DittoPicFront, DittoPicBack

	db TRANSFORM, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(DittoPicFront)
	assert BANK(DittoPicFront) == BANK(DittoPicBack)
