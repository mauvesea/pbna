TypeNames:
	table_width 2, TypeNames

	dw .Blade
	dw .Strike
	dw .FE
	dw .Sting
	dw .Ruger
	dw .Tahiro
	dw .Jank
	dw .Unused
	dw .Unused

REPT UNUSED_TYPES_END - UNUSED_TYPES
	dw .Unused
ENDR

	dw .Special
	dw .Fire
	dw .Ice
	dw .Wind
	dw .Electric
	dw .Ground
	dw .Unused

	assert_table_length NUM_TYPES

.Blade: db "BLADE@"
.Strike: db "STRIKE@"
.FE: db "FE@"
.Sting: db "STING@"
.Ruger: db "RUGER@"
.Tahiro: db "TAHIRO@"
.Jank: db "JANK@"
.Special: db "SPECIAL@"
.Fire: db "FIRE@"
.Ice: db "ICE@"
.Wind: db "WIND"
.Electric: db "ELECTRIC"
.Ground: db "GROUND@"
.Unused db "UNUSED@"
