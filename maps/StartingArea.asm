StartingArea_MapScriptHeader:
	; trigger count
	db 0

	; callback count
	db 0


NPC_FISHING_GURU EQU 2

FishingGuruScript:

EnterTheFishingCompetitionScript:
	faceplayer

	loadfont
	2writetext EnterTheFishingCompetitionText
	verbosegiveitem OLD_ROD, 1
	loadmovesprites

	wait 5
	loadfont
	2writetext GetFishingCompetitionMonText
	loadmovesprites

	cry POLIWAG
	wait 5
	loadfont
	givepoke POLIWAG, 5, KINGS_ROCK, 0
	loadmovesprites

	setevent EVENT_ENTERED_THE_FISHING_COMPETITION

	applymovement NPC_FISHING_GURU, .walk_away
	disappear NPC_FISHING_GURU

	end

.walk_away
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end


EnterTheFishingCompetitionText:
	db 0, "You're late!", $4f
	db "Get to fishing, kid!", $58

GetFishingCompetitionMonText:
	db 0, "What?", $51
	db "You don't have a #MON?", $4f
	db "I guess you can take mine", $55
	db "for practice.", $58

StartingArea_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 1
	warp_def 15, 19, 1, GROUP_KRISS_HOUSE_2F, MAP_KRISS_HOUSE_2F

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 1
	; sprite, y+4, x+4, facing, movement, hour, daytime, clock_fn, sight_range, script, event_flag
	person_event SPRITE_FISHING_GURU, 25, 23, $6, $0, 255, 255, $a0, 0, FishingGuruScript, EVENT_ENTERED_THE_FISHING_COMPETITION
; 0x9c8bf

