	db DEX_MAGIKARP ; pokedex id

	db  25,  20,  20,  45,  50
	;   hp  atk  def  spd  spc

	db SPECIAL_TYPE, TAHIRO_MAKER ; type
	db 128 ; catch rate
	db 54 ; base exp

	INCBIN "gfx/pokemon/front/magikarp.pic", 0, 1 ; sprite dimensions
	dw MagikarpPicFront, MagikarpPicBack

	db SPLASH, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(MagikarpPicFront)
	assert BANK(MagikarpPicFront) == BANK(MagikarpPicBack)
