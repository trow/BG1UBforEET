BEGIN ~_BART8~

IF ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN BEGIN 0
  SAY @40000
  IF ~~ THEN REPLY @40001 DO ~StartStore("_tav0705",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @40002 DO ~~ EXIT
END

IF ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN BEGIN 1
  SAY @40003
  IF ~~ THEN REPLY @40001 DO ~StartStore("_tav0705",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @40002 DO ~~ EXIT
END

IF ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN BEGIN 2
  SAY @40004
  IF ~~ THEN EXIT
END