//OublekBounty1 is for brage
//OublekBounty2 is for prism
//the oublekbounty globals will prevent any exploits by dropping a second item and trying to get the full reward again
ADD_TRANS_TRIGGER ~%tutu_var%oublek~ 9 ~Global("OublekBounty1","GLOBAL",0)~ DO 0 UNLESS ~Global("OublekBounty1","GLOBAL",0)~
ADD_TRANS_TRIGGER ~%tutu_var%oublek~ 9 ~Global("OublekBounty2","GLOBAL",0)~ DO 1 UNLESS ~Global("OublekBounty2","GLOBAL",0)~
ADD_TRANS_TRIGGER ~%tutu_var%oublek~ 9 ~Global("OublekBounty1","GLOBAL",0) Global("OublekBounty2","GLOBAL",0)~ DO 4 UNLESS ~Global("OublekBounty2","GLOBAL",0)~
ADD_TRANS_TRIGGER ~%tutu_var%oublek~ 10 ~Global("OublekBounty1","GLOBAL",0)~ DO 1 5 UNLESS ~Global("OublekBounty1","GLOBAL",0)~
ADD_TRANS_TRIGGER ~%tutu_var%oublek~ 10 ~Global("OublekBounty2","GLOBAL",0)~ DO 9 5 UNLESS ~Global("OublekBounty2","GLOBAL",0)~

//changing from one item to two ensures that players can not take advantage of dropping one item and trying to get the full reward twice
// BG, BGT, Tutu
REPLACE_TRANS_TRIGGER ~%tutu_var%oublek~ BEGIN 9 END BEGIN 1 END ~PartyHasItem("%tutu_var%MISC43")~ ~PartyHasItem("abgfEyeL") PartyHasItem("abgfEyeR")~
REPLACE_TRANS_TRIGGER ~%tutu_var%oublek~ BEGIN 9 END BEGIN 4 END ~!PartyHasItem("%tutu_var%MISC43")~ ~!PartyHasItem("abgfEyeL") !PartyHasItem("abgfEyeR")~
// BGEE
REPLACE_TRANS_TRIGGER ~%tutu_var%oublek~ BEGIN 9 END BEGIN 1 END ~NumItemsPartyGT("misc43",1)~ ~PartyHasItem("abgfEyeL") PartyHasItem("abgfEyeR")~
REPLACE_TRANS_TRIGGER ~%tutu_var%oublek~ BEGIN 9 END BEGIN 4 END ~Global("OublekBounty2","GLOBAL",1)~ ~!PartyHasItem("abgfEyeL") !PartyHasItem("abgfEyeR")~

// BG, BGT, Tutu
REPLACE_TRANS_TRIGGER ~%tutu_var%oublek~ BEGIN 10 END BEGIN 5 END ~!PartyHasItem("%tutu_var%MISC43")~ ~!PartyHasItem("abgfEyeL") !PartyHasItem("abgfEyeR")~
REPLACE_TRANS_TRIGGER ~%tutu_var%oublek~ BEGIN 10 END BEGIN 9 END ~PartyHasItem("%tutu_var%MISC43")~ ~PartyHasItem("abgfEyeL") PartyHasItem("abgfEyeR")~
// BGEE
REPLACE_TRANS_TRIGGER ~%tutu_var%oublek~ BEGIN 10 END BEGIN 5 END ~Global("OublekBounty2","GLOBAL",1)~ ~!PartyHasItem("abgfEyeL") !PartyHasItem("abgfEyeR")~
REPLACE_TRANS_TRIGGER ~%tutu_var%oublek~ BEGIN 10 END BEGIN 9 END ~NumItemsPartyGT("misc43",1)~ ~PartyHasItem("abgfEyeL") PartyHasItem("abgfEyeR")~

