
REPLACE_STATE_TRIGGER %tutu_var%ARKION 6 ~Global("HelpArkion","GLOBAL",1)~


APPEND %tutu_var%ARKION
IF WEIGHT #0 ~Global("HelpArkion","GLOBAL",0)
PartyHasItem("%tutu_scriptbg%MISC79")~ THEN BEGIN EitherBody
  SAY @0
  IF ~PartyHasItem("%tutu_scriptbg%MISC79")~ THEN DO ~SetGlobal("HelpArkion","GLOBAL",1) TakePartyItem("%tutu_scriptbg%MISC79") GivePartyGold(250) AddexperienceParty(1800)~ EXIT
END

IF WEIGHT #0 ~Global("HelpArkion","GLOBAL",0)
PartyHasItem("UBFEBODY")~ THEN BEGIN NobleBody
  SAY @16
  IF ~~ THEN EXIT
END
END





/* Extentions of the Scar quest regarding playability:
- if the PC declines to say his name or to work for Scar at the bridge, he can now do so when he sees Scar in front of the FF headquarters.
-talking to Eltan directly won't kill Scar's quests: The PC has the choice to finish his work for Scar, first. Eltan's quest will work as usual when Scar brings the PC to him.

*/


/* LORD ELTAN
 If the PC talked to Lord Eltan directly, Scar will disappear and all his quests will be lost. Not any more: */

REPLACE_STATE_TRIGGER %tutu_var%DELTAN 0 ~~

APPEND %tutu_var%DELTAN
IF WEIGHT #-1
~Global("HelpEltan","GLOBAL",0)~ THEN not_yet
SAY @17
+ ~GlobalLT("ScarMission","GLOBAL",5)~ + @18 EXIT
+ ~GlobalLT("ScarMission","GLOBAL",5)~ + @19 + 0
+ ~GlobalGT("ScarMission","GLOBAL",4)~ + @20 EXIT
+ ~GlobalGT("ScarMission","GLOBAL",4)~ + @21 + 0
END
END //APPEND




/* PC can tell Scar who s/he is later 
- if the PC declines to say his name or to work for Scar at the bridge, he can now do so when he sees Scar in front of the FF headquarters.*/


ADD_TRANS_ACTION %tutu_var%SCAR BEGIN 1 END BEGIN END ~SetGlobal("UB_ScarMission","GLOBAL",1)~

ADD_TRANS_ACTION %tutu_var%SCAR BEGIN 3 END BEGIN END ~SetGlobal("UB_ScarMission","GLOBAL",2)~ 

EXTEND_BOTTOM %tutu_var%SCAR 19
+ ~Global("UB_ScarMission","GLOBAL",1)~ + @22 DO ~SetGlobal("UB_ScarMission","GLOBAL",0)~ + 2
+ ~Global("UB_ScarMission","GLOBAL",2)~ + @23 DO ~SetGlobal("UB_ScarMission","GLOBAL",0)~ + 4
END



/* If the PC talks to Scar again before defeating the doppelgangers in the seven suns, he will lose the job: not any more 

BGT already adds this!

*/

EXTEND_BOTTOM %tutu_var%SCAR 14
+ ~GlobalLT("KilledDopple","GLOBAL",5)~ + @24 + more_battle
END

APPEND %tutu_var%SCAR
IF ~~ THEN more_battle
SAY @25
IF ~~ THEN EXIT
END

END //APPEND


/* If the PC talks to Scar before killing the Oger mage, the quest will be gone: Not any more. */

REPLACE_TRANS_ACTION %tutu_var%SCAR
BEGIN 31 END
BEGIN 0 END
~SetGlobal("ScarMission","GLOBAL",4)~ ~~


EXTEND_BOTTOM %tutu_var%Scar 31
+ ~!Dead("SewerOgre")~ + @26 + 37
+ ~!Dead("SewerOgre")~ + @27 + 36
END



/* COSMETIC TWEAK States 2 and 10 miss some polite answer e.g. for paladins */

EXTEND_BOTTOM %tutu_var%Scar 2
++ @21 + 4
END 

EXTEND_BOTTOM %tutu_var%Scar 10
++ @28 + 12
END




/* another addition: If the PC doesn't have the ring of the girl the first time he reports he won't have the chance to bring it later: not any more.
Also tweaked to make the ring unique.  
Combined with the existing (v12) "bring the dead girl's body" quest extention.


New custom ring: UBSCARIN.itm in AR0226 ESewers */

REPLACE_TRANS_TRIGGER %tutu_var%Scar BEGIN 32 END BEGIN 1 END ~PartyHasItem("%tutu_var%RING19")~ ~False()~ 


EXTEND_BOTTOM %tutu_var%Scar 32
  IF ~PartyHasItem("UBSCARIN")~ THEN REPLY @29 GOTO 34_UB
