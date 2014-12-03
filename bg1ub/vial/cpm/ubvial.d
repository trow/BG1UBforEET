APPEND %tutu_var%BERRUN

IF WEIGHT #-1 ~PartyHasItem("%tutu_var%MISC85")~ THEN BEGIN Success0a
  SAY @0
  IF ~~ THEN REPLY @1 GOTO Success2
  IF ~~ THEN REPLY @2 GOTO Success3
  IF ~Global("D0TaintedOreQuest","GLOBAL",0)
!PartyHasItem("%tutu_var%POTN48")
!PartyHasItem("%tutu_var%MISC87")~ THEN REPLY @3 GOTO Success4
  IF ~Global("D0TaintedOreQuest","GLOBAL",0)
PartyHasItem("%tutu_var%POTN48")~ THEN REPLY @4 GOTO Success5
  IF ~Global("%tutu_var%D0TaintedOreQuest","GLOBAL",0)
!PartyHasItem("%tutu_var%POTN48")
PartyHasItem("%tutu_var%MISC87")~ THEN REPLY @5 GOTO Success6
  IF ~GlobalGT("D0TaintedOreQuest","GLOBAL",0)~ THEN REPLY @6 GOTO Success7
END

IF WEIGHT #-1 ~PartyHasItem("%tutu_var%SCRL2W")~ THEN BEGIN Success0b
  SAY @0
  IF ~~ THEN REPLY @1 GOTO Success2
  IF ~~ THEN REPLY @2 GOTO Success3
  IF ~Global("D0TaintedOreQuest","GLOBAL",0)
!PartyHasItem("%tutu_var%POTN48")
!PartyHasItem("%tutu_var%MISC87")~ THEN REPLY @3 GOTO Success4
  IF ~Global("D0TaintedOreQuest","GLOBAL",0)
PartyHasItem("%tutu_var%POTN48")~ THEN REPLY @4 GOTO Success5
  IF ~Global("D0TaintedOreQuest","GLOBAL",0)
!PartyHasItem("%tutu_var%POTN48")
PartyHasItem("%tutu_var%MISC87")~ THEN REPLY @5 GOTO Success6
  IF ~GlobalGT("D0TaintedOreQuest","GLOBAL",0)~ THEN REPLY @6 GOTO Success7
END

IF ~~ THEN BEGIN Success2
  SAY @7
  COPY_TRANS %tutu_var%BERRUN 15
END

IF ~~ THEN BEGIN Success3
  SAY @8
  COPY_TRANS %tutu_var%BERRUN 15
END

IF ~~ THEN BEGIN Success4
  SAY @9
  COPY_TRANS %tutu_var%BERRUN 15
END

IF ~~ THEN BEGIN Success5
  SAY @10
  IF ~~ THEN GOTO Success5a
END

IF ~~ THEN BEGIN Success5a
  SAY @11
  IF ~~ THEN UNSOLVED_JOURNAL @32 GOTO Success5b
END

IF ~~ THEN BEGIN Success5b
SAY @12
= @13
  COPY_TRANS %tutu_var%BERRUN 15
END

IF ~~ THEN BEGIN Success6
SAY @14
  IF ~~ THEN UNSOLVED_JOURNAL @33 GOTO Success6a
END

IF ~~ THEN BEGIN Success6a
SAY @12
= @13
  COPY_TRANS %tutu_var%BERRUN 15
END

IF ~~ THEN BEGIN Success7
  SAY @15
  COPY_TRANS %tutu_var%BERRUN 15
END

END

ADD_TRANS_ACTION %tutu_var%BERRUN
BEGIN Success5 Success6 END
BEGIN 0 END
~SetGlobal("D0TaintedOreQuest","GLOBAL",1)~


EXTEND_BOTTOM %tutu_var%TAEROM 0 4 6 12
  IF ~!Global("D0TaintedOreQuest","GLOBAL",2)
!Global("D0TaintedOreQuest","GLOBAL",4)
PartyHasItem("%tutu_var%MISC87")~ THEN REPLY @16 GOTO Tainted
END

