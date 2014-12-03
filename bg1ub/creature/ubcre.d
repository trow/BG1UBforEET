BEGIN ~UBFELDAN~

IF ~True()
~ THEN BEGIN 0 // from:
  SAY #19945 /* ~Oh, hello <CHARNAME>. I have not seen you for quite some time. You have certainly picked a busy time to visit us. I wish I could chat about old times, but I must prepare the meeting rooms for our... guests.~ */
  IF ~~ THEN REPLY #19946 /* ~It was rare that guests would make use of those rooms. Who is here?~ */ GOTO 1
  IF ~~ THEN REPLY #19947 /* ~You seem hesitant, Feldane. Are these people not to be trusted?~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #19948 /* ~Oh, I should say little. They made a very generous donation to the keep; some rare texts with value well in excess of the normal entry fee. I see no harm in telling you though. After all, you once called this place home. They claim to be merchants, though their organizations dabble in much more, I am sure. The three leaders of the Iron Throne are meeting with representatives of the Knights of the Shield.~ */
  IF ~~ THEN REPLY #19950 /* ~What do you know of these two groups?~ */ GOTO 3
  IF ~~ THEN REPLY #19952 /* ~Interesting, but none of my concern. Thank you for your time.~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #19957 /* ~It is not for me to say, but I should keep an eye on your purse strings while here. Three are from the Iron Throne, supposedly the leaders themselves. The others are from Amn. I believe they are representing the Knights of the Shield. They both claim this trip is to discuss future trading relations, because the Iron Throne has grown so much as of late. I know very little of the economics of Baldur's Gate, but I would hazard a guess that both are more than mere businessmen.~ */
  IF ~~ THEN REPLY #19962 /* ~What do you mean by that? I have had "dealings" with the Iron Throne, so I would like to know what they are up to.~ */ GOTO 5
  IF ~~ THEN REPLY #19963 /* ~Well, thanks for the warning. I shall be wary.~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY #19964 /* ~Not much at all, but rumors are never in short supply. I hear that these meetings are more like negotiations, because the Iron Throne threatens to move into Knights of the Shield territory. I overheard one of them, accidentally of course, and I think the Iron Throne has gained a lot of power from the iron shortage. Appropriate, don't you think? They are meeting here because they consider it neutral ground and relatively safe. I doubt Keeper of the Tomes Ulraunt would have allowed their entry had he know who they are, though they have done nothing wrong here.~ */
  IF ~~ THEN REPLY #19967 /* ~Thank you for the information. I should be going.~ */ GOTO 4
  IF ~~ THEN REPLY #19968 /* ~Hmm. I don't suppose you know which rooms they are staying in?~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 5.0 3.0 2.1 1.1
  SAY #19965 /* ~Not a problem. We must get together sometime while you are here.~ */
  IF ~~ THEN DO ~EscapeArea()
~ JOURNAL @0 EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0
  SAY #19966 /* ~Oh, I hope you haven't thrown your lot in with them. I hear they are such unsavory types. More into power than commerce. I overheard them talking, and they have actually profited from the iron crisis! That's why the Knights of the Shield are here; the Iron Throne has gained a lot of influence lately and threatens to take over certain Amnish interests. I am surprised that Keeper of the Tomes Ulraunt allowed them entry, but they have done nothing wrong that can be proved.~ */
  IF ~~ THEN REPLY #19970 /* ~Thanks for the information. I'll just be off to my room now.~ */ GOTO 4
  IF ~~ THEN REPLY #19971 /* ~I don't suppose you know which rooms they will be using?~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1 3.1
  SAY #19969 /* ~I have said too much already. I certainly don't want to seem like a gossip. I should go. Please; we should speak some other time before you go.~ */
  IF ~~ THEN DO ~EscapeArea()
~ JOURNAL @0 EXIT
END

BEGIN UBCORIAN

IF ~NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,8)~ THEN BEGIN 0 // from:
  SAY #15543  /* ~Damn basilisks! I think it was heading east but I've had enough of it for one day, thank you very much. If you're into hunting the stupid things down, though, don't let me stop you.~ */
  IF ~~ THEN DO ~AddexperienceParty(100) EscapeArea()~ JOURNAL #15810 /* ~I have rescued the ranger Corianna from where she stood, petrified by a basilisk's gaze. Although Corianna has no desire to meet the creature a second time, she has been kind enough to inform me that it was heading east...~ */ EXIT
END

