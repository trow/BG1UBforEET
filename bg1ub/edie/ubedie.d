BEGIN ~UBEDIE~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Greeting
  SAY @0
  IF ~~ THEN REPLY @1 DO ~SetGlobal("HelpUBEdie","GLOBAL",1)~ JOURNAL @2 EXIT
  IF ~~ THEN REPLY @3 GOTO NoThanks
  IF ~PartyHasItem("POTN29")~ THEN REPLY @4 GOTO Genius
  IF ~PartyHasItem("POTN37")~ THEN REPLY @5 GOTO Focusing
  IF ~PartyHasItem("POTN43")~ THEN REPLY @6 GOTO Insight
  IF ~~ THEN REPLY @7 GOTO Rude
END

IF ~Global("HelpUBEdie","GLOBAL",1)~ THEN BEGIN Return
  SAY @8
  IF ~~ THEN REPLY @9 GOTO NoThanks
  IF ~~ THEN REPLY @10 GOTO Rude
  IF ~PartyHasItem("POTN29")~ THEN REPLY @4 GOTO Genius
  IF ~PartyHasItem("POTN37")~ THEN REPLY @5 GOTO Focusing
  IF ~PartyHasItem("POTN43")~ THEN REPLY @6 GOTO Insight
  IF ~!PartyHasItem("POTN29")
      !PartyHasItem("POTN37")
      !PartyHasItem("POTN43")~ THEN REPLY @11 EXIT
END

IF ~~ THEN BEGIN Genius
  SAY @12
  IF ~~ THEN DO ~AddexperienceParty(500)
GivePartyGold(50)
TakePartyItem("POTN29")
SetGlobalTimer("UBEdie","GLOBAL",ONE_DAY)
SetGlobal("HelpUBEdie","GLOBAL",2)
SetGlobal("GaveUBEdiePotion","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN Focusing
  SAY @12
  IF ~~ THEN DO ~AddexperienceParty(500)
GivePartyGold(50)
TakePartyItem("POTN37")
SetGlobalTimer("UBEdie","GLOBAL",ONE_DAY) 
SetGlobal("HelpUBEdie","GLOBAL",2)
SetGlobal("GaveUBEdiePotion","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN Insight
  SAY @13
  IF ~~ THEN DO ~AddexperienceParty(500)
GivePartyGold(50)
TakePartyItem("POTN43")
SetGlobalTimer("UBEdie","GLOBAL",ONE_DAY) 
SetGlobal("HelpUBEdie","GLOBAL",2)
SetGlobal("GaveUBEdiePotion","GLOBAL",1)~ EXIT
END

IF ~Global("GaveUBEdiePotion","GLOBAL",1)
GlobalTimerNotExpired("UBEdie","GLOBAL")~ THEN BEGIN Waiting
  SAY #15175 /* ~Please be quiet. I'm trying to study.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~Global("DenyUBEdieHelp","GLOBAL",1)~ THEN BEGIN Waiting
  SAY #15175 /* ~Please be quiet. I'm trying to study.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~GlobalTimerExpired("UBEdie","GLOBAL")~ THEN BEGIN 5 // from:
  SAY @14
  IF ~~ THEN DO ~SetGlobal("GaveUBEdiePotion","GLOBAL",2) EscapeArea()~ EXIT
END

IF ~StateCheck(Myself,8192)~ THEN BEGIN Charmed
  SAY #15178 /* ~I hate tests...~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN Rude
  SAY @15
  IF ~~ THEN DO ~SetGlobal("DenyUBEdieHelp","GLOBAL",1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN NoThanks
  SAY @16
  IF ~~ THEN DO ~SetGlobal("DenyUBEdieHelp","GLOBAL",1)~ EXIT
END