/*
FIXES:


-Reward in state 11 should be 2000 gold, instead of 4000. (BGT)
-Reward in state 13 should be 4000 gold, instead of 2000. (BGT)
-State 17 is missing the extra 2000 (for the promised doubled reward). (Dudleyfix)
-In state 35 the reward should be 1000 gold and the XP max. 2000 XP instead of 2500 (2000 XP is what you get if you told what the Ogre mage was doing there).

-----------------------------
BGT: fixes
-Reward in state 11 should be 2000 gold, instead of 4000.
-Reward in state 13 should be 4000 gold, instead of 2000.

Adds reply option to state 31:
-  IF ~~ THEN REPLY @1067 EXIT


Dudleyfix adds the 2000 gold in state 17:
-State 17 is missing the extra 2000 (for the promised doubled reward).

Baldurdash does not change Scar.dlg.

*/

REPLACE_TRANS_ACTION %tutu_var%SCAR
BEGIN 11 END
BEGIN 0 END
~GiveGoldForce(4000)~
~GiveGoldForce(2000)~

REPLACE_TRANS_ACTION %tutu_var%SCAR
BEGIN 13 END
BEGIN 0 END
~GiveGoldForce(2000)~
~GiveGoldForce(4000)~

ADD_TRANS_ACTION ~%tutu_var%SCAR~ BEGIN 17 END BEGIN 0 END ~GiveGoldForce(2000)~ UNLESS ~GiveGoldForce(2000)~

REPLACE_TRANS_ACTION %tutu_var%SCAR
BEGIN 35 END
BEGIN 0 END
~AddexperienceParty(2500)~
~AddexperienceParty(2000)~