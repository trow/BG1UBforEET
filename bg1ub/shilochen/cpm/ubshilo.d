BEGIN ~UBSHILO~

IF ~ReactionLT(LastTalkedToBy,8)~ THEN BEGIN 0
  SAY @20017
  IF ~~ THEN DO ~~ EXIT
END

IF ~Global("AcceptedUBShiloQuest","GLOBAL",0)
ReactionGT(LastTalkedToBy,7)~ THEN BEGIN 1
  SAY @0
  IF ~~ THEN DO ~SetGlobal("AcceptedUBShiloQuest","GLOBAL",1)~ UNSOLVED_JOURNAL @20178 EXIT
END

IF ~Global("AcceptedUBShiloQuest","GLOBAL",1)
!Dead("UBOGMA01")
!Dead("UBOGMA02")~ THEN BEGIN 2
  SAY @20019
  IF ~~ THEN DO ~~ EXIT
END

IF ~Global("AcceptedUBShiloQuest","GLOBAL",1)
Dead("UBOGMA01")
Dead("UBOGMA02")~ THEN BEGIN 3
  SAY @20020
  IF ~~ THEN DO ~AddexperienceParty(750)
GiveItem("UBGLOVE1",LastTalkedToBy)
SetGlobal("AcceptedUBShiloQuest","GLOBAL",2)
EraseJournalEntry(@20178)
EscapeArea()~ SOLVED_JOURNAL @20179 EXIT
END

IF ~StateCheck(Myself,8192)~ THEN BEGIN 4
  SAY @20021
  IF ~~ THEN DO ~~ EXIT
END
