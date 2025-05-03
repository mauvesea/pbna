	db DEX_WEEDLE ; pokedex id

	db  45,  30,  30,  40,  40
	;   hp  atk  def  spd  spc

	db SPECIAL_TYPE, FE_MAKER ; type
	db 128 ; catch rate
	db 64 ; base exp

	INCBIN "gfx/pokemon/front/weedle.pic", 0, 1 ; sprite dimensions
	dw WeedlePicFront, WeedlePicBack

	db POISON_STING, STRING_SHOT, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(WeedlePicFront)
	assert BANK(WeedlePicFront) == BANK(WeedlePicBack)
