	db DEX_METAPOD ; pokedex id

	db  50,  30,  30,  35,  30
	;   hp  atk  def  spd  spc

	db STRIKE_TYPE, FE_MAKER ; type
	db 128 ; catch rate
	db 60 ; base exp

	INCBIN "gfx/pokemon/front/metapod.pic", 0, 1 ; sprite dimensions
	dw MetapodPicFront, MetapodPicBack

	db HARDEN, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(MetapodPicFront)
	assert BANK(MetapodPicFront) == BANK(MetapodPicBack)
