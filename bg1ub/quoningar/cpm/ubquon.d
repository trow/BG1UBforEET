BEGIN UBQUON
IF WEIGHT #1 ~NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,8)~ 0
SAY @20009
IF ~~ EXIT
END

IF WEIGHT #2 ~NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy,7)~ 1
SAY @20010
IF ~~ DO ~SetGlobal("UB_HELPQUONINGAR","GLOBAL",2)~ UNSOLVED_JOURNAL @20176 EXIT
END

IF WEIGHT #5 ~Global("UB_HELPQUONINGAR","GLOBAL",2)
!PartyHasItem("%tutu_var%POTN37")~ 2
SAY @20012
IF ~~ EXIT
END

IF WEIGHT #3 ~Global("UB_HELPQUONINGAR","GLOBAL",2)
ReactionGT(LastTalkedToBy,14)
PartyHasItem("%tutu_var%POTN37")~ 3
SAY @20013
IF ~~ DO ~TakePartyItemNum("%tutu_var%POTN37",1)
AddexperienceParty(500)
SetGlobal("UB_HELPQUONINGAR","GLOBAL",1)
GiveItem("%tutu_var%HAMM02",LastTalkedToBy)
EraseJournalEntry(@20176)~ SOLVED_JOURNAL @20177 EXIT
END

IF WEIGHT #4 ~Global("UB_HELPQUONINGAR","GLOBAL",2)
ReactionLT(LastTalkedToBy,15)
PartyHasItem("%tutu_var%POTN37")~ 4
SAY @20014
IF ~~ DO ~TakePartyItemNum("%tutu_var%POTN37",1)
AddexperienceParty(500)
SetGlobal("UB_HELPQUONINGAR","GLOBAL",1)
GiveItemCreate("%tutu_var%POTN33",LastTalkedToBy,0,0,0)
GiveItemCreate("%tutu_var%POTN33",LastTalkedToBy,0,0,0)
EraseJournalEntry(@20176)~ SOLVED_JOURNAL @20177 EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,8192)~ 5
SAY @20015
IF ~~ EXIT
END

IF ~ReactionLT(LastTalkedToBy,8)~ 6
SAY @20016
IF ~~ EXIT
END