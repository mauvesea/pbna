	db DEX_KAKUNA ; pokedex id

	db  70,  80,  80,  90,  90
	;   hp  atk  def  spd  spc

	db SPECIAL_TYPE, FE_MAKER ; type
	db 64 ; catch rate
	db 154 ; base exp

	INCBIN "gfx/pokemon/front/kakuna.pic", 0, 1 ; sprite dimensions
	dw KakunaPicFront, KakunaPicBack

	db HARDEN, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(KakunaPicFront)
	assert BANK(KakunaPicFront) == BANK(KakunaPicBack)
