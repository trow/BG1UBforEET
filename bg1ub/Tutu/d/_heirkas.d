BEGIN ~_HEIRKAS~

IF WEIGHT #0 ~NumTimesTalkedTo(0)
!InParty([0.0.0.THIEF])
~ THEN BEGIN 0
  SAY @40078
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~NumTimesTalkedTo(0)
InParty([0.0.0.THIEF])
~ THEN BEGIN 1
  SAY @40079
  IF ~~ THEN JOURNAL @40080 EXIT
END

IF WEIGHT #5 ~Global("HelpPheirkas","GLOBAL",0)
~ THEN BEGIN 2
  SAY @40081
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
PartyHasItem("_CLCK08")
~ THEN BEGIN 3
  SAY @40082
  IF ~~ THEN DO ~SetGlobal("HelpPheirkas","GLOBAL",1)
TakePartyItem("_CLCK08")
GivePartyGold(150)
~ EXIT
END

IF WEIGHT #3 ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
PartyHasItem("_CLCK08")
~ THEN BEGIN 4
  SAY @40083
  IF ~~ THEN DO ~SetGlobal("HelpPheirkas","GLOBAL",1)
TakePartyItem("_CLCK08")
GivePartyGold(200)
~ EXIT
END

IF WEIGHT #4 ~false()~ THEN BEGIN 5
  SAY @40084
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~True()
~ THEN BEGIN 6
  SAY @40085
  IF ~~ THEN EXIT
END