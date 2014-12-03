BEGIN UBQUON
IF WEIGHT #1 ~NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,8)~ 0
SAY #15528
IF ~~ EXIT
END

IF WEIGHT #2 ~NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy,7)~ 1
SAY #15532
IF ~~ DO ~SetGlobal("UB_HELPQUONINGAR","GLOBAL",2)~ JOURNAL #15809 EXIT
END

IF WEIGHT #5 ~Global("UB_HELPQUONINGAR","GLOBAL",2)
!PartyHasItem("POTN37")~ 2
SAY #15538
IF ~~ EXIT
END

IF WEIGHT #3 ~Global("UB_HELPQUONINGAR","GLOBAL",2)
ReactionGT(LastTalkedToBy,14)
PartyHasItem("POTN37")~ 3
SAY #15539
IF ~~ DO ~TakePartyItem("POTN37")
AddexperienceParty(500)
SetGlobal("UB_HELPQUONINGAR","GLOBAL",1)
GiveItem("HAMM02",LastTalkedToBy)~ JOURNAL @0 EXIT
END

IF WEIGHT #4 ~Global("UB_HELPQUONINGAR","GLOBAL",2)
ReactionLT(LastTalkedToBy,15)
PartyHasItem("POTN37")~ 4
SAY #15540
IF ~~ DO ~TakePartyItem("POTN37")
AddexperienceParty(500)
SetGlobal("UB_HELPQUONINGAR","GLOBAL",1)
GiveItemCreate("POTN33",LastTalkedToBy,0,0,0)
GiveItemCreate("POTN33",LastTalkedToBy,0,0,0)~ JOURNAL @0 EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,8192)~ 5
SAY #15541
IF ~~ EXIT
END

IF ~~ 6
SAY #15542
IF ~~ EXIT
END