// BG, BGT, Tutu
REPLACE_TRANS_ACTION ~%tutu_var%oublek~ BEGIN %BGT_DiffState% END BEGIN 0 END ~TakePartyItem("%tutu_var%MISC43") TakePartyItem("%tutu_var%MISC43")~ ~TakePartyItem("abgfEyeL") TakePartyItem("abgfEyeR") AddJournalEntry(99999214%QUEST_DONE%) %ERASEJOURNALENTRY_PRISM_0% %ERASEJOURNALENTRY_PRISM_1% %ERASEJOURNALENTRY_PRISM_2% %ERASEJOURNALENTRY_PRISM_3% %ERASEJOURNALENTRY_PRISM_4% %ERASEJOURNALENTRY_PRISM_5%~
REPLACE_TRANS_ACTION ~%tutu_var%oublek~ BEGIN %BGT_DiffState% END BEGIN 0 END ~TakePartyItem("%tutu_var%MISC43")~ ~TakePartyItem("abgfEyeL") TakePartyItem("abgfEyeR") AddJournalEntry(99999214%QUEST_DONE%) %ERASEJOURNALENTRY_PRISM_0% %ERASEJOURNALENTRY_PRISM_1% %ERASEJOURNALENTRY_PRISM_2% %ERASEJOURNALENTRY_PRISM_3% %ERASEJOURNALENTRY_PRISM_4% %ERASEJOURNALENTRY_PRISM_5%~
// BGEE
REPLACE_TRANS_ACTION ~%tutu_var%oublek~ BEGIN %BGT_DiffState% END BEGIN 0 END ~TakePartyItemNum("misc43",2)~ ~TakePartyItem("abgfEyeL") TakePartyItem("abgfEyeR") AddJournalEntry(99999214%QUEST_DONE%) %ERASEJOURNALENTRY_PRISM_0% %ERASEJOURNALENTRY_PRISM_1% %ERASEJOURNALENTRY_PRISM_2% %ERASEJOURNALENTRY_PRISM_3% %ERASEJOURNALENTRY_PRISM_4% %ERASEJOURNALENTRY_PRISM_5% %ERASEJOURNALBGEE%~
REPLACE_TRANS_ACTION ~%tutu_var%oublek~ BEGIN %BGT_DiffState% END BEGIN 0 END ~GivePartyGold(250)~ ~GivePartyGold(150)~

// BG, BGT, Tutu
REPLACE_TRANS_ACTION ~%tutu_var%oublek~ BEGIN 4 END BEGIN 0 END ~TakePartyItem("%tutu_var%MISC43")~ ~TakePartyItem("abgfEyeL") TakePartyItem("abgfEyeR") %ERASEJOURNALENTRY_PRISM_0% %ERASEJOURNALENTRY_PRISM_1% %ERASEJOURNALENTRY_PRISM_2% %ERASEJOURNALENTRY_PRISM_3% %ERASEJOURNALENTRY_PRISM_4% %ERASEJOURNALENTRY_PRISM_5%~
//BGEE 
REPLACE_TRANS_ACTION ~%tutu_var%oublek~ BEGIN 4 END BEGIN 0 END ~TakePartyItemNum("misc43",2)~ ~TakePartyItem("abgfEyeL") TakePartyItem("abgfEyeR") %ERASEJOURNALENTRY_PRISM_0% %ERASEJOURNALENTRY_PRISM_1% %ERASEJOURNALENTRY_PRISM_2% %ERASEJOURNALENTRY_PRISM_3% %ERASEJOURNALENTRY_PRISM_4% %ERASEJOURNALENTRY_PRISM_5% %ERASEJOURNALBGEE%~ 

//allow journal entries to work around brage in "bad boy" path
ADD_TRANS_ACTION ~%tutu_var%oublek~ BEGIN 10 END BEGIN 1 END ~SetGlobal("abTurnedInBrage","GLOBAL",1)~

//adding new states that give half the reward when only one item gets turned in
APPEND ~%tutu_var%oublek~
IF ~~ THEN BEGIN abLeftEye
  SAY @1000 //~One of the Emeralds! That will be a 150 gold bounty for you.  Be sure to bring the other if you should find it.~//this is custom text
  IF ~~ THEN DO ~AddexperienceParty(100) GivePartyGold(150) TakePartyItem("abgfEyeL") SetGlobal("abgf_LeftEyeBounty","GLOBAL",1)~
  %UNSOLVED_JOURNAL_0%
  EXIT
