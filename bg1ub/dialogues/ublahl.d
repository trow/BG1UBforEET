REPLACE_STATE_TRIGGER ~%tutu_var%lahl~ 1 ~Global("Kaishas1","GLOBAL",1) !Dead("karoug") GlobalLT("UBHelpLahl","GLOBAL",2)~ 
REPLACE_STATE_TRIGGER ~%tutu_var%lahl~ 2 ~~ 3 4 5 7
REPLACE_STATE_TRIGGER ~%tutu_var%lahl~ 6 ~Global("Kaishas1","GLOBAL",1) Dead("karoug")~ 
ADD_STATE_TRIGGER ~%tutu_var%lahl~ 8 ~Global("UBHelpLahl","GLOBAL",1)~ 
SET_WEIGHT ~%tutu_var%lahl~ 8 #-1 

ADD_TRANS_TRIGGER ~%tutu_var%lahl~ 1 ~Global("UBHelpLahl","GLOBAL",0)~ DO 0
ADD_TRANS_ACTION ~%tutu_var%lahl~ BEGIN 2 END BEGIN 0 END ~SetGlobal("UBHelpLahl","GLOBAL",1)~ 
ADD_TRANS_ACTION ~%tutu_var%lahl~ BEGIN 2 END BEGIN 1 END ~SetGlobal("UBHelpLahl","GLOBAL",5)~ 
ADD_TRANS_ACTION ~%tutu_var%lahl~ BEGIN 8 END BEGIN 0 END ~SetGlobal("UBHelpLahl","GLOBAL",2)~

APPEND ~%tutu_var%lahl~
IF WEIGHT #-1 ~Global("Kaishas1","GLOBAL",1) Global("UBHelpLahl","GLOBAL",5) !Dead("karoug")~ THEN BEGIN LahlAngry
  SAY #13308
  IF ~~ THEN EXIT
  END
END