IF ~NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy,7)~ THEN BEGIN 1 // from:
  SAY #15544 /* ~I'm so glad you found me out here. Basilisks aren't exactly the thing to face alone. I'm going home but if you want to hunt it down, make sure you take this potion of mirrored eyes along with you. It's lair can't be too far from here.~ */
  IF ~~ THEN REPLY @1 DO ~AddexperienceParty(100) GiveItemCreate("POTN38",LastTalkedToBy,1,0,0) EscapeArea()~ JOURNAL #15811 /* ~I have rescued the ranger Corianna from where she stood, petrified by a basilisk's gaze. Although she has no desire to meet the creature a second time, Corianna has been kind enough to give me a potion of mirrored eyes and inform me that it was heading east...~ */ EXIT
  IF ~~ THEN REPLY @2 DO ~AddexperienceParty(100) GiveItemCreate("POTN38",LastTalkedToBy,1,0,0) EscapeArea()~ JOURNAL #15811 /* ~I have rescued the ranger Corianna from where she stood, petrified by a basilisk's gaze. Although she has no desire to meet the creature a second time, Corianna has been kind enough to give me a potion of mirrored eyes and inform me that it was heading east...~ */ EXIT
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 2 // from:
  SAY #15545  /* ~Oh no you don't... If you want to face that basilisk, that's your business. I'm heading home.~ */
  IF ~~ THEN DO ~AddexperienceParty(100) GiveItemCreate("POTN38",LastTalkedToBy,1,0,0) EscapeArea()~ JOURNAL #15811 /* ~I have rescued the ranger Corianna from where she stood, petrified by a basilisk's gaze. Although she has no desire to meet the creature a second time, Corianna has been kind enough to give me a potion of mirrored eyes and inform me that it was heading east...~ */ EXIT
END

IF ~StateCheck(Myself,8192)~ THEN BEGIN 3 // from:
  SAY #15546 /* ~Must you? Look, it's been a long day for me... Oh, damn you after all!~ */
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

BEGIN ~UBFARM5~

IF ~StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN Charmed
  SAY #6145 /* ~I'm just a simple farmer, I don't know much.~ */
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(0)
~ THEN BEGIN Greeting
  SAY #3991 /* ~Hey!  Who are you?~ */
  IF ~~ THEN REPLY #3993 /* ~We're mercenaries.~ */ GOTO 1
  IF ~~ THEN REPLY #3994 /* ~We're adventurers.~ */ GOTO 2
  IF ~~ THEN REPLY #3995 /* ~We're just your average travelers.~ */ GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN DO ~EscapeArea()
~ JOURNAL #6601 /* ~A farmer who we met in the Wood of Sharp Teeth has told us that someone has been dumping waste in the forest.~ */ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN DO ~EscapeArea()
~ JOURNAL #6601 /* ~A farmer who we met in the Wood of Sharp Teeth has told us that someone has been dumping waste in the forest.~ */ EXIT
END

IF ~~ THEN BEGIN 3
  SAY #4004 /* ~Ya, and if you're a normal bunch of travelers, then I'm Elminster himself.  Sarcastic bastards.~ */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

BEGIN ~UBWILTON~

IF ~Global("GaveAnkheg","GLOBAL",0)~ THEN BEGIN NotHelpedBrunYet
  SAY #9036 /* ~Leave me be.  I got nothin' for you.~ */
  IF ~~ THEN EXIT
END

IF ~Global("GaveAnkheg","GLOBAL",1)
Global("UBWiltonGaveCloak","GLOBAL",0)~ THEN BEGIN BrunHelped
  SAY #106 /* ~Stop a second there young'n, 'cause I heard what you gone and done for old Brun.  It made me ashamed that I didn't try to help him myself.  Good to know there's still someone willin' to go the extra mile, even for a stranger.  I want you to have this heirloom of mine, because of what you did.  Now my heirs didn't loom so big, but you ought to get more use out o' it than my mantle does.  Folks like you make a jaded old man think there's still decent people out there.~ */
  IF ~~ THEN DO ~GiveItem("CLCK01",LastTalkedToBy)
SetGlobal("UBWiltonGaveCloak","GLOBAL",1)
~ JOURNAL #5833 /* ~A man named Wilton gave me a reward for helping that old farmer, Brun.  What goes around, comes around I guess.~ */ EXIT
END

IF ~Global("UBWiltonGaveCloak","GLOBAL",1)~ THEN BEGIN Ciao
  SAY @6
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN Charmed
  SAY #6432 /* ~Only thing exciting happenin' 'round these parts are the bandit raids.  I'll warn ya now friend: I wouldn't try to mess with them bandits; I hear they're a real nasty bunch.~ */
  IF ~~ THEN EXIT
END

REPLACE_STATE_TRIGGER READ4 1 ~NumTimesTalkedToGT(0)~
REPLACE_ACTION_TEXT CULT3 ~"Cult Wizard"~ ~"CultWizard"~
REPLACE_ACTION_TEXT CULT3 ~"Cult Archer"~ ~"CultArcher"~