END
IF ~~ THEN BEGIN abRightEye
  SAY @1000 //~One of the Emeralds! That will be a 150 gold bounty for you.  Be sure to bring the other if you should find it.~//this is custom text
  IF ~~ THEN DO ~AddexperienceParty(100) GivePartyGold(150) TakePartyItem("abgfEyeR") SetGlobal("abgf_RightEyeBounty","GLOBAL",1)~
  %UNSOLVED_JOURNAL_0%
  EXIT
END
IF ~~ THEN BEGIN abLeftEyeLast
  SAY @1001 //~The last of the Emeralds! That will be another 150 gold bounty for you. Well, you'll make quite a name for yourself among the bounty hunters if you keep this up.  Whether it is for better or worse, I do not know.~//this is custom text
  IF ~~ THEN DO ~AddexperienceParty(100) GivePartyGold(150) TakePartyItem("abgfEyeL") SetGlobal("OublekBounty2","GLOBAL",1) SetGlobal("abgf_LeftEyeBounty","GLOBAL",1) %ERASEJOURNALENTRY_PRISM_0% %ERASEJOURNALENTRY_PRISM_1% %ERASEJOURNALENTRY_PRISM_2% %ERASEJOURNALENTRY_PRISM_3% %ERASEJOURNALENTRY_PRISM_4% %ERASEJOURNALENTRY_PRISM_5% %ERASEJOURNALBGEE%~
  %SOLVED_JOURNAL_0%
  EXIT
END
IF ~~ THEN BEGIN abRightEyeLast
  SAY @1001 //~The last of the Emeralds! That will be another 150 gold bounty for you. Well, you'll make quite a name for yourself among the bounty hunters if you keep this up.  Whether it is for better or worse, I do not know.~//this is custom text
  IF ~~ THEN DO ~AddexperienceParty(100) GivePartyGold(150) TakePartyItem("abgfEyeR") SetGlobal("abgf_RightEyeBounty","GLOBAL",1)  SetGlobal("OublekBounty2","GLOBAL",1) %ERASEJOURNALENTRY_PRISM_0% %ERASEJOURNALENTRY_PRISM_1% %ERASEJOURNALENTRY_PRISM_2% %ERASEJOURNALENTRY_PRISM_3% %ERASEJOURNALENTRY_PRISM_4% %ERASEJOURNALENTRY_PRISM_5% %ERASEJOURNALBGEE%~
  %SOLVED_JOURNAL_0%
  EXIT
END
//half reward states for those pretending to be greywolf
IF ~~ THEN BEGIN abBBLeftEye
  SAY @1002 //~One of the Emeralds! It is good to see you attempting to earn honest gold, even if it is through the unsavory task of bounty hunting. I shall pay you, though less than the posted amount. Be sure to bring the other if you should find it.~//this is custom text
  IF ~~ THEN DO ~AddexperienceParty(100) GivePartyGold(75) TakePartyItem("abgfEyeL") SetGlobal("abgf_LeftEyeBounty","GLOBAL",1)~
  %UNSOLVED_JOURNAL_1%
  EXIT
END
IF ~~ THEN BEGIN abBBRightEye
  SAY @1002 //~One of the Emeralds! It is good to see you attempting to earn honest gold, even if it is through the unsavory task of bounty hunting. I shall pay you, though less than the posted amount. Be sure to bring the other if you should find it.~//this is custom text
  IF ~~ THEN DO ~AddexperienceParty(100) GivePartyGold(75) TakePartyItem("abgfEyeR") SetGlobal("abgf_RightEyeBounty","GLOBAL",1)~
  %UNSOLVED_JOURNAL_1%
  EXIT
