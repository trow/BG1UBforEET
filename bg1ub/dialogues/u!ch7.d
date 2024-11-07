//SUGAR, AR0100 - tells player to see Ivanne. (J)
ADD_TRANS_TRIGGER SUGAR 3
~Global("TalkedToIvanne","GLOBAL",0)~
DO 0

EXTEND_BOTTOM SUGAR 3
IF ~Global("TalkedToIvanne","GLOBAL",1)~ THEN JOURNAL @0 DO ~EscapeArea()~ EXIT
END



//IVANNE, AR0114 - tells player his story, refers to Iron Throne and Eltan. (J)
ADD_TRANS_TRIGGER %tutu_var%IVANNE 5
~!Dead("Cythan")
!Dead("Rashad")~
DO 0

EXTEND_BOTTOM %tutu_var%IVANNE 5
IF ~Dead("Cythan") !Dead("Rashad")~ THEN DO ~SetGlobal("IvanneStoryTold","GLOBAL",1)
EraseJournalEntry(27178)
EraseJournalEntry(27177)
~ SOLVED_JOURNAL @1 EXIT
IF ~!Dead("Cythan") Dead("Rashad")~ THEN DO ~SetGlobal("IvanneStoryTold","GLOBAL",1)
EraseJournalEntry(27178)
EraseJournalEntry(27177)
~ SOLVED_JOURNAL @2 EXIT
IF ~Dead("Cythan") Dead("Rashad")~ THEN DO ~SetGlobal("IvanneStoryTold","GLOBAL",1)
EraseJournalEntry(27178)
EraseJournalEntry(27177)
~ SOLVED_JOURNAL @3 EXIT
END



//SORREL, AR0200, mentioned Iron Throne and Eltan. (J)
ADD_TRANS_TRIGGER SORREL 2
~!Dead("Cythan")
!Dead("Rashad")~
DO 0

EXTEND_BOTTOM SORREL 2
IF ~Dead("Cythan") !Dead("Rashad")~ THEN JOURNAL @4 DO ~EscapeArea()~ EXIT
IF ~!Dead("Cythan") Dead("Rashad")~ THEN JOURNAL @5 DO ~EscapeArea()~ EXIT
IF ~Dead("Cythan") Dead("Rashad")~ THEN JOURNAL @6 DO ~EscapeArea()~ EXIT
END



//BENJY, AR0607 - put in a flag to know that Flaming Fist compound was visited
ADD_TRANS_ACTION BENJY
BEGIN 0 END
BEGIN 0 END
~SetGlobal("TalkedToBenjy","GLOBAL",1)~



//ADDY, AR0700 - begs player to re-investigate the Iron Throne. (J)
ADD_TRANS_TRIGGER ADDY 1
~!Dead("Cythan")~ 2
DO 0

EXTEND_BOTTOM ADDY 1 2
IF ~Dead("Cythan")~ DO ~EscapeArea()~ EXIT
END



//HERSCH, AR0800 - journal mentions something odd at the Iron Throne building. (J)
ADD_TRANS_TRIGGER HERSCH 2
~!Dead("Cythan")~ 3
DO 0

EXTEND_BOTTOM HERSCH 2 3
IF ~Dead("Cythan")~ THEN JOURNAL @7 EXIT
END



//DELTHY, AR0800 - journal mentions Iron Throne, mentions Eltan, inconsistencies with repeat text
ADD_TRANS_TRIGGER DELTHY 8
~!Dead("Cythan")~
DO 0

ADD_TRANS_TRIGGER DELTHY 8
~!Dead("Cythan") !Dead("Rashad")~
DO 1

EXTEND_BOTTOM DELTHY 8
IF ~Dead("Cythan")~ THEN REPLY #1754 /* ~Who killed Scar?~ */ GOTO 9
IF ~Dead("Cythan") !Dead("Rashad")~ THEN REPLY #1755 /* ~What sickness has Eltan come down with?~ */ GOTO 12
END

ADD_TRANS_TRIGGER DELTHY 9
~!Dead("Rashad")~
DO 2

ADD_TRANS_ACTION DELTHY
BEGIN 9 END
BEGIN 0 END
~SetGlobal("AskedDelthyr1","GLOBAL",1)~

ADD_TRANS_ACTION DELTHY
BEGIN 9 END
BEGIN 1 END
~SetGlobal("AskedDelthyr2","GLOBAL",1)~

ADD_TRANS_ACTION DELTHY
BEGIN 9 END
BEGIN 2 END
~SetGlobal("AskedDelthyr3","GLOBAL",1)~

ADD_TRANS_TRIGGER DELTHY 17
~!Dead("Rashad")~
DO 2

REPLACE_TRIGGER_TEXT DELTHY ~"RescuedEltan"~ ~"BroughtEltan"~
REPLACE_TRIGGER_TEXT DELTHY ~"GLOABL"~ ~"GLOBAL"~ //fix if not already fixed



//HUSAM2, AR0800 - Slythe and Krystin, now you can say you already killed them; also removes the strange backward loop about asking whether you killed them
EXTEND_BOTTOM HUSAM2 11
IF ~Dead("Slythe") Dead("Krystin")~ THEN REPLY @8 DO ~SetGlobal("HusamMove","GLOBAL",6) SetGlobal("KillAssasins","GLOBAL",2)~ GOTO 16
END

REPLACE_TRANS_ACTION HUSAM2
BEGIN 16 END
BEGIN 0 END
~SetGlobal("KillAssasins","GLOBAL",1)~
~~

