	db DEX_CATERPIE ; pokedex id

	db  70,  85,  120,  70,  85
	;   hp  atk  def  spd  spc

	db GROUND_TYPE, FE_MAKER ; type
	db 64 ; catch rate
	db 162 ; base exp

	INCBIN "gfx/pokemon/front/caterpie.pic", 0, 1 ; sprite dimensions
	dw CaterpiePicFront, CaterpiePicBack

	db TACKLE, STRING_SHOT, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(CaterpiePicFront)
	assert BANK(CaterpiePicFront) == BANK(CaterpiePicBack)