END
IF ~~ THEN BEGIN abBBLeftEyeLast
  SAY @1003 //~The last of the Emeralds! Well, it is good to see you attempting to earn honest gold, even if it is through the unsavory task of bounty hunting.  I shall pay you, though less than the posted amount.  We shall store the extra in case you decide to...alter the facts in any further dealings.~//this is custom text
  IF ~~ THEN DO ~AddexperienceParty(100) GivePartyGold(75) TakePartyItem("abgfEyeL") SetGlobal("abgf_LeftEyeBounty","GLOBAL",1) SetGlobal("OublekBounty2","GLOBAL",1) %ERASEJOURNALENTRY_PRISM_0% %ERASEJOURNALENTRY_PRISM_1% %ERASEJOURNALENTRY_PRISM_2% %ERASEJOURNALENTRY_PRISM_3% %ERASEJOURNALENTRY_PRISM_4% %ERASEJOURNALENTRY_PRISM_5% %ERASEJOURNALBGEE%~
  %SOLVED_JOURNAL_1%
  EXIT
END
IF ~~ THEN BEGIN abBBRightEyeLast
  SAY @1003 //~The last of the Emeralds! Well, it is good to see you attempting to earn honest gold, even if it is through the unsavory task of bounty hunting.  I shall pay you, though less than the posted amount.  We shall store the extra in case you decide to...alter the facts in any further dealings.~//this is custom text
  IF ~~ THEN DO ~AddexperienceParty(100) GivePartyGold(75) TakePartyItem("abgfEyeR") SetGlobal("abgf_RightEyeBounty","GLOBAL",1) SetGlobal("OublekBounty2","GLOBAL",1) %ERASEJOURNALENTRY_PRISM_0% %ERASEJOURNALENTRY_PRISM_1% %ERASEJOURNALENTRY_PRISM_2% %ERASEJOURNALENTRY_PRISM_3% %ERASEJOURNALENTRY_PRISM_4% %ERASEJOURNALENTRY_PRISM_5% %ERASEJOURNALBGEE%~
  %SOLVED_JOURNAL_1%
  EXIT
END

END //end the append

//adding additional transitions that allow the player to turn in only one of the two required items for good boy
EXTEND_BOTTOM ~%tutu_var%oublek~ 9
IF ~PartyHasItem("abgfEyeL") !PartyHasItem("abgfEyeR") Global("abgf_LeftEyeBounty","GLOBAL",0) Global("abgf_RightEyeBounty","GLOBAL",0)~
THEN REPLY @1004 GOTO abLeftEye
IF ~!PartyHasItem("abgfEyeL") PartyHasItem("abgfEyeR") Global("abgf_LeftEyeBounty","GLOBAL",0) Global("abgf_RightEyeBounty","GLOBAL",0)~
THEN REPLY @1004 GOTO abRightEye
IF ~PartyHasItem("abgfEyeL") !PartyHasItem("abgfEyeR") Global("abgf_RightEyeBounty","GLOBAL",1)~
THEN REPLY @1004 GOTO abLeftEyeLast
IF ~!PartyHasItem("abgfEyeL") PartyHasItem("abgfEyeR") Global("abgf_LeftEyeBounty","GLOBAL",1)~
THEN REPLY @1004 GOTO abRightEyeLast
END //end the extend bottom

//adding additional transitions that continue to keep 'bad boy' player from getting full reward. If they turn in only one gem, they get rewarded but can't turn in the other or resolve brage issue with oublek. It is an overall punishment when compared to 'good boy' rewards.
EXTEND_BOTTOM ~%tutu_var%oublek~ 10
IF ~PartyHasItem("abgfEyeL") !PartyHasItem("abgfEyeR") Global("abgf_LeftEyeBounty","GLOBAL",0) Global("abgf_RightEyeBounty","GLOBAL",0) Global("BroughtBounty","GLOBAL",1)~
THEN REPLY @1004 GOTO abBBLeftEye
IF ~!PartyHasItem("abgfEyeL") PartyHasItem("abgfEyeR") Global("abgf_LeftEyeBounty","GLOBAL",0) Global("abgf_RightEyeBounty","GLOBAL",0) Global("BroughtBounty","GLOBAL",1)~
THEN REPLY @1004 GOTO abBBRightEye
IF ~PartyHasItem("abgfEyeL") !PartyHasItem("abgfEyeR") Global("abgf_RightEyeBounty","GLOBAL",1) Global("BroughtBounty","GLOBAL",1)~
THEN REPLY @1004 GOTO abBBLeftEyeLast
IF ~!PartyHasItem("abgfEyeL") PartyHasItem("abgfEyeR") Global("abgf_LeftEyeBounty","GLOBAL",1) Global("BroughtBounty","GLOBAL",1)~
THEN REPLY @1004 GOTO abBBRightEyeLast
END //end the extend bottom

