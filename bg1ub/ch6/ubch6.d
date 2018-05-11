/* Add unused dialogue states from TETHTO.DLG to TETHTO2.DLG */
APPEND ~%tutu_var%tethto2~
  IF WEIGHT #-2 ~Global("Chapter","GLOBAL",6) Global("Arrested","GLOBAL",0) Global("UBTethtorilCh6","GLOBAL",0) !Dead("Rieltar")~ THEN BEGIN UBTethtorilCh6
  SAY @1
    IF ~~ THEN DO ~SetGlobal("UBTethtorilCh6","GLOBAL",1) EscapeArea()~ EXIT
  END
  IF WEIGHT #-1 ~Global("Chapter","GLOBAL",6) Global("Arrested","GLOBAL",0) GlobalLT("UBTethtorilCh6","GLOBAL",2) Dead("Rieltar")~ THEN BEGIN UBTethtorilSurrender
  SAY @2
    IF ~~ THEN REPLY @3
      DO ~SetGlobal("UBTethtorilCh6","GLOBAL",2)~ GOTO UBTethtorilNoSurrender
    IF ~~ THEN REPLY @4
      DO ~SetGlobal("UBTethtorilCh6","GLOBAL",2)~ GOTO UBTethtorilNoSurrender
	IF ~~ THEN REPLY @5
      DO ~SetGlobal("UBTethtorilCh6","GLOBAL",2) CreateCreature("%tutu_var%WATCH6",[1050.850]%FACE_0%) ActionOverride("%tutu_var%WATCH6",MoveToObject(Player1)) ActionOverride("%tutu_var%WATCH6",Dialogue(Player1))~ EXIT
  END
  IF ~~ THEN BEGIN UBTethtorilNoSurrender
  SAY @6
    IF ~~ THEN DO ~CreateCreature("%tutu_var%WATCH6",[1050.850]%FACE_0%) ActionOverride("%tutu_var%WATCH6",MoveToObject(Player1)) ActionOverride("%tutu_var%WATCH6",Dialogue(Player1)) EscapeArea()~ EXIT
  END
END

/* Gatewarden shouldn't accuse CHARNAME of killing Thaldorn */
REPLACE_SAY ~%tutu_var%gatewa2~ 2 @7

/* Replies to WATCH6.CRE won't include reference to Ulraunt and Tethtoril if CHARNAME is on the 6th floor */
ADD_TRANS_TRIGGER ~%tutu_var%watch6~ 0 ~!%AreaCheckAR2614%~ DO 1
EXTEND_BOTTOM ~%tutu_var%watch6~ 0
IF ~%AreaCheckAR2614%~ THEN REPLY @8 GOTO 2
END
