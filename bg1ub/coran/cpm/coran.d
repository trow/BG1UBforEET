REPLACE_TRIGGER_TEXT %tutu_var%CORAN ~NumTimesTalkedTo(0)~ ~~
REPLACE_TRIGGER_TEXT %tutu_var%CORAN ~True()~ ~Global("IKCoranWyvernFix","GLOBAL",1)
ReactionGT(LastTalkedToBy(Myself),HOSTILE_UPPER)~

ADD_STATE_TRIGGER %tutu_var%CORAN 0 ~Global("IKCoranWyvernFix","GLOBAL",0)~
ADD_STATE_TRIGGER %tutu_var%CORAN 1 ~Global("IKCoranWyvernFix","GLOBAL",0)~
ADD_STATE_TRIGGER %tutu_var%CORAN 13 ~True()~

REPLACE %tutu_var%CORAN
IF ~~ THEN BEGIN 3
  SAY @20167
  IF ~~ THEN DO ~SetGlobal("IKCoranWyvernFix","GLOBAL",1)~ EXIT
END
IF ~~ THEN BEGIN 6
  SAY @20168
  IF ~~ THEN DO ~SetGlobal("IKCoranWyvernFix","GLOBAL",1)~ EXIT
END
END
