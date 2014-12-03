ADD_STATE_TRIGGER ~%tutu_var%HALFEN~ 0 ~NumTimesTalkedTo(0)~
ADD_STATE_TRIGGER ~%tutu_var%HALFEN~ 2 ~StateCheck(Myself,STATE_CHARMED)~

REPLACE ~%tutu_var%HALFEN~
IF ~~ THEN BEGIN 1
  SAY @20164
  IF ~~ THEN DO ~Shout(99)
                 Enemy()~ EXIT
END
END

SET_WEIGHT ~%tutu_var%HALFEN~ 2 #-1