//adjustments needed for prism to work with the rest of the component
ADD_STATE_TRIGGER ~%tutu_var%prism~ 0 ~HasItem("abgfEyeL",Myself) HasItem("abgfEyeR",Myself) Global("abgf_BrokeInto","GLOBAL",0)~

//REPLACE_TRANS_ACTION prism BEGIN 7 END BEGIN 0 moved to separate files for BGT+Tutu / BG
REPLACE_TRANS_ACTION ~%tutu_var%prism~ BEGIN 7 END BEGIN 0 END ~DropInventory()~ ~%abContainerEnable%~

//Make sure the containers are empty if Prism can't put in the gems any more.
//ONLY apply if the emeralds really cannot be returned to Prism
//state 3 is where player attacks prism so gems need removed from eyes
//state 8 is where player has previously stolen the gems from off of Prism so gems need removed from eyes
//state 9 is where player backed off and let Greywolf have Prism & the gems so gems need removed from eyes
ADD_TRANS_ACTION ~%tutu_var%prism~ BEGIN 3 8 9 END BEGIN 0 END ~Unlock("A6StatueRightEye") Unlock("A6StatueLeftEye") ActionOverride("A6StatueRightEye",DestroyItem("abgfEyeR")) ActionOverride("A6StatueLeftEye",DestroyItem("abgfEyeL"))~

//set state 8 to be a repeat state if prism is talked to again after the gems were stolen and no longer retrievable
ADD_STATE_TRIGGER ~%tutu_var%prism~ 8 ~Global("ab_GemsTrulyGone","GLOBAL",1)~

REPLACE_TRANS_ACTION ~%tutu_var%prism~ BEGIN 9 END BEGIN 0 END ~GiveItem("MISC43","GREYWOLF")~
~GiveItem("abgfEyeL","GREYWOLF") GiveItem("abgfEyeR","GREYWOLF") SetGlobal("abgf_GemInEye","GLOBAL",3)~

ADD_TRANS_ACTION ~%tutu_var%prism~ BEGIN 4 END BEGIN 0 END ~SetGlobal("abCalledGreywolf","GLOBAL",1)~
//anything not one means that either the gems were not in container when obtained OR the penalty was applied
//only way to get items if player allowed greywolf to attack prism is to attack greywolf before prism is dead and hopefully kill him before he runs away.

//allow prism to return to correct location after having moved to catch up with player
ADD_TRANS_ACTION ~%tutu_var%prism~ BEGIN 5 8 END BEGIN 0 END ~ActionOverride("Prism",MoveToPoint([641.2713]))~

APPEND ~%tutu_var%prism~
//if prism still has both gems & player never tried to loot the eyes
IF ~HasItem("abgfEyeL",Myself) HasItem("abgfEyeR",Myself) !PartyHasItem("abgfEyeL") !PartyHasItem("abgfEyeR") Global("abgf_BrokeInto","GLOBAL",0) Global("abCalledGreywolf","GLOBAL",0)~ THEN BEGIN stillworking
 SAY @1101 //~I've much work to do. But mayhaps you would help a foolish sculptor finish this epiphany now?  Please, guard this place, for surely Greywolf will come.  I will pay with my last possessions!~
 COPY_TRANS ~%tutu_var%prism~ 1
END

//if prism still has both gems but player managed to get one of them out of the statue before prism initiates dialog
//rep loss of 1 if you take a gem from the statue and get caught by prism.
IF ~HasItem("abgfEyeL",Myself) HasItem("abgfEyeR",Myself) Global("abgf_BrokeInto","GLOBAL",1)~ THEN BEGIN abMidWork
 SAY @1100 //~How dare you! How dare you take the sparkle from her eyes!~
 IF ~~ THEN
 DO ~SetGlobal("ab_GemsTrulyGone","GLOBAL",1) ReputationInc(-1)~
 %UNSOLVED_JOURNAL_2% //~I managed to take some emeralds that the sculptor Prism was using as eyes in a statue. However, he had noticed me. I was forced to put him out of his misery after he lunged at me with a chisel.~
 GOTO 3
