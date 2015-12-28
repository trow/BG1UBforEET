//HOBGO5 corrections
SET_WEIGHT %tutu_var%HOBGO5 6 #-1
ADD_TRANS_TRIGGER %tutu_var%HOBGO5 0 ~PartyGoldGT(24)~ DO 1
ADD_TRANS_ACTION %tutu_var%HOBGO5 BEGIN 0 END BEGIN 1 END ~TakePartyGold(25)~
ADD_TRANS_ACTION %tutu_var%HOBGO5 BEGIN 1 END BEGIN 0 END ~EscapeArea()~
ADD_TRANS_TRIGGER %tutu_var%HOBGO5 2 ~PartyGoldGT(24)~ DO 0
ADD_TRANS_ACTION %tutu_var%HOBGO5 BEGIN 2 END BEGIN 0 END ~TakePartyGold(25)~
ADD_TRANS_TRIGGER %tutu_var%HOBGO5 2 ~CheckStatGT(LastTalkedToBy,15,STR)~ DO 2
REPLACE_TRANS_ACTION %tutu_var%HOBGO5 BEGIN 3 END BEGIN 0 END ~EscapeArea()~ ~Enemy()~ //Tutu
REPLACE_TRANS_ACTION %tutu_var%HOBGO5 BEGIN 3 END BEGIN 0 END ~EscapeAreaDestroy(90)~ ~Enemy()~ //BGT
ADD_TRANS_ACTION %tutu_var%HOBGO5 BEGIN 4 END BEGIN 1 END ~EscapeArea()~

//Typos in triggers
REPLACE_TRIGGER_TEXT %tutu_var%AMNISE ~StateCheck(Myself,STATE_CHAMRED)~ ~StateCheck(Myself,STATE_CHARMED)~ //3
REPLACE_TRIGGER_TEXT %tutu_var%DELORN ~StateCheck(Myself,STATE_DHARMED)~ ~StateCheck(Myself,STATE_CHARMED)~ //6
REPLACE_TRIGGER_TEXT %tutu_var%FRIEND ~CheckState(Myself,STATE_CHARMED)~ ~StateCheck(Myself,STATE_CHARMED)~ //6
REPLACE_TRIGGER_TEXT %tutu_var%BJAHEI ~"Kahlid"~ ~"Khalid"~ //5, 8
REPLACE_TRIGGER_TEXT %tutu_var%ALATOS ~"Oberon"~ ~"Oberan"~ //13
REPLACE_TRIGGER_TEXT %tutu_var%BANDIC ~"Bandcap"4~ ~"Bandcap",4~ //0
REPLACE_TRIGGER_TEXT %tutu_var%LOTHAN ~SetGlobal("HelpLothander","GLOBAL",0)~ ~Global("HelpLothander","GLOBAL",0)~ //0
REPLACE_TRIGGER_TEXT %tutu_var%LOTHAN ~SetGlobal("HelpLothander","GLOBAL",1)~ ~Global("HelpLothander","GLOBAL",1)~ //10
REPLACE_TRIGGER_TEXT %tutu_var%MTOB6 ~SetGlobal("Warning","GLOBAL",1)~ ~Global("Warning","GLOBAL",1)~ //5
REPLACE_TRIGGER_TEXT %tutu_var%TEVEN ~SetGlobal("JoinedBandits","GLOBAL",0)~ ~Global("JoinedBandits","GLOBAL",0)~ //0
REPLACE_TRIGGER_TEXT %tutu_var%THEREL ~"Daltan"~ ~"Dalton"~ //14
REPLACE_TRIGGER_TEXT %tutu_var%VOLO ~"Serevok"~ ~"Sarevok"~ //13
REPLACE_TRIGGER_TEXT %tutu_var%JARED ~SetGlobal("HelpJared","GLOBAL",0)~ ~Global("HelpJared","GLOBAL",0)~ //2, 3, 4
REPLACE_TRIGGER_TEXT %tutu_var%RAIKEN ~SetGlobal("JoinedBandits","GLOBAL",0)~ ~Global("JoinedBandits","GLOBAL",0)~ //0
REPLACE_TRIGGER_TEXT %tutu_var%ITHTYL ~True();~ ~True()~ //10

