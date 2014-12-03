%bgt_fwdslash_sign%%bgt_star_sign%
//BG only
%tutu_fwdslash_sign%%tutu_star_sign%

ADD_TRANS_TRIGGER ~%tutu_var%ANGELO~ 0 ~InParty(Player2)~ DO 0

EXTEND_BOTTOM ~%tutu_var%ANGELO~ 0

IF ~InParty(Player3)
!InParty(Player2)~ THEN REPLY #2144 JOURNAL #6537 GOTO 1

IF ~InParty(Player4)
!InParty(Player3)
!InParty(Player2)~ THEN REPLY #2144 JOURNAL #6537 GOTO 1

IF ~InParty(Player5)
!InParty(Player4)
!InParty(Player3)
!InParty(Player2)~ THEN REPLY #2144 JOURNAL #6537 GOTO 1

IF ~InParty(Player6)
!InParty(Player5)
!InParty(Player4)
!InParty(Player3)
!InParty(Player2)~ THEN REPLY #2144 JOURNAL #6537 GOTO 1

IF ~!InParty(Player6)
!InParty(Player5)
!InParty(Player4)
!InParty(Player3)
!InParty(Player2)~ THEN REPLY #2144 JOURNAL #6537 GOTO 4

END
%tutu_star_sign%%tutu_fwdslash_sign%

%bg_fwdslash_sign%%bg_star_sign%
//Tutu only
ADD_TRANS_TRIGGER ~%tutu_var%ANGELO~ 0 ~OR(5)
InParty(Player6)
InParty(Player5)
InParty(Player4)
InParty(Player3)
InParty(Player2)~ DO 0

EXTEND_BOTTOM ~%tutu_var%ANGELO~ 0

IF ~!InParty(Player6)
!InParty(Player5)
!InParty(Player4)
!InParty(Player3)
!InParty(Player2)~ THEN REPLY @20174 UNSOLVED_JOURNAL @20175 GOTO 4

END
%bg_star_sign%%bg_fwdslash_sign%

//BG and Tutu only
ADD_TRANS_TRIGGER ~%tutu_var%ANGELO~ 1 ~InParty(Player2)~ DO 0

EXTEND_BOTTOM ~%tutu_var%ANGELO~ 1

IF ~InParty(Player3)
!InParty(Player2)~
THEN DO ~StartCutSceneMode()
Kill(Player3)
SetGlobal("KillPC","GLOBAL",7)
Dialogue([PC])~ EXIT

IF ~InParty(Player4)
!InParty(Player3)
!InParty(Player2)~
THEN DO ~StartCutSceneMode()
Kill(Player4)
SetGlobal("KillPC","GLOBAL",7)
Dialogue([PC])~ EXIT

IF ~InParty(Player5)
!InParty(Player4)
!InParty(Player3)
!InParty(Player2)~
THEN DO ~StartCutSceneMode()
Kill(Player5)
SetGlobal("KillPC","GLOBAL",7)
Dialogue([PC])~ EXIT

IF ~InParty(Player6)
!InParty(Player5)
!InParty(Player4)
!InParty(Player3)
!InParty(Player2)~
THEN DO ~StartCutSceneMode()
Kill(Player6)
SetGlobal("KillPC","GLOBAL",7)
Dialogue([PC])~ EXIT

//safety block
IF ~!InParty(Player6)
!InParty(Player5)
!InParty(Player4)
!InParty(Player3)
!InParty(Player2)~
THEN DO ~StartCutSceneMode()
SetGlobal("KillPC","GLOBAL",7)
Dialogue([PC])~ EXIT

END
%bgt_star_sign%%bgt_fwdslash_sign%


ADD_TRANS_ACTION ~%tutu_var%ANGELO~
BEGIN 4 END
BEGIN 0 END
~SetGlobal("KillPC","GLOBAL",8)~

ADD_TRANS_ACTION ~%tutu_var%ANGELO~
BEGIN 6 END
BEGIN 0 END
~SetGlobal("KillPC","GLOBAL",8)~

REPLACE_STATE_TRIGGER ~%tutu_var%ANGELO~ 7
~InParty("Sharteel")
Global("KillPC","GLOBAL",9)~

ADD_TRANS_ACTION ~%tutu_var%ANGELO~
BEGIN 7 END
BEGIN 0 END
~EscapeArea()~