+ ~!PartyHasItem("UBSCARIN")~ + @30 DO ~SetGlobal("UBScarRingFetch","LOCALS",1)~ + scar_ring
+ ~PartyHasItem("UBFEBODY") PartyHasItem("UBSCARIN")~ + @31 DO ~TakePartyItem("UBSCARIN")~ + AlreadyHaveBody
+ ~PartyHasItem("UBFEBODY") !PartyHasItem("UBSCARIN")~ + @32 DO ~TakePartyItem("UBFEBODY")~ + scar_only_body
END

APPEND %tutu_var%Scar
IF ~~ THEN scar_only_body
SAY @33
++ @30 DO ~SetGlobal("UBScarRingFetch","LOCALS",2)~ + scar_ring
  IF ~~ THEN REPLY @34 GOTO 33
END


IF ~~ THEN scar_ring
SAY @35
IF ~~ THEN EXIT
END


IF WEIGHT #0 ~GlobalGT("UBScarRingFetch","LOCALS",0)~ THEN BEGIN RingFetchQuestReturn
  SAY @36
+ ~Dead("SewerOgre") !PartyHasItem("UBSCARIN")~ + @37 EXIT
+ ~Global("UBScarRingFetch","LOCALS",1) PartyHasItem("UBSCARIN")~ + @38 DO ~SetGlobal("UBScarRingFetch","LOCALS",0)~ + 34_UB
+ ~Global("UBScarRingFetch","LOCALS",2) PartyHasItem("UBSCARIN")~ + @38 DO ~SetGlobal("UBScarRingFetch","LOCALS",0)~ + 34
++ @26 DO ~SetGlobal("UBScarRingFetch","LOCALS",0)~ + 33
END

END //APPEND



REPLACE_TRANS_ACTION %tutu_var%SCAR
BEGIN 34 END
BEGIN 0 END
~TakePartyItem("%tutu_var%RING19")~ ~TakePartyItem("UBSCARIN")~


APPEND %tutu_var%SCAR
IF ~~ THEN BEGIN 34_UB
  SAY @1
  IF ~PartyHasItem("UBFEBODY")~ THEN DO ~TakePartyItem("UBSCARIN")~ REPLY @2 GOTO AlreadyHaveBody
  IF ~!PartyHasItem("UBFEBODY")~ THEN DO ~TakePartyItem("UBSCARIN")~ REPLY @3 GOTO NoWay
  IF ~!PartyHasItem("UBFEBODY")~ THEN DO ~TakePartyItem("UBSCARIN")~ REPLY @4 GOTO WillReturnBody
  IF ~!PartyHasItem("UBFEBODY")~ THEN DO ~TakePartyItem("UBSCARIN")~ REPLY @5 GOTO NoWay
END

IF ~~ THEN BEGIN AlreadyHaveBody
  SAY @6
  COPY_TRANS %tutu_var%SCAR 34
END

IF ~~ THEN BEGIN NoWay
  SAY @7
  COPY_TRANS %tutu_var%SCAR 33
END

IF ~~ THEN BEGIN WillReturnBody
  SAY @8
  IF ~~ THEN DO ~SetGlobal("ScarBodyFetch","GLOBAL",1)~ EXIT
END

IF WEIGHT #0 ~Global("ScarBodyFetch","GLOBAL",1)~ THEN BEGIN BodyFetchQuestReturn
  SAY @9
  IF ~PartyHasItem("UBFEBODY")~ THEN REPLY @10 GOTO AlreadyHaveBody
  IF ~!PartyHasItem("UBFEBODY")~ THEN REPLY @11 GOTO NoBodyYet
  IF ~~ THEN REPLY @12 GOTO NoWay
END

IF WEIGHT #0 ~Global("ScarBodyFetch","GLOBAL",2)
PartyHasItem("UBFEBODY")~ THEN BEGIN ChangedMind
  SAY @13
  IF ~~ THEN REPLY @14 GOTO AlreadyHaveBody
END

IF ~~ THEN BEGIN NoBodyYet
  SAY @15
  IF ~~ THEN EXIT
END
END

REPLACE_TRANS_ACTION %tutu_var%SCAR
BEGIN AlreadyHaveBody END
BEGIN 0 END
~TakePartyItem("%tutu_var%RING19")~ ~TakePartyItem("UBFEBODY") SetGlobal("ScarBodyFetch","GLOBAL",3)~

REPLACE_TRANS_ACTION %tutu_var%SCAR
BEGIN NoWay END
BEGIN 0 END
~GiveGoldForce(1000)
AddexperienceParty(2000)~
~GiveGoldForce(500)
AddexperienceParty(3000)
SetGlobal("ScarBodyFetch","GLOBAL",2)~