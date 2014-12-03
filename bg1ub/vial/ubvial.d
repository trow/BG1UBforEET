APPEND BERRUN

IF WEIGHT #-1 ~PartyHasItem("MISC85")~ THEN BEGIN Success0a
  SAY @0
  IF ~~ THEN REPLY @1 GOTO Success2
  IF ~~ THEN REPLY @2 GOTO Success3
  IF ~Global("D0TaintedOreQuest","GLOBAL",0)
!PartyHasItem("potn48")
!PartyHasItem("misc87")~ THEN REPLY @3 GOTO Success4
  IF ~Global("D0TaintedOreQuest","GLOBAL",0)
PartyHasItem("potn48")~ THEN REPLY @4 GOTO Success5
  IF ~Global("D0TaintedOreQuest","GLOBAL",0)
!PartyHasItem("potn48")
PartyHasItem("misc87")~ THEN REPLY @5 GOTO Success6
  IF ~GlobalGT("D0TaintedOreQuest","GLOBAL",0)~ THEN REPLY @6 GOTO Success7
END

IF WEIGHT #-1 ~PartyHasItem("SCRL2W")~ THEN BEGIN Success0b
  SAY @0
  IF ~~ THEN REPLY @1 GOTO Success2
  IF ~~ THEN REPLY @2 GOTO Success3
  IF ~Global("D0TaintedOreQuest","GLOBAL",0)
!PartyHasItem("potn48")
!PartyHasItem("misc87")~ THEN REPLY @3 GOTO Success4
  IF ~Global("D0TaintedOreQuest","GLOBAL",0)
PartyHasItem("potn48")~ THEN REPLY @4 GOTO Success5
  IF ~Global("D0TaintedOreQuest","GLOBAL",0)
!PartyHasItem("potn48")
PartyHasItem("misc87")~ THEN REPLY @5 GOTO Success6
  IF ~GlobalGT("D0TaintedOreQuest","GLOBAL",0)~ THEN REPLY @6 GOTO Success7
END

IF ~~ THEN BEGIN Success2
  SAY @7
  IF ~~ THEN DO ~ReputationInc(1)
GivePartyGold(900)
AddexperienceParty(1000)
TakePartyItem("MISC85")
TakePartyItem("SCRL2W")
EscapeArea()~ JOURNAL #19438 /* ~I successfully cleared the Nashkel mines, and was rewarded handsomely for my efforts. 900 gold from Berrun Ghastkill, and the thanks of the entire town. Iron will slowly filter back to the coast now, though transporting it is still a treacherous business. The bandits on the roads will have to be dealt with.~ */ EXIT
END

IF ~~ THEN BEGIN Success3
  SAY @8
  IF ~~ THEN DO ~ReputationInc(1)
GivePartyGold(900)
AddexperienceParty(1000)
TakePartyItem("MISC85")
TakePartyItem("SCRL2W")
EscapeArea()~ JOURNAL #19438 /* ~I successfully cleared the Nashkel mines, and was rewarded handsomely for my efforts. 900 gold from Berrun Ghastkill, and the thanks of the entire town. Iron will slowly filter back to the coast now, though transporting it is still a treacherous business. The bandits on the roads will have to be dealt with.~ */ EXIT
END

IF ~~ THEN BEGIN Success4
  SAY @9
  IF ~~ THEN DO ~ReputationInc(1)
GivePartyGold(900)
AddexperienceParty(1000)
TakePartyItem("MISC85")
TakePartyItem("SCRL2W")
EscapeArea()~ JOURNAL #19438 /* ~I successfully cleared the Nashkel mines, and was rewarded handsomely for my efforts. 900 gold from Berrun Ghastkill, and the thanks of the entire town. Iron will slowly filter back to the coast now, though transporting it is still a treacherous business. The bandits on the roads will have to be dealt with.~ */ EXIT
END

IF ~~ THEN BEGIN Success5
SAY @10
= @11
= @12
= @13
  IF ~~ THEN DO ~SetGlobal("D0TaintedOreQuest","GLOBAL",1)
ReputationInc(1)
GivePartyGold(900)
AddexperienceParty(1000)
TakePartyItem("MISC85")
TakePartyItem("SCRL2W")
EscapeArea()~ JOURNAL #19438 /* ~I successfully cleared the Nashkel mines, and was rewarded handsomely for my efforts. 900 gold from Berrun Ghastkill, and the thanks of the entire town. Iron will slowly filter back to the coast now, though transporting it is still a treacherous business. The bandits on the roads will have to be dealt with.~ */ EXIT
END

IF ~~ THEN BEGIN Success6
SAY @14
= @12
= @13
  IF ~~ THEN DO ~SetGlobal("D0TaintedOreQuest","GLOBAL",1)
ReputationInc(1)
GivePartyGold(900)
AddexperienceParty(1000)
TakePartyItem("MISC85")
TakePartyItem("SCRL2W")
EscapeArea()~ JOURNAL #19438 /* ~I successfully cleared the Nashkel mines, and was rewarded handsomely for my efforts. 900 gold from Berrun Ghastkill, and the thanks of the entire town. Iron will slowly filter back to the coast now, though transporting it is still a treacherous business. The bandits on the roads will have to be dealt with.~ */ EXIT
END