EXTEND_TOP %tutu_var%TAEROM 14 #1
  IF ~!Global("D0TaintedOreQuest","GLOBAL",2)
!Global("D0TaintedOreQuest","GLOBAL",4)
PartyHasItem("%tutu_var%MISC87")~ THEN REPLY @17 GOTO Tainted
END

REPLACE %tutu_var%TAEROM
IF WEIGHT #3 /* Triggers after states #: 13 even though they appear after this state */
~!GlobalTimerExpired("Taerom2","GLOBAL")
Global("MakeArmor","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY @20165
  IF ~~ THEN REPLY @20166 DO ~StartStore("%tutu_var%TAERUM",LastTalkedToBy())~ JOURNAL @20001 EXIT
  IF ~~ THEN REPLY @18 JOURNAL @20001 EXIT
  IF ~!Global("D0TaintedOreQuest","GLOBAL",2)
!Global("D0TaintedOreQuest","GLOBAL",4)
PartyHasItem("%tutu_var%MISC87")~ THEN REPLY @16 JOURNAL @20001 GOTO Tainted
END
END

APPEND %tutu_var%TAEROM
IF ~~ THEN BEGIN Tainted
SAY @19
  IF ~PartyHasItem("%tutu_var%POTN48")~ THEN REPLY @20 GOTO Tainted2
  IF ~~ THEN REPLY @21 GOTO Tainted3
  IF ~~ THEN REPLY @22 GOTO Tainted3
END

IF ~~ THEN BEGIN Tainted2
SAY @23
  IF ~Global("D0TaintedOreQuest","GLOBAL",3)~ THEN REPLY @24 GOTO Tainted4
  IF ~!Global("D0TaintedOreQuest","GLOBAL",3)~ THEN DO ~SetGlobal("D0TaintedOreQuest","GLOBAL",2)
AddexperienceParty(750)
TakePartyItem("%tutu_var%MISC87")
EraseJournalEntry(@33)~ SOLVED_JOURNAL @34 EXIT
END

IF ~~ THEN BEGIN Tainted3
SAY @26
  IF ~Global("D0TaintedOreQuest","GLOBAL",3)~ THEN REPLY @24 GOTO Tainted4
  IF ~!Global("D0TaintedOreQuest","GLOBAL",3)~ THEN DO ~SetGlobal("D0TaintedOreQuest","GLOBAL",2)
AddexperienceParty(750)
TakePartyItem("%tutu_var%MISC87")
EraseJournalEntry(@33)~ SOLVED_JOURNAL @34 EXIT
END

IF ~~ THEN BEGIN Tainted4
  SAY @27
  IF ~~ THEN DO ~SetGlobal("D0TaintedOreQuest","GLOBAL",4)
AddexperienceParty(750)
TakePartyItem("%tutu_var%MISC87")
EraseJournalEntry(@33)~ SOLVED_JOURNAL @34 EXIT
END
END


EXTEND_BOTTOM %tutu_var%THALAN 1
  IF ~Global("D0TaintedOreQuest","GLOBAL",1)
PartyHasItem("%tutu_var%POTN48")~ THEN REPLY @28 GOTO Examine
  IF ~Global("D0TaintedOreQuest","GLOBAL",2)
PartyHasItem("%tutu_var%POTN48")~ THEN REPLY @29 GOTO Examine
END

APPEND %tutu_var%THALAN
IF ~~ THEN BEGIN Examine
  SAY @30
  IF ~Global("D0TaintedOreQuest","GLOBAL",2)~ THEN DO ~SetGlobal("D0TaintedOreQuest","GLOBAL",4)
AddexperienceParty(750)
TakePartyItem("%tutu_var%POTN48")
EraseJournalEntry(@32)
EraseJournalEntry(@33)~ SOLVED_JOURNAL @35 EXIT
  IF ~!Global("D0TaintedOreQuest","GLOBAL",2)~ THEN DO ~SetGlobal("D0TaintedOreQuest","GLOBAL",3)
AddexperienceParty(750)
TakePartyItem("%tutu_var%POTN48")
EraseJournalEntry(@32)
EraseJournalEntry(@33)~ SOLVED_JOURNAL @35 EXIT
END
END

