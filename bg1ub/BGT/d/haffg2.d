BEGIN ~HAFFG2~

IF ~NumTimesTalkedTo(0)
~ THEN BEGIN 0
  SAY @40048
  IF ~ReactionGT(LastTalkedToBy(),HOSTILE_UPPER)~ THEN REPLY @40049 GOTO 1
  IF ~ReactionLT(LastTalkedToBy(),NEUTRAL_LOWER)~ THEN REPLY @40049 GOTO 2
  IF ~ReactionLT(LastTalkedToBy(),FRIENDLY_LOWER)~ THEN REPLY @40050 GOTO 3
  IF ~ReactionGT(LastTalkedToBy(),NEUTRAL_UPPER)~ THEN REPLY @40050 GOTO 4
  IF ~~ THEN REPLY @40051 GOTO 5
  IF ~ReactionGT(LastTalkedToBy(),HOSTILE_UPPER)~ THEN REPLY @40052 GOTO 6
  IF ~ReactionLT(LastTalkedToBy(),NEUTRAL_LOWER)~ THEN REPLY @40052 GOTO 7
END

IF ~~ THEN BEGIN 1
  SAY @40053
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @40054
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @40055
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @40056
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @40057
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @40058
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY @40059
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY @40060 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
  SAY @40061
  IF ~~ THEN EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 10
  SAY @40062
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11
  SAY @40063
  IF ~~ THEN EXIT
END