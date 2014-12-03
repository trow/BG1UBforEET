ADD_STATE_TRIGGER ~%KAGAIN_JOINED%~ 0
~Global("KagainCaravan","GLOBAL",3)
!GlobalTimerExpired("Kagain","GLOBAL")
GlobalGT("Chapter","GLOBAL",%tutu_chapter_1%)
%BGT_VAR%~

SET_WEIGHT ~%KAGAIN_JOINED%~ 0 #-1

ADD_TRANS_ACTION ~%KAGAIN_JOINED%~
BEGIN 0 END
BEGIN 1 END
~SetGlobal("KagainCaravan","GLOBAL",4)~

REPLACE_STATE_TRIGGER ~%KAGAIN_JOINED%~ 6 ~Global("KagainCaravan","GLOBAL",3)
GlobalTimerExpired("Kagain","GLOBAL")~

ADD_TRANS_ACTION ~%KAGAIN_JOINED%~
BEGIN 5 END
BEGIN 0 END
~SetGlobal("KagainCaravan","GLOBAL",4)~

REPLACE_TRANS_ACTION ~%KAGAIN_JOINED%~
BEGIN 6 END
BEGIN 0 END
~SetGlobal("KagainCaravan","GLOBAL",3)~
~SetGlobal("KagainCaravan","GLOBAL",4)~


APPEND ~%KAGAIN_JOINED%~

IF WEIGHT #-1 ~Global("KagainCaravan","GLOBAL",3)
!GlobalTimerExpired("Kagain","GLOBAL")
GlobalLT("Chapter","GLOBAL",%tutu_chapter_2%)
%BGT_VAR%~ THEN BEGIN toNashkel
  SAY @20002
    COPY_TRANS_LATE ~%KAGAIN_JOINED%~ 0
END

END