END
//if prism has been pick pocketed for one gem and player tries to loot eyes for the other
IF ~!HasItem("abgfEyeL",Myself) HasItem("abgfEyeR",Myself) Global("abgf_BrokeInto","GLOBAL",1)~ THEN BEGIN abMidWorkL
 SAY @1100 //~How dare you! How dare you take the sparkle from her eyes!~
 IF ~~ THEN
 DO ~SetGlobal("ab_GemsTrulyGone","GLOBAL",1) ReputationInc(-1)~
 %UNSOLVED_JOURNAL_2% //~I managed to take some emeralds that the sculptor Prism was using as eyes in a statue. However, he had noticed me. I was forced to put him out of his misery after he lunged at me with a chisel.~
 GOTO 3
END
//if prism has been pick pocketed for one gem and player tries to loot eyes for the other
IF ~HasItem("abgfEyeL",Myself) !HasItem("abgfEyeR",Myself) Global("abgf_BrokeInto","GLOBAL",1)~ THEN BEGIN abMidWorkR
 SAY @1100 //~How dare you! How dare you take the sparkle from her eyes!~
 IF ~~ THEN
 DO ~SetGlobal("ab_GemsTrulyGone","GLOBAL",1) ReputationInc(-1)~
 %UNSOLVED_JOURNAL_2% //~I managed to take some emeralds that the sculptor Prism was using as eyes in a statue. However, he had noticed me. I was forced to put him out of his misery after he lunged at me with a chisel.~
 GOTO 3
END


//prism initiates if both are missing and asks where they went
IF ~!HasItem("abgfEyeL",Myself) !HasItem("abgfEyeR",Myself) Global("abgf_BrokeInto","GLOBAL",0)~ THEN BEGIN abBothGone
 SAY @1102 //~Hold! You took my emeralds. I must have them back. I need them to finish this epiphany. Please, please return them. I will give you all else that is mine.~
  IF ~!PartyHasItem("abgfEyeL") !PartyHasItem("abgfEyeR") Global("OublekBounty2","GLOBAL",1)~ THEN
  REPLY @1103 //~They are gone. Given to the authorities. You will never finish that lump of stone now.~
  DO ~SetGlobal("ab_GemsTrulyGone","GLOBAL",1)~
  GOTO 8
  IF ~!PartyHasItem("abgfEyeL") !PartyHasItem("abgfEyeR") Global("OublekBounty2","GLOBAL",0)~ THEN
  REPLY @1104 //~They are gone. Sold by now to hang on the neck as some fat woman's trinket.~
  DO ~SetGlobal("ab_GemsTrulyGone","GLOBAL",1)~
  GOTO 8
  IF ~PartyHasItem("abgfEyeL") PartyHasItem("abgfEyeR") Global("OublekBounty2","GLOBAL",0)~ THEN
  REPLY @1108
  DO ~TakePartyItem("abgfEyeL") TakePartyItem("abgfEyeR")~
  GOTO 4
  IF ~PartyHasItem("abgfEyeL") PartyHasItem("abgfEyeR") Global("OublekBounty2","GLOBAL",0)~ THEN
  REPLY @1109
  DO ~SetGlobal("ab_GemsTrulyGone","GLOBAL",1)~
  GOTO 3
  IF ~PartyHasItem("abgfEyeL") !PartyHasItem("abgfEyeR")~ THEN
  REPLY @1105 //~Aye, I took them. Still have one. The other tho is long gone.~
  GOTO abBothStoleButOneGone
  IF ~!PartyHasItem("abgfEyeL") PartyHasItem("abgfEyeR")~ THEN
  REPLY @1105 //~Aye, I took them. Still have one. The other tho is long gone.~
  GOTO abBothStoleButOneGone
  IF ~~ THEN
  REPLY @1106 //~What is this? Some madman accusing me of thievery? Die for your insults.~
  DO ~SetGlobal("ab_GemsTrulyGone","GLOBAL",1)~
  GOTO 3
  //both are gone and player denies knowing anything about taking the gems, transition to state 8 so the gems in the eyes can be removed
  IF ~~ THEN
  REPLY @1110 //~I know not what you are talking about.~
  DO ~ActionOverride("Prism",MoveToPoint([641.2713])) SetGlobal("ab_GemsTrulyGone","GLOBAL",1)~
  %UNSOLVED_JOURNAL_3%
  GOTO 8
