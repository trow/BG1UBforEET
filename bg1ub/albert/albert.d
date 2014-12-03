

//replace action put in by BGT & Baldurdash should it have been installed on regular BG (no bandit scalp)
REPLACE_TRANS_ACTION %tutu_var%ALBERT
BEGIN 7 END
BEGIN 0 END
~GiveItemCreate("%tutu_var%MISC86",LastTalkedToBy,0,0,0)~ ~~

//now in all cases put in what UB wants to have as reward, unless it's original BG where the reward is already there
ADD_TRANS_ACTION %tutu_var%ALBERT
BEGIN 7 END
BEGIN 0 END
~GiveItemCreate("%tutu_var%MISC35",LastTalkedToBy,0,0,0)~
UNLESS
~GiveItemCreate("MISC35",LastTalkedToBy,0,0,0)~
