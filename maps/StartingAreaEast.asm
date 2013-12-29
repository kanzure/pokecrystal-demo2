StartingAreaEast_MapScriptHeader:
	; trigger count
	db 0

	; callback count
	db 0

StartingAreaeastSignpost0Script: ;
	jumptext StartingAreaeastSignpost
; 0x1a80cb

StartingAreaeastSignpost:
    print "Third Cave"
; 0x1a834d

StartingAreaEast_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 1
	warp_def 15, 19, 1, GROUP_KRISS_HOUSE_2F, MAP_KRISS_HOUSE_2F ; wrong

	; xy triggers
	db 0

	; signposts
	db 1
	signpost $23, $0b, $0, StartingAreaeastSignpost0Script ; wrong

	; people-events
	db 0
	; sprite, y+4, x+4, facing, movement, hour, daytime, clock_fn, sight_range, script, event_flag
; 0x9c8bf

