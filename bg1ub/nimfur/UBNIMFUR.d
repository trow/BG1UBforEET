BEGIN ~UBNIMFUR~ // non-zero flags may indicate non-pausing dialogue

IF ~Global("UBNimFight","%Larswood%",4) GlobalGT("UBNimDogsDead","%Larswood%",0) GlobalLT("UBNimDogsDead","%Larswood%",3)~ THEN BEGIN 0 // from:
  SAY @1   // ~Fine lot of help you were. My best purebred hunting hounds lay dead and bleeding. Honestly, you adventuring types always seem to fight better as bandits than as bodyguards.~ 
  IF ~~ THEN DO ~SetGlobal("UBNimFight","%Larswood%",5) AddexperienceParty(100)~ JOURNAL @7 EXIT
END

IF ~Global("UBNimFight","%Larswood%",4) Global("UBNimDogsDead","%Larswood%",3)~ THEN BEGIN 1 // from:
  SAY @2   // ~Hmph. You were in my way more than anything. Now just look at this mess... They were purebreeds, I'll have you know.~ 
  IF ~~ THEN DO ~SetGlobal("UBNimFight","%Larswood%",5)~ JOURNAL @8 EXIT
END

IF ~Global("UBNimFight","%Larswood%",4) Global("UBNimDogsDead","%Larswood%",0)~ THEN BEGIN 2 // from:
  SAY @3   // ~Thank you for your timely assistance. They're a fine breed of hunting dog, aren't they? Purebreds. Here, take this scroll of animal summoning as a token of my appreciation.~ 
  IF ~~ THEN DO ~SetGlobal("UBNimFight","%Larswood%",5) AddexperienceParty(300) GiveItem("ubscp402",LastTalkedToBy())~ JOURNAL @9 EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 3 // from:
  SAY @4   // ~I don't recommend coming between an elven hunter and her hounds, friend.~ 
  IF ~~ THEN DO ~~ EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 4 // from:
  SAY @5   // ~I spend too much of my time hunting to care about the world of politics.~
  IF ~~ THEN DO ~~ EXIT
END

IF WEIGHT #0 ~NumTimesTalkedTo(0)~ THEN BEGIN 5 // from:
    SAY @6   // ~Tua amin! Help! These foul beasts are attacking my hounds!~
    IF ~~ THEN DO ~SetGlobal("UBNimFight","%Larswood%",1)~ EXIT
END
