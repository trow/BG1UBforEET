BEGIN ~UBEDIE~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Greeting
  SAY @0
  IF ~~ THEN REPLY @1 DO ~SetGlobal("HelpUBEdie","GLOBAL",1)~ UNSOLVED_JOURNAL @17 EXIT
  IF ~~ THEN REPLY @3 GOTO NoThanks
  IF ~PartyHasItem("%tutu_var%POTN29")~ THEN REPLY @4 GOTO Genius
  IF ~PartyHasItem("%tutu_var%POTN37")~ THEN REPLY @5 GOTO Focusing
  IF ~PartyHasItem("%tutu_var%POTN43")~ THEN REPLY @6 GOTO Insight
  IF ~~ THEN REPLY @7 GOTO Rude
END

IF ~Global("HelpUBEdie","GLOBAL",1)~ THEN BEGIN Return
  SAY @8
  IF ~~ THEN REPLY @9 DO ~EraseJournalEntry(@17)~ SOLVED_JOURNAL @18 GOTO NoThanks
  IF ~~ THEN REPLY @10 DO ~EraseJournalEntry(@17)~ SOLVED_JOURNAL @18 GOTO Rude
  IF ~PartyHasItem("%tutu_var%POTN29")~ THEN REPLY @4 DO ~EraseJournalEntry(@17)~ SOLVED_JOURNAL @19 GOTO Genius
  IF ~PartyHasItem("%tutu_var%POTN37")~ THEN REPLY @5 DO ~EraseJournalEntry(@17)~ SOLVED_JOURNAL @19 GOTO Focusing
  IF ~PartyHasItem("%tutu_var%POTN43")~ THEN REPLY @6 DO ~EraseJournalEntry(@17)~ SOLVED_JOURNAL @19 GOTO Insight
  IF ~!PartyHasItem("%tutu_var%POTN29")
      !PartyHasItem("%tutu_var%POTN37")
      !PartyHasItem("%tutu_var%POTN43")~ THEN REPLY @11 EXIT
END

IF ~~ THEN BEGIN Genius
  SAY @12
  IF ~~ THEN DO ~AddexperienceParty(500)
GivePartyGold(50)
TakePartyItemNum("%tutu_var%POTN29",1)
SetGlobalTimer("UBEdie","GLOBAL",ONE_DAY)
SetGlobal("HelpUBEdie","GLOBAL",2)
SetGlobal("GaveUBEdiePotion","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN Focusing
  SAY @12
  IF ~~ THEN DO ~AddexperienceParty(500)
GivePartyGold(50)
TakePartyItemNum("%tutu_var%POTN37",1)
SetGlobalTimer("UBEdie","GLOBAL",ONE_DAY) 
SetGlobal("HelpUBEdie","GLOBAL",2)
SetGlobal("GaveUBEdiePotion","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN Insight
  SAY @13
  IF ~~ THEN DO ~AddexperienceParty(500)
GivePartyGold(50)
TakePartyItemNum("%tutu_var%POTN43",1)
SetGlobalTimer("UBEdie","GLOBAL",ONE_DAY) 
SetGlobal("HelpUBEdie","GLOBAL",2)
SetGlobal("GaveUBEdiePotion","GLOBAL",1)~ EXIT
END

IF ~Global("GaveUBEdiePotion","GLOBAL",1)
GlobalTimerNotExpired("UBEdie","GLOBAL")~ THEN BEGIN Waiting
  SAY @20022
  IF ~~ THEN DO ~~ EXIT
END

IF ~Global("DenyUBEdieHelp","GLOBAL",1)~ THEN BEGIN Waiting
  SAY @20022
  IF ~~ THEN DO ~~ EXIT
END

IF ~GlobalTimerExpired("UBEdie","GLOBAL")~ THEN BEGIN 5
  SAY @14
  IF ~~ THEN DO ~SetGlobal("GaveUBEdiePotion","GLOBAL",2)
EscapeArea()~ EXIT
END

IF ~StateCheck(Myself,8192)~ THEN BEGIN Charmed
  SAY @20023
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN Rude
  SAY @15
  IF ~~ THEN DO ~SetGlobal("DenyUBEdieHelp","GLOBAL",1)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN NoThanks
  SAY @16
  IF ~~ THEN DO ~SetGlobal("DenyUBEdieHelp","GLOBAL",1)~ EXIT
END