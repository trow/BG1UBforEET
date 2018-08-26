//HOBGO5 corrections
SET_WEIGHT HOBGO5 6 #-1
ADD_TRANS_TRIGGER HOBGO5 0 ~PartyGoldGT(24)~ DO 1
ADD_TRANS_ACTION HOBGO5 BEGIN 0 END BEGIN 1 END ~TakePartyGold(25)~
ADD_TRANS_ACTION HOBGO5 BEGIN 1 END BEGIN 0 END ~EscapeArea()~
ADD_TRANS_TRIGGER HOBGO5 2 ~PartyGoldGT(24)~ DO 0
ADD_TRANS_ACTION HOBGO5 BEGIN 2 END BEGIN 0 END ~TakePartyGold(25)~
ADD_TRANS_TRIGGER HOBGO5 2 ~CheckStatGT(LastTalkedToBy,15,STR)~ DO 2
REPLACE_TRANS_ACTION HOBGO5 BEGIN 3 END BEGIN 0 END ~EscapeArea()~ ~Enemy()~
ADD_TRANS_ACTION HOBGO5 BEGIN 4 END BEGIN 1 END ~EscapeArea()~

//Typos in triggers
REPLACE_TRIGGER_TEXT AMNISE ~StateCheck(Myself,STATE_CHAMRED)~ ~StateCheck(Myself,STATE_CHARMED)~ //3
REPLACE_TRIGGER_TEXT DELORN ~StateCheck(Myself,STATE_DHARMED)~ ~StateCheck(Myself,STATE_CHARMED)~ //6
REPLACE_TRIGGER_TEXT FRIEND ~CheckState(Myself,STATE_CHARMED)~ ~StateCheck(Myself,STATE_CHARMED)~ //6
REPLACE_TRIGGER_TEXT BJAHEI ~"Kahlid"~ ~"Khalid"~ //5, 8
REPLACE_TRIGGER_TEXT ALATOS ~"Oberon"~ ~"Oberan"~ //13
REPLACE_TRIGGER_TEXT BANDIC ~"Bandcap"4~ ~"Bandcap",4~ //0
REPLACE_TRIGGER_TEXT LOTHAN ~SetGlobal("HelpLothander","GLOBAL",0)~ ~Global("HelpLothander","GLOBAL",0)~ //0
REPLACE_TRIGGER_TEXT LOTHAN ~SetGlobal("HelpLothander","GLOBAL",1)~ ~Global("HelpLothander","GLOBAL",1)~ //10
REPLACE_TRIGGER_TEXT MTOB6 ~SetGlobal("Warning","GLOBAL",1)~ ~Global("Warning","GLOBAL",1)~ //5
REPLACE_TRIGGER_TEXT TEVEN ~SetGlobal("JoinedBandits","GLOBAL",0)~ ~Global("JoinedBandits","GLOBAL",0)~ //0
REPLACE_TRIGGER_TEXT THEREL ~"Daltan"~ ~"Dalton"~ //14
REPLACE_TRIGGER_TEXT VOLO ~"Serevok"~ ~"Sarevok"~ //13
REPLACE_TRIGGER_TEXT JARED ~SetGlobal("HelpJared","GLOBAL",0)~ ~Global("HelpJared","GLOBAL",0)~ //2, 3, 4
REPLACE_TRIGGER_TEXT RAIKEN ~SetGlobal("JoinedBandits","GLOBAL",0)~ ~Global("JoinedBandits","GLOBAL",0)~ //0
REPLACE_TRIGGER_TEXT ITHTYL ~True();~ ~True()~ //10