END

//prism initiates if left gem is missing
IF ~!HasItem("abgfEyeL",Myself) HasItem("abgfEyeR",Myself) Global("abgf_BrokeInto","GLOBAL",0) Global("ab_GemStoleResolve","GLOBAL",0)~ THEN BEGIN abLeftGone
 SAY @1107 //~Hold! You took my emerald. I must have it back. I need it to finish this epiphany. Please, please return it. I will give you all else that is mine.~
  IF ~PartyHasItem("abgfEyeL") Global("OublekBounty2","GLOBAL",0)~ THEN
  REPLY @1108 //~All that is yours, eh?  So be it.~
  DO ~TakePartyItem("abgfEyeL")~
  GOTO 4
  IF ~PartyHasItem("abgfEyeL") Global("OublekBounty2","GLOBAL",0)~ THEN
  REPLY @1109 //~"All else that is yours" does not concern me.  I'm taking you and the gems to the guard, where I shall get a hefty reward.~
  DO ~SetGlobal("ab_GemsTrulyGone","GLOBAL",1)~
  GOTO 3
  IF ~!PartyHasItem("abgfEyeL")~ THEN
  GOTO abNotGetBackEver
  IF ~~ THEN
  REPLY @1106 //~What is this? Some madman accusing me of thievery? Die for your insults.~
  DO ~SetGlobal("ab_GemsTrulyGone","GLOBAL",1)~
  GOTO 3
  //only 1 is gone, exit the conversation so that player can try to pick the other gem
  IF ~~ THEN
  REPLY @1110 //~I know not what you are talking about.~
  DO ~ActionOverride("Prism",MoveToPoint([641.2713])) SetGlobal("ab_TalkAbouMissingGems","GLOBAL",1)~
  EXIT
END

//prism initiates if right gem is missing
IF ~HasItem("abgfEyeL",Myself) !HasItem("abgfEyeR",Myself) Global("abgf_BrokeInto","GLOBAL",0) Global("ab_GemStoleResolve","GLOBAL",0)~ THEN BEGIN abRightGone
 SAY @1107 //~Hold! You took my emerald. I must have it back. I need it to finish this epiphany. Please, please return it. I will give you all else that is mine.~
  IF ~PartyHasItem("abgfEyeR") Global("OublekBounty2","GLOBAL",0)~ THEN
  REPLY @1108 //~All that is yours, eh?  So be it.~
  DO ~TakePartyItem("abgfEyeR")~
  GOTO 4
  IF ~PartyHasItem("abgfEyeR") Global("OublekBounty2","GLOBAL",0)~ THEN
  REPLY @1109 //~"All else that is yours" does not concern me.  I'm taking you and the gems to the guard, where I shall get a hefty reward.~
  DO ~SetGlobal("ab_GemsTrulyGone","GLOBAL",1)~
  GOTO 3
  IF ~!PartyHasItem("abgfEyeR")~ THEN
  GOTO abNotGetBackEver
  IF ~~ THEN
  REPLY @1106 //~What is this? Some madman accusing me of thievery? Die for your insults.~
  DO ~SetGlobal("ab_GemsTrulyGone","GLOBAL",1)~
  GOTO 3
  IF ~~ THEN
  REPLY @1110 //~I know not what you are talking about.~
  DO ~ActionOverride("Prism",MoveToPoint([641.2713])) SetGlobal("ab_TalkAbouMissingGems","GLOBAL",1)~
  EXIT
END