APPEND HUSAM2
IF ~Global("HusamMove","GLOBAL",6)
Global("KillAssasins","GLOBAL",2)~ THEN BEGIN Husam2
  SAY @9
  COPY_TRANS_LATE HUSAM2 16
END
END


//TAMOKO, AR0800 - doesn't allow you to say you already killed Slythe and Kristin. (J)
REPLACE_TRIGGER_TEXT TAMOKO ~"RescuedEltan"~ ~"BroughtEltan"~

EXTEND_BOTTOM TAMOKO 17
IF ~Dead("Slythe") Dead("Krystin")~ THEN REPLY @8 GOTO Tamoko
END

APPEND TAMOKO
IF ~~ THEN BEGIN Tamoko
  SAY #11196 /* ~There is...another. Atop the Iron Throne base is a woman whose...whose influence is a poison in Sarevok's soul. If she were removed I know he would listen to reason, to my pleading. Cythandria is her name, and she holds much power in this matter. She seeks Sarevok's favor as well, though she is content if he self-destructs, so long as she profits in the deed. I...I must go. He cannot know I have helped you.~ */
  IF ~!Dead("Cythan")~ THEN JOURNAL @10 DO ~SetGlobal("TamokoMove","GLOBAL",2) EscapeArea()~ EXIT
  IF ~Dead("Cythan")~ THEN JOURNAL @11 DO ~SetGlobal("TamokoMove","GLOBAL",2) EscapeArea()~ EXIT
END
END


//KAELLA, AR1100 - something strange going on in Iron Throne building. (J)
ADD_TRANS_TRIGGER KAELLA 3
~!Dead("Cythan")~
DO 0

EXTEND_BOTTOM KAELLA 3
IF ~Dead("Cythan")~ JOURNAL @12 EXIT
END



//JONAVI, AR1200 - mention Duke Eltan's sickness and player gets to prompt it, also journal to visit barracks. (J)
ADD_TRANS_TRIGGER JONAVI 1
~!Dead("Rashad")~
DO 0

ADD_TRANS_TRIGGER JONAVI 3
~Global("TalkedToBenjy","GLOBAL",0)~
DO 0

EXTEND_BOTTOM JONAVI 3
IF ~Global("TalkedToBenjy","GLOBAL",1)~ JOURNAL @13 DO ~EscapeArea()~ EXIT
END



//KOLVAR, AR1200 - journal about Entar. (J)
ADD_TRANS_TRIGGER KOLVAR 6
~!Dead("Rashad")~
DO 0 1

EXTEND_BOTTOM KOLVAR 6
IF ~Dead("Rashad")~ REPLY #1780 /* ~Do you know who killed Scar?~ */ JOURNAL @14 GOTO 7
END

ADD_TRANS_TRIGGER KOLVAR 10
~!Dead("Rashad")~
DO 0

EXTEND_BOTTOM KOLVAR 10
IF ~Dead("Rashad")~ JOURNAL @14 EXIT
END



//ALANBL, AR1300 - journal about visting Flaming Fist compound. (J)
ADD_TRANS_TRIGGER ALANBL 7
~Global("TalkedToBenjy","GLOBAL",0)~
DO 0

EXTEND_BOTTOM ALANBL 7
IF ~!Dead("Rashad") Global("TalkedToBenjy","GLOBAL",1)~ JOURNAL @15 DO ~EscapeArea()~ EXIT
IF ~Dead("Rashad") Global("TalkedToBenjy","GLOBAL",1)~ JOURNAL @16 DO ~EscapeArea()~ EXIT
END



//DELTAN2 - journal about killing Slythe and Krystin. (J)
ADD_TRANS_TRIGGER DELTAN2 0
~!Dead("Krystin") !Dead("Slythe")~
DO 0

EXTEND_BOTTOM DELTAN2 0
IF ~!Dead("Krystin") Dead("Slythe")~ JOURNAL #20666 /* ~We must travel to the Undercellars and find Slythe and Krystin, two of Sarevok's assassins.  Eltan thinks that Sarevok may want to murder the Grand Dukes Belt and Liia.  We must make sure that this doesn't happen.  We're also to take Eltan to the Harbormaster's building which is located on the east side of the harbor.~ */ DO ~GiveItemCreate("MISC55",LastTalkedToBy,0,0,0) GiveItemCreate("SCRL2R",LastTalkedToBy,0,0,0) DestroySelf()~ EXIT
IF ~Dead("Krystin") !Dead("Slythe")~ JOURNAL #20666 /* ~We must travel to the Undercellars and find Slythe and Krystin, two of Sarevok's assassins.  Eltan thinks that Sarevok may want to murder the Grand Dukes Belt and Liia.  We must make sure that this doesn't happen.  We're also to take Eltan to the Harbormaster's building which is located on the east side of the harbor.~ */ DO ~GiveItemCreate("MISC55",LastTalkedToBy,0,0,0) GiveItemCreate("SCRL2R",LastTalkedToBy,0,0,0) DestroySelf()~ EXIT
END

EXTEND_BOTTOM DELTAN2 0
IF ~Dead("Slythe") Dead("Krystin")~ JOURNAL @17 DO ~GiveItemCreate("MISC55",LastTalkedToBy,0,0,0) GiveItemCreate("SCRL2R",LastTalkedToBy,0,0,0) DestroySelf()~ EXIT
END
