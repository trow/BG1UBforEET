

//extra BGT stuff
EXTEND_BOTTOM THALAN 35
  IF ~Global("D0TaintedOreQuest","GLOBAL",1)
PartyHasItem("POTN48")~ THEN REPLY @28 GOTO Examine
  IF ~Global("D0TaintedOreQuest","GLOBAL",2)
PartyHasItem("POTN48")~ THEN REPLY @29 GOTO Examine
END