IF ~~ THEN BEGIN abBothStoleButOneGone
 SAY @1111 //~Give me the one you have. Go get the other and bring it back. I must finish this epiphany. I will give you all else that is mine.~
 IF ~Global("abgf_RightEyeBounty","GLOBAL",1) Global("abgf_LeftEyeBounty","GLOBAL",0)~ THEN
 REPLY @1112 //~I gave it to the authorities. You shall never get it back.~
 DO ~SetGlobal("ab_GemsTrulyGone","GLOBAL",1)~
 GOTO 8
 IF ~Global("abgf_RightEyeBounty","GLOBAL",1) Global("abgf_LeftEyeBounty","GLOBAL",0)~ THEN
 REPLY @1113 //~Not possible. I gave it to the authorities and have come back to claim the other for its bounty.~
 DO ~SetGlobal("ab_GemsTrulyGone","GLOBAL",1)~
 GOTO 3
 IF ~Global("abgf_RightEyeBounty","GLOBAL",0) Global("abgf_LeftEyeBounty","GLOBAL",0)~ THEN
 REPLY @1114 //~Not possible. Sold to some forgotten merchant or stashed in some forgotten place.~
 DO ~SetGlobal("ab_GemsTrulyGone","GLOBAL",1)~
 GOTO 8
 IF ~Global("abgf_RightEyeBounty","GLOBAL",0) Global("abgf_LeftEyeBounty","GLOBAL",1)~ THEN
 REPLY @1112 //~I gave it to the authorities. You shall never get it back.~
 DO ~SetGlobal("ab_GemsTrulyGone","GLOBAL",1)~
 GOTO 8
 IF ~Global("abgf_RightEyeBounty","GLOBAL",0) Global("abgf_LeftEyeBounty","GLOBAL",1)~ THEN
 REPLY @1113 //~Not possible. I gave it to the authorities and have come back to claim the other for its bounty.~
 DO ~SetGlobal("ab_GemsTrulyGone","GLOBAL",1)~
 GOTO 3
 IF ~~ THEN
 REPLY @1115 //~The gem may be gone, but I'll gladly take all else that is yours. Prepare to die.~
 GOTO 3
END

IF ~~ THEN BEGIN abNotGetBackEver
 SAY @1116 //~Give it back please. I must finish this epiphany. I will give you all else that is mine.~
 IF ~Global("abgf_RightEyeBounty","GLOBAL",1) Global("abgf_LeftEyeBounty","GLOBAL",0)~ THEN
 REPLY @1112 //~I gave it to the authorities. You shall never get it back.~
 DO ~SetGlobal("ab_GemsTrulyGone","GLOBAL",1)~
 GOTO 8
 IF ~Global("abgf_RightEyeBounty","GLOBAL",1) Global("abgf_LeftEyeBounty","GLOBAL",0)~ THEN
 REPLY @1113 //~Not possible. I gave it to the authorities and have come back to claim the other for its bounty.~
 DO ~SetGlobal("ab_GemsTrulyGone","GLOBAL",1)~
 GOTO 3
 IF ~Global("abgf_RightEyeBounty","GLOBAL",0) Global("abgf_LeftEyeBounty","GLOBAL",0)~ THEN
 REPLY @1114 //~Not possible. Sold to some forgotten merchant or stashed in some forgotten place.~
 DO ~SetGlobal("ab_GemsTrulyGone","GLOBAL",1)~
 GOTO 8
 IF ~Global("abgf_RightEyeBounty","GLOBAL",0) Global("abgf_LeftEyeBounty","GLOBAL",1)~ THEN
 REPLY @1112 //~I gave it to the authorities. You shall never get it back.~
 DO ~SetGlobal("ab_GemsTrulyGone","GLOBAL",1)~
 GOTO 8
 IF ~Global("abgf_RightEyeBounty","GLOBAL",0) Global("abgf_LeftEyeBounty","GLOBAL",1)~ THEN
 REPLY @1113 //~Not possible. I gave it to the authorities and have come back to claim the other for its bounty.~
 DO ~SetGlobal("ab_GemsTrulyGone","GLOBAL",1)~
 GOTO 3
 IF ~~ THEN
 REPLY @1115 //~The gem may be gone, but I'll gladly take all else that is yours. Prepare to die.~
 GOTO 3
END

END//end the append