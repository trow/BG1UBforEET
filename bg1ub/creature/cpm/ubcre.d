BEGIN ~UBFELDAN~

IF ~True()~ THEN BEGIN 0
  SAY @20024
  IF ~~ THEN REPLY @20025 GOTO 1
  IF ~~ THEN REPLY @20026 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @20027
  IF ~~ THEN REPLY @20028 GOTO 3
  IF ~~ THEN REPLY @20029 GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY @20030
  IF ~~ THEN REPLY @20031 GOTO 5
  IF ~~ THEN REPLY @20032 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @20033
  IF ~~ THEN REPLY @20034 GOTO 4
  IF ~~ THEN REPLY @20035 GOTO 6
END

IF ~~ THEN BEGIN 4
  SAY @20036
  IF ~~ THEN DO ~EscapeArea()~ JOURNAL @0 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @20037
  IF ~~ THEN REPLY @20038 GOTO 4
  IF ~~ THEN REPLY @20039 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @20040
  IF ~~ THEN DO ~EscapeArea()~ JOURNAL @0 EXIT
END

BEGIN UBCORIAN

IF ~NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,8)~ THEN BEGIN 0
  SAY @20041
  IF ~~ THEN DO ~AddexperienceParty(100)
EscapeArea()~ JOURNAL @20042 EXIT
END

IF ~NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy,7)~ THEN BEGIN 1
  SAY @20043
  IF ~~ THEN REPLY @1 DO ~AddexperienceParty(100)
GiveItemCreate("%tutu_var%POTN38",LastTalkedToBy,1,0,0)
EscapeArea()~ JOURNAL @20044 EXIT
  IF ~~ THEN REPLY @2 DO ~GiveItemCreate("%tutu_var%POTN38",LastTalkedToBy,1,0,0)
EscapeArea()~ JOURNAL @20044 EXIT
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @20045
  IF ~~ THEN DO ~AddexperienceParty(100)
GiveItemCreate("%tutu_var%POTN38",LastTalkedToBy,1,0,0)
EscapeArea()~ JOURNAL @20044 EXIT
END

IF ~StateCheck(Myself,8192)~ THEN BEGIN 3
  SAY @20046
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

BEGIN ~UBFARM5~

IF ~StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN Charmed
  SAY @20047
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(0)
~ THEN BEGIN Greeting
  SAY @20048
  IF ~~ THEN REPLY @20049 GOTO 1
  IF ~~ THEN REPLY @20050 GOTO 2
  IF ~~ THEN REPLY @20051 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN DO ~EscapeArea()~ JOURNAL @20052 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN DO ~EscapeArea()~ JOURNAL @20052 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @20053
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

BEGIN ~UBWILTON~

IF ~Global("GaveAnkheg","GLOBAL",0)~ THEN BEGIN NotHelpedBrunYet
  SAY @20054
  IF ~~ THEN EXIT
END

IF ~Global("GaveAnkheg","GLOBAL",1)
Global("UBWiltonGaveCloak","GLOBAL",0)~ THEN BEGIN BrunHelped
  SAY @20055
  IF ~~ THEN DO ~GiveItem("%tutu_var%CLCK01",LastTalkedToBy)
SetGlobal("UBWiltonGaveCloak","GLOBAL",1)~ JOURNAL @20056 EXIT
END

IF ~Global("UBWiltonGaveCloak","GLOBAL",1)~ THEN BEGIN Ciao
  SAY @6
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN Charmed
  SAY @20057
  IF ~~ THEN EXIT
END

REPLACE_STATE_TRIGGER %tutu_var%READ4 1 ~NumTimesTalkedToGT(0)~
REPLACE_ACTION_TEXT %tutu_var%CULT3 ~"Cult Wizard"~ ~"CultWizard"~
REPLACE_ACTION_TEXT %tutu_var%CULT3 ~"Cult Archer"~ ~"CultArcher"~