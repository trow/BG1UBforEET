//IKE changes
ADD_TRANS_TRIGGER %tutu_var%IKE 0 ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ DO 0

EXTEND_BOTTOM %tutu_var%IKE 0
  IF ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN GOTO 2
  IF ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN GOTO 3
END

ADD_TRANS_TRIGGER %tutu_var%IKE 1 ~PartyGoldGT(59)~ DO 0
ADD_TRANS_TRIGGER %tutu_var%IKE 2 ~PartyGoldGT(79)~ DO 0
ADD_TRANS_ACTION %tutu_var%IKE BEGIN 2 END BEGIN 0 END ~TakePartyGold(80)~
ADD_TRANS_TRIGGER %tutu_var%IKE 3 ~PartyGoldGT(99)~ DO 0
ADD_TRANS_ACTION %tutu_var%IKE BEGIN 3 END BEGIN 0 END ~TakePartyGold(100)~
ADD_TRANS_TRIGGER %tutu_var%IKE 4 ~PartyGoldGT(59)~ DO 0
ADD_TRANS_TRIGGER %tutu_var%IKE 4 ~PartyGoldGT(79)~ DO 3
REPLACE_TRANS_ACTION %tutu_var%IKE BEGIN 4 END BEGIN 3 END ~TakePartyGold(60)~ ~TakePartyGold(80)~
ADD_TRANS_TRIGGER %tutu_var%IKE 4 ~PartyGoldGT(99)~ DO 4
REPLACE_TRANS_ACTION %tutu_var%IKE BEGIN 4 END BEGIN 4 END ~TakePartyGold(60)~ ~TakePartyGold(100)~

//typos
REPLACE_ACTION_TEXT %tutu_var%KIERES ~"%tutu_var%crew\([0-9]\)"~ ~"%tutu_var%leaggu\1"~ //3, 4
REPLACE_TRIGGER_TEXT %tutu_var%KIERES ~"detran"~ ~"Detranion"~ //5
REPLACE_TRIGGER_TEXT %tutu_var%KIERES ~True\([^()]*\)$~ ~True()~ //8
REPLACE_TRIGGER_TEXT %tutu_var%LAHL ~Random(\([1-9]\),7)~ ~RandomNum(7,\1)~ //1, 2, 3, 4, 5, 6, 7
REPLACE_ACTION_TEXT %tutu_var%KAISH ~(Karoug)~ ~("Karoug")~ //21, 24
