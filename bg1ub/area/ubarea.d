ADD_STATE_TRIGGER ~HALFEN~ 0 ~NumTimesTalkedTo(0)~
ADD_STATE_TRIGGER ~HALFEN~ 2 ~StateCheck(Myself,STATE_CHARMED)~

REPLACE ~HALFEN~
IF ~~ THEN BEGIN 1
  SAY #7415
  IF ~~ THEN DO ~Shout(99)
                 Enemy()~ EXIT
END
END

SET_WEIGHT ~HALFEN~ 2 #-1