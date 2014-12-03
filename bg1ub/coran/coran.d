REPLACE_TRIGGER_TEXT CORAN ~NumTimesTalkedTo(0)~ ~~
REPLACE_TRIGGER_TEXT CORAN ~True()~ ~Global("IKCoranWyvernFix","GLOBAL",1)
ReactionGT(LastTalkedToBy(Myself),HOSTILE_UPPER)~

ADD_STATE_TRIGGER CORAN 0 ~Global("IKCoranWyvernFix","GLOBAL",0)~
ADD_STATE_TRIGGER CORAN 1 ~Global("IKCoranWyvernFix","GLOBAL",0)~
ADD_STATE_TRIGGER CORAN 13 ~True()~

REPLACE CORAN
IF ~~ THEN BEGIN 3
  SAY #899 /* No problem, though you are missing quite the little adventure. */
  IF ~~ THEN DO ~SetGlobal("IKCoranWyvernFix","GLOBAL",1)~ EXIT
END
IF ~~ THEN BEGIN 6
  SAY #902 /* Aren't stout enough of heart.  I can understand, not all of us are. */
  IF ~~ THEN DO ~SetGlobal("IKCoranWyvernFix","GLOBAL",1)~ EXIT
END
END