IF ~~ THEN BEGIN Success7
  SAY @15
  IF ~~ THEN DO ~ReputationInc(1)
GivePartyGold(900)
AddexperienceParty(1000)
TakePartyItem("MISC85")
TakePartyItem("SCRL2W")
EscapeArea()~ JOURNAL #19438 /* ~I successfully cleared the Nashkel mines, and was rewarded handsomely for my efforts. 900 gold from Berrun Ghastkill, and the thanks of the entire town. Iron will slowly filter back to the coast now, though transporting it is still a treacherous business. The bandits on the roads will have to be dealt with.~ */ EXIT
END

END


EXTEND_BOTTOM TAEROM 0 4 6 12
  IF ~!Global("D0TaintedOreQuest","GLOBAL",2)
!Global("D0TaintedOreQuest","GLOBAL",4)
PartyHasItem("misc87")~ THEN REPLY @16 GOTO Tainted
END

EXTEND_TOP TAEROM 14 #1
  IF ~!Global("D0TaintedOreQuest","GLOBAL",2)
!Global("D0TaintedOreQuest","GLOBAL",4)
PartyHasItem("misc87")~ THEN REPLY @17 GOTO Tainted
END

REPLACE TAEROM
IF WEIGHT #3 /* Triggers after states #: 13 even though they appear after this state */
~!GlobalTimerExpired("Taerom2","GLOBAL")
Global("MakeArmor","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY #187 /* ~It's not ready as yet.  Perhaps another day or two.  Be patient; quality takes time.~ */
  IF ~~ THEN REPLY #15267 /* ~Could you show us what you have for sale?~ */ DO ~StartStore("Taerum",LastTalkedToBy())~ JOURNAL #5837 /* ~Taerom is making a suit of plate mail out of my ankheg shell.  It will be ready within a tenday.~ */ EXIT
  IF ~~ THEN REPLY @18 JOURNAL #5837 /* ~Taerom is making a suit of plate mail out of my ankheg shell.  It will be ready within a tenday.~ */ EXIT
  IF ~!Global("D0TaintedOreQuest","GLOBAL",2)
!Global("D0TaintedOreQuest","GLOBAL",4)
PartyHasItem("misc87")~ THEN REPLY @16 JOURNAL #5837 /* ~Taerom is making a suit of plate mail out of my ankheg shell.  It will be ready within a tenday.~ */ GOTO Tainted
END
END

APPEND TAEROM
IF ~~ THEN BEGIN Tainted
SAY @19
  IF ~PartyHasItem("potn48")~ THEN REPLY @20 GOTO Tainted2
  IF ~~ THEN REPLY @21 GOTO Tainted3
  IF ~~ THEN REPLY @22 GOTO Tainted3
END

IF ~~ THEN BEGIN Tainted2
SAY @23
  IF ~Global("D0TaintedOreQuest","GLOBAL",3)~ THEN REPLY @24 GOTO Tainted4
  IF ~!Global("D0TaintedOreQuest","GLOBAL",3)~ THEN DO ~SetGlobal("D0TaintedOreQuest","GLOBAL",2)
AddexperienceParty(750)
TakePartyItem("misc87")~ JOURNAL @25 EXIT
END

IF ~~ THEN BEGIN Tainted3
SAY @26
  IF ~Global("D0TaintedOreQuest","GLOBAL",3)~ THEN REPLY @24 GOTO Tainted4
  IF ~!Global("D0TaintedOreQuest","GLOBAL",3)~ THEN DO ~SetGlobal("D0TaintedOreQuest","GLOBAL",2)
AddexperienceParty(750)
TakePartyItem("misc87")~ JOURNAL @25 EXIT
END

IF ~~ THEN BEGIN Tainted4
  SAY @27
  IF ~~ THEN DO ~SetGlobal("D0TaintedOreQuest","GLOBAL",4)
AddexperienceParty(750)
TakePartyItem("misc87")~ JOURNAL @25 EXIT
END
END


EXTEND_BOTTOM THALAN 1
  IF ~Global("D0TaintedOreQuest","GLOBAL",1)
PartyHasItem("potn48")~ THEN REPLY @28 GOTO Examine
  IF ~Global("D0TaintedOreQuest","GLOBAL",2)
PartyHasItem("potn48")~ THEN REPLY @29 GOTO Examine
END

APPEND THALAN
IF ~~ THEN BEGIN Examine
  SAY @30
  IF ~Global("D0TaintedOreQuest","GLOBAL",2)~ THEN DO ~SetGlobal("D0TaintedOreQuest","GLOBAL",4)
AddexperienceParty(750)
TakePartyItem("potn48")~ JOURNAL @31 EXIT
  IF ~!Global("D0TaintedOreQuest","GLOBAL",2)~ THEN DO ~SetGlobal("D0TaintedOreQuest","GLOBAL",3)
AddexperienceParty(750)
TakePartyItem("potn48")~ JOURNAL @31 EXIT
END

END