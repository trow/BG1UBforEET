//Ascension64: makes Coran's wyverns unique
REPLACE_TRIGGER_TEXT CORANJ ~!Dead("Wyvern")~ ~!Dead("X#CoranWyvern")~
ADD_STATE_TRIGGER KELDDA 6 ~Dead("X#CoranWyvern") InParty("Coran")~
