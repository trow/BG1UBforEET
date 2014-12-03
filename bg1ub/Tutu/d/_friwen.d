BEGIN ~_FRIWEN~

IF ~NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0
  SAY @40031
  IF ~~ THEN EXIT
END

IF ~NumberOfTimesTalkedTo(1)
~ THEN BEGIN 1
  SAY @40032
  IF ~~ THEN EXIT
END

IF ~NumberOfTimesTalkedTo(3)
~ THEN BEGIN 2
  SAY @40033
  IF ~~ THEN EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 3
  SAY @40034
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @40035
  IF ~~ THEN EXIT
END