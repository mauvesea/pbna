; TypeNames indexes (see data/types/names.asm)
	const_def

DEF PHYSICAL EQU const_value

	const BLADE_TYPE
	const STRIKE_TYPE
	const FE_MAKER
	const STING_MAKER
	const RUGER_MAKER
	const TAHIRO_MAKER
	const JANK_MAKER
	const UNUSED_TYPE1 ; $07
	const UNUSED_TYPE2 ; $08

DEF UNUSED_TYPES EQU const_value
	const_next 20
DEF UNUSED_TYPES_END EQU const_value

DEF SPECIAL EQU const_value
	const SPECIAL_TYPE
	const FIRE_TYPE
	const ICE_TYPE
	const WIND_TYPE
	const ELECTRIC_TYPE
	const GROUND_TYPE
	const UNUSED_TYPE3   ; $1A

DEF NUM_TYPES EQU const_value
