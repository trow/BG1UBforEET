//Ascension64: makes Coran's wyverns unique
REPLACE_TRIGGER_TEXT %CORAN_JOINED% ~!Dead("Wyvern")~ ~!Dead("X#CoranWyvern")~
ADD_STATE_TRIGGER %tutu_var%KELDDA 6 ~Dead("X#CoranWyvern") InParty("Coran")~