//Typos in actions
REPLACE_ACTION_TEXT CATTAC ~Attack(NearestEnemyOf(Myself)\([^)]?\)$~ ~Attack(NearestEnemyOf(Myself))\1~ //1, 2
REPLACE_ACTION_TEXT DELTHY ~"GLOABL"~ ~"GLOBAL"~ //17
REPLACE_ACTION_TEXT DOOMSAY ~^Global("doomsayer","GLOBAL",0)~ ~SetGlobal("doomsayer","GLOBAL",0)~ //4
REPLACE_ACTION_TEXT DYNAHE ~"Dynahep"~ ~"Dynahp"~ //31
REPLACE_ACTION_TEXT EDWINJ ~SetGlobal("FindDynaheir","GLOBAL",2)
GiveGoldCreate(500)~ ~SetGlobal("FindDynaheir","GLOBAL",2)
GivePartyGold(500)~ //1
REPLACE_ACTION_TEXT ELDOTP ~(Skie"~ ~("Skie"~ //8
REPLACE_ACTION_TEXT EMERSO ~^Global("EmersonPermission","GLOBAL",1)~ ~SetGlobal("EmersonPermission","GLOBAL",1)~ //4
REPLACE_ACTION_TEXT GARRIC ~"Garrickp"~ ~"Garrip"~ //13
REPLACE_ACTION_TEXT IRON12 ~EscapeArea\([^()]*\)$~ ~EscapeArea()\1~ //4
REPLACE_ACTION_TEXT JAHEIJ ~"KhalidP"~ ~"KhaliP"~ //1
REPLACE_ACTION_TEXT MELICA ~"MISC49,~ ~"MISC49",~ //16
REPLACE_ACTION_TEXT NOBW8 ~^Global("AcceptedJob","GLOBAL",2)~ ~SetGlobal("AcceptedJob","GLOBAL",2)~ //19, 20
REPLACE_ACTION_TEXT PHEIRK ~True()~ ~~ //6
REPLACE_ACTION_TEXT PHEIRKAS ~True()~ ~~ //6
REPLACE_ACTION_TEXT SAFANA ~"Safanap"~ ~"Safanp"~ //16
REPLACE_ACTION_TEXT SHARTE ~"SHARTEEL,~ ~"SHARTEEL"~ //5
REPLACE_ACTION_TEXT SHOAL ~CreateCreature("DROTH",\[2500.500\])~ ~CreateCreature("DROTH",[2500.500]%FACE_0%)~ //6, 7 error on no-TotSC
REPLACE_ACTION_TEXT SONNER ~^Global(HelpJebadoh","GLOBAL",2)~ ~SetGlobal("HelpJebadoh","GLOBAL",2)~ //8
REPLACE_ACTION_TEXT TAMOKO ~FRIENLY_LOWER~ ~FRIENDLY_LOWER~ //23
REPLACE_ACTION_TEXT VICONI ~"viconiap"~ ~"viconp"~ //13

// charm fixes
REPLACE_TRIGGER_TEXT BREVLI ~StateCheck(Myself,STATE_CHARMED)~ ~StateCheck(Myself,8192)
CheckStatGT(Myself,49,45)~ //30

ADD_STATE_TRIGGER FTOBE5 4 ~HasItem("RING01",Myself)~ UNLESS ~Global("DXFtobe5","GLOBAL",0)~

//4
ADD_TRANS_ACTION FTOBE5 BEGIN 4 END BEGIN 0 END ~GiveItem("RING01",LastTalkedToBy)~
UNLESS ~GiveItemCreate("RING10",LastTalkedToBy(),1,0,0)~

REPLACE_TRIGGER_TEXT HALFG4 ~StateCheck(Myself,STATE_CHARMED)~ ~StateCheck(Myself,8192)
HasItem("POTN40",Myself)~ //8

//considers compatibility with Dudley fixes
ADD_STATE_TRIGGER HALFG6 9 ~HasItem("SLNG02",Myself)~ UNLESS ~Global("DXHalfg6b","GLOBAL",0)~
ADD_TRANS_ACTION HALFG6 BEGIN 9 END BEGIN 0 END ~GiveItem("SLNG02",LastTalkedToBy)~ UNLESS ~GiveItemCreate("SLNG02",LastTalkedToBy(),1,0,0)~

REPLACE_TRIGGER_TEXT HENTOL ~StateCheck(Myself,STATE_CHARMED)~ ~StateCheck(Myself,8192)
HasItem("DAGG03",Myself)~ //12
ADD_TRANS_ACTION HENTOL BEGIN 12 END BEGIN 0 END ~SetGlobal("HELPHENTOLD","GLOBAL",1)
GiveItem("DAGG03",LastTalkedToBy)
EscapeArea()~

//considers compatibility with Dudley fixes
ADD_STATE_TRIGGER IRONM2 3 ~CheckStatGT(Myself,24,45)~ UNLESS ~Global("DXIronm2","GLOBAL",0)~
ADD_TRANS_ACTION IRONM2 BEGIN 3 END BEGIN 0 END ~GivePartyGold(25)~ UNLESS ~GivePartyGold(25)~

//considers compatibility with Dudley fixes
ADD_STATE_TRIGGER IRONM3 3 ~CheckStatGT(Myself,24,45)~ UNLESS ~Global("DXIronm3","GLOBAL",0)~
ADD_TRANS_ACTION IRONM3 BEGIN 3 END BEGIN 0 END ~GivePartyGold(25)~ UNLESS ~GivePartyGold(25)~

REPLACE_TRIGGER_TEXT ITHTYL ~StateCheck(Myself,STATE_CHARMED)~ ~StateCheck(Myself,8192)
CheckStatGT(Myself,19,45)~ //1

REPLACE_ACTION_TEXT MAREK ~DisplayString("Marek",20675)~ ~DisplayString(Player1,20675)~

//considers compatibility with Dudley fixes
ADD_STATE_TRIGGER MAREK 5 ~Global("PARTYCURED","GLOBAL",0)~ UNLESS ~Global("MarekMove","GLOBAL",1)~
ADD_TRANS_ACTION MAREK BEGIN 5 END BEGIN 0 END ~GiveItem("POTN47",LastTalkedToBy)
SetGlobal("PARTYCURED","GLOBAL",1)
DisplayString(Player1,20675)
AddexperienceParty(10000)~ UNLESS ~GiveItemCreate("POTN47",LastTalkedToBy(),1,0,0)~

REPLACE_TRIGGER_TEXT MTOB2 ~StateCheck(Myself,STATE_CHARMED)~ ~StateCheck(Myself,8192)
CheckStatGT(Myself,0,45)~ //5


ADD_STATE_TRIGGER NOBL10 6 ~HasItem("AMUL07",Myself)~ UNLESS ~Global("DXNobl10","GLOBAL",0)~

ADD_TRANS_ACTION NOBL10 BEGIN 6 END BEGIN 0 END ~GiveItem("AMUL07",LastTalkedToBy)~ UNLESS ~GiveItemCreate("MISC18",LastTalkedToBy(),1,1,0)~

ADD_STATE_TRIGGER NOBL11 2 ~CheckStatGT(Myself,9,45)~ UNLESS ~Global("DXNobl11","GLOBAL",0)~

ADD_TRANS_ACTION NOBL11 BEGIN 2 END BEGIN 0 END ~GivePartyGold(10)~ UNLESS ~GiveGoldForce(10)~

//considers compatibility with Dudley fixes
ADD_STATE_TRIGGER NOBL4 7 ~CheckStatGT(Myself,19,45)~ UNLESS ~Global("DXNobl4","GLOBAL",0)~
ADD_TRANS_ACTION NOBL4 BEGIN 7 END BEGIN 0 END ~GivePartyGold(20)~ UNLESS ~GiveGoldForce(20)~

REPLACE_TRIGGER_TEXT NOBL8 ~StateCheck(Myself,STATE_CHARMED)~ ~StateCheck(Myself,8192)
HasItem("RING17",Myself)~ //6

REPLACE_TRIGGER_TEXT SMITH ~StateCheck(Myself,STATE_CHARMED)~ ~StateCheck(Myself,8192)
HasItem("CHAN01",Myself)~ //8

//charm restorations
ADD_STATE_TRIGGER MTOB8 2 ~StateCheck(Myself,8192)
CheckStatGT(Myself,0,45)~
ADD_TRANS_ACTION MTOB8 BEGIN 2 END BEGIN 0 END ~GivePartyGold(1)~

ADD_STATE_TRIGGER MTOB9 3 ~StateCheck(Myself,8192)
CheckStatGT(Myself,0,45)~
ADD_TRANS_ACTION MTOB9 BEGIN 3 END BEGIN 0 END ~GivePartyGold(1)~

//misc restorations
REPLACE_STATE_TRIGGER FLAMVAI 0 ~True()~ //changed from False()

ADD_TRANS_ACTION MINEC2 BEGIN 10 END BEGIN 0 END ~TakePartyItem("MISC83")~
