BEGIN ~UBSHILO~

IF ~ReactionLT(LastTalkedToBy,8)~ THEN BEGIN 0 // from:
  SAY #15182 /* ~I can smell the city on you.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~Global("AcceptedUBShiloQuest","GLOBAL",0)
ReactionGT(LastTalkedToBy,7)~ THEN BEGIN 1 // from:
  SAY @0
  IF ~~ THEN DO ~SetGlobal("AcceptedUBShiloQuest","GLOBAL",1)~ JOURNAL #15772 /* ~Shilo Chen, a ranger from the Wood of Sharp Teeth, is currently seeking help in Baldur's Gate. A group of ogre-magi is killing off the wildlife in the wood's southwest corner. He has asked me to go there and see what I can do. If he can find any other willing adventurers, he'll send them as reinforcements. ~ */ EXIT
END

IF ~Global("AcceptedUBShiloQuest","GLOBAL",1)
!Dead("UBOGMA01")
!Dead("UBOGMA02")~ THEN BEGIN 2 // from:
  SAY #15184 /* ~How can you stay in this foul city when the forest is in danger??~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~Global("AcceptedUBShiloQuest","GLOBAL",1)
Dead("UBOGMA01")
Dead("UBOGMA02")~ THEN BEGIN 3 // from:
  SAY #15185 /* ~The hawks tell me that you cleared away the ogre-magi all by yourselves. I am impressed with your valor. Here, let me give you these fine gloves as a token of my appreciation. They are so supple that you can feel even the downiest feather as it brushes against your palm.~ */
  IF ~~ THEN DO ~AddexperienceParty(750)
GiveItem("UBGLOVE1",LastTalkedToBy)
SetGlobal("AcceptedUBShiloQuest","GLOBAL",2)
EscapeArea()~ JOURNAL @1 EXIT
END

IF ~StateCheck(Myself,8192)~ THEN BEGIN 4 // from:
  SAY #15186 /* ~You city dwellers are all the same!~ */
  IF ~~ THEN DO ~~ EXIT
END
