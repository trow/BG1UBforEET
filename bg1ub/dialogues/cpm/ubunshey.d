//Restored unshey's dialogue, by Salk
// Author: Salk, modified by AstroBryGuy

ADD_STATE_TRIGGER ~%tutu_var%unshey~ 2 ~GlobalLT("UBHelpUnshey","GLOBAL",2)~
ADD_STATE_TRIGGER ~%tutu_var%unshey~ 4 ~GlobalLT("UBHelpUnshey","GLOBAL",2)~
ADD_STATE_TRIGGER ~%tutu_var%unshey~ 5 ~GlobalLT("UBHelpUnshey","GLOBAL",2)~

REPLACE_STATE_TRIGGER ~%tutu_var%unshey~ 3 ~GlobalLT("UBHelpUnshey","GLOBAL",2) !PartyHasItem("%tutu_var%BELT04") PartyHasItem("%tutu_var%BELT05") !HasItemEquiped("%tutu_var%BELT05",Player1) !HasItemEquiped("%tutu_var%BELT05",Player2)
!HasItemEquiped("%tutu_var%BELT05",Player3)
!HasItemEquiped("%tutu_var%BELT05",Player4)
!HasItemEquiped("%tutu_var%BELT05",Player5)
!HasItemEquiped("%tutu_var%BELT05",Player6)~ 
REPLACE_STATE_TRIGGER ~%tutu_var%unshey~ 7 ~Global("UBHelpUnshey","GLOBAL",3)~

ADD_TRANS_ACTION ~%tutu_var%unshey~ BEGIN 4 5 END BEGIN 0 END ~SetGlobal("UBHelpUnshey","GLOBAL",2)~ 
ADD_TRANS_ACTION ~%tutu_var%unshey~ BEGIN 6 END BEGIN 0 END ~SetGlobal("UBHelpUnshey","GLOBAL",3) GiveItemCreate("UBUNBOOK",LastTalkedToBy,0,0,0)~ 

SET_WEIGHT ~%tutu_var%unshey~ 3 #-1

APPEND ~%tutu_var%unshey~
  IF WEIGHT #-1 ~Global("UBHelpUnshey","GLOBAL",2) HasItemEquiped("%tutu_var%BELT05",LastTalkedToBy)~ THEN BEGIN UBUnsheyGenderGirdle
  SAY @0
    IF ~~ THEN  REPLY @1 GOTO 6
    IF ~~ THEN  REPLY @2 EXIT
  END
END