//Typos in actions
REPLACE_ACTION_TEXT %tutu_var%CATTAC ~Attack(NearestEnemyOf(Myself)\([^)]?\)$~ ~Attack(NearestEnemyOf(Myself))\1~ //1, 2
REPLACE_ACTION_TEXT %tutu_var%DELTHY ~"GLOABL"~ ~"GLOBAL"~ //17
REPLACE_ACTION_TEXT %tutu_var%DOOMSAY ~^Global("doomsayer","GLOBAL",0)~ ~SetGlobal("doomsayer","GLOBAL",0)~ //4
REPLACE_ACTION_TEXT %tutu_var%DYNAHE ~"Dynahep"~ ~"Dynahp"~ //31
REPLACE_ACTION_TEXT %EDWIN_JOINED% ~SetGlobal("FindDynaheir","GLOBAL",2)
GiveGoldCreate(500)~ ~SetGlobal("FindDynaheir","GLOBAL",2)
GivePartyGold(500)~ //1
REPLACE_ACTION_TEXT %ELDOTH_POST% ~(Skie"~ ~("Skie"~ //8
REPLACE_ACTION_TEXT %tutu_var%EMERSO ~^Global("EmersonPermission","GLOBAL",1)~ ~SetGlobal("EmersonPermission","GLOBAL",1)~ //4
REPLACE_ACTION_TEXT %tutu_var%GARRIC ~"Garrickp"~ ~"Garrip"~ //13
REPLACE_ACTION_TEXT %tutu_var%IRON12 ~EscapeArea\([^()]*\)$~ ~EscapeArea()\1~ //4
REPLACE_ACTION_TEXT %JAHEIRA_JOINED% ~"KhalidP"~ ~"KhaliP"~ //1
REPLACE_ACTION_TEXT %tutu_var%MELICA ~"MISC49,~ ~"MISC49",~ //16
REPLACE_ACTION_TEXT %tutu_var%NOBW8 ~^Global("AcceptedJob","GLOBAL",2)~ ~SetGlobal("AcceptedJob","GLOBAL",2)~ //19, 20
REPLACE_ACTION_TEXT %tutu_var%PHEIRK ~True()~ ~~ //6
REPLACE_ACTION_TEXT %tutu_scriptp%HEIRKAS ~True()~ ~~ //6
REPLACE_ACTION_TEXT %tutu_var%SAFANA ~"Safanap"~ ~"Safanp"~ //16
REPLACE_ACTION_TEXT %tutu_var%SHARTE ~"SHARTEEL,~ ~"SHARTEEL"~ //5
REPLACE_ACTION_TEXT %tutu_var%SHOAL ~CreateCreature("DROTH",\[2500.500\])~ ~CreateCreature("DROTH",[2500.500],0)~ //6, 7 error on no-TotSC
REPLACE_ACTION_TEXT %tutu_var%SONNER ~^Global(HelpJebadoh","GLOBAL",2)~ ~SetGlobal("HelpJebadoh","GLOBAL",2)~ //8
REPLACE_ACTION_TEXT %tutu_var%TAMOKO ~FRIENLY_LOWER~ ~FRIENDLY_LOWER~ //23
REPLACE_ACTION_TEXT %tutu_scriptbg%VICONI ~"viconiap"~ ~"viconp"~ //13

//charm fixes
REPLACE_TRIGGER_TEXT %tutu_var%BREVLI ~StateCheck(Myself,STATE_CHARMED)~ ~StateCheck(Myself,8192)
CheckStatGT(Myself,49,45)~ //30


//considers BGT compatibility
ADD_STATE_TRIGGER %tutu_var%FTOBE5 4 ~HasItem("%tutu_var%RING01",Myself)~ UNLESS ~HasItem("RING01",Myself)~
ADD_TRANS_ACTION %tutu_var%FTOBE5 BEGIN 4 END BEGIN 0 END ~GiveItem("%tutu_var%RING01",LastTalkedToBy)~ UNLESS ~GiveItem("RING01",LastTalkedToBy)~  


REPLACE_TRIGGER_TEXT %tutu_var%HALFG4 ~StateCheck(Myself,STATE_CHARMED)~ ~StateCheck(Myself,8192)
HasItem("%tutu_var%POTN40",Myself)~ //8

//considers BGT compatibility 
ADD_STATE_TRIGGER %tutu_var%HALFG6 9 ~HasItem("%tutu_var%SLNG02",Myself)~ UNLESS ~HasItem("SLNG02",Myself)~
ADD_TRANS_ACTION %tutu_var%HALFG6 BEGIN 9 END BEGIN 0 END ~GiveItem("%tutu_var%SLNG02",LastTalkedToBy)~ UNLESS ~GiveItem("SLNG02",LastTalkedToBy)~

//considers BGT and BGEE compatibility 
ADD_STATE_TRIGGER %tutu_var%HENTOL %HentoldState12% ~HasItem("%tutu_var%DAGG03",Myself)~ UNLESS ~HasItem("DAGG03",Myself)~
REPLACE_TRANS_ACTION %tutu_var%HENTOL BEGIN %HentoldState12% END BEGIN 0 END ~GiveItem("%tutu_var%DAGG03",LastTalkedToBy)~ ~SetGlobal("HelpHentold","GLOBAL",1) GiveItem("DAGG03",LastTalkedToBy) EscapeArea()~ UNLESS ~SetGlobal("HelpHentold","GLOBAL",1)~
ADD_TRANS_ACTION %tutu_var%HENTOL BEGIN %HentoldState12% END BEGIN 0 END ~SetGlobal("HELPHENTOLD","GLOBAL",1)
GiveItem("%tutu_var%DAGG03",LastTalkedToBy)
EscapeArea()~ UNLESS ~GiveItem("DAGG03",LastTalkedToBy)~

//considers BGT compatibility 
ADD_STATE_TRIGGER %tutu_var%IRONM2 3 ~CheckStatGT(Myself,24,45)~ UNLESS ~Global("A6Charmed","LOCALS",0)~
ADD_TRANS_ACTION %tutu_var%IRONM2 BEGIN 3 END BEGIN 0 END ~GivePartyGold(25)~ UNLESS ~GiveGoldForce(25)~

//considers BGT compatibility 
ADD_STATE_TRIGGER %tutu_var%IRONM3 3 ~CheckStatGT(Myself,24,45)~ UNLESS ~Global("A6Charmed","LOCALS",0)~
ADD_TRANS_ACTION %tutu_var%IRONM3 BEGIN 3 END BEGIN 0 END ~GivePartyGold(25)~ UNLESS ~GiveGoldForce(25)~


REPLACE_TRIGGER_TEXT %tutu_var%ITHTYL ~StateCheck(Myself,STATE_CHARMED)~ ~StateCheck(Myself,8192)
CheckStatGT(Myself,19,45)~ //1

//considers BGT compatibility 
ADD_STATE_TRIGGER %tutu_var%MAREK 5 ~Global("PARTYCURED","GLOBAL",0)~ 
ADD_TRANS_ACTION %tutu_var%MAREK BEGIN 5 END BEGIN 0 END ~GiveItem("%tutu_var%POTN47",LastTalkedToBy)
DisplayString(Player1,20675)
SetGlobal("PARTYCURED","GLOBAL",1)
AddexperienceParty(10000)~ UNLESS ~SetGlobal("PartyCured","GLOBAL",1)~

REPLACE_TRIGGER_TEXT %tutu_var%MTOB2 ~StateCheck(Myself,STATE_CHARMED)~ ~StateCheck(Myself,8192)
CheckStatGT(Myself,0,45)~ //5


//considers BGT compatibility
ADD_STATE_TRIGGER %tutu_var%NOBL10 6 ~HasItem("%tutu_var%AMUL07",Myself)~ UNLESS ~HasItem("AMUL07",Myself)~
ADD_TRANS_ACTION %tutu_var%NOBL10 BEGIN 6 END BEGIN 0 END ~GiveItem("%tutu_var%AMUL07",LastTalkedToBy)~ UNLESS ~GiveItem("AMUL07",LastTalkedToBy)~

//considers BGT compatibility
ADD_STATE_TRIGGER %tutu_var%NOBL11 2 ~CheckStatGT(Myself,9,45)~ UNLESS ~Global("A6Charmed","LOCALS",0)~
ADD_TRANS_ACTION %tutu_var%NOBL11 BEGIN 2 END BEGIN 0 END ~GivePartyGold(10)~ UNLESS ~GiveGoldForce(10)~

//considers BGT compatibility 
ADD_STATE_TRIGGER %tutu_var%NOBL4 7 ~CheckStatGT(Myself,19,45)~ UNLESS ~Global("A6Charmed","LOCALS",0)~
ADD_TRANS_ACTION %tutu_var%NOBL4 BEGIN 7 END BEGIN 0 END ~GivePartyGold(20)~ UNLESS ~GiveGoldForce(20)~

REPLACE_TRIGGER_TEXT %tutu_var%NOBL8 ~StateCheck(Myself,STATE_CHARMED)~ ~StateCheck(Myself,8192)
HasItem("%tutu_var%RING17",Myself)~ //6

REPLACE_TRIGGER_TEXT %tutu_var%SMITH ~StateCheck(Myself,STATE_CHARMED)~ ~StateCheck(Myself,8192)
HasItem("%tutu_var%CHAN01",Myself)~ //8

//charm restorations
ADD_STATE_TRIGGER %tutu_var%MTOB8 2 ~StateCheck(Myself,8192)
CheckStatGT(Myself,0,45)~
ADD_TRANS_ACTION %tutu_var%MTOB8 BEGIN 2 END BEGIN 0 END ~GivePartyGold(1)~

ADD_STATE_TRIGGER %tutu_var%MTOB9 3 ~StateCheck(Myself,8192)
CheckStatGT(Myself,0,45)~
ADD_TRANS_ACTION %tutu_var%MTOB9 BEGIN 3 END BEGIN 0 END ~GivePartyGold(1)~

//misc restorations
REPLACE_STATE_TRIGGER %tutu_var%FLAMVAI 0 ~True()~ //changed from False()

//considers BGT compatibility 
ADD_TRANS_ACTION %tutu_var%MINEC2 BEGIN 10 END BEGIN 0 END ~TakePartyItem("%tutu_scriptbg%MISC83")~ UNLESS ~TakePartyItem("BGMISC83")~