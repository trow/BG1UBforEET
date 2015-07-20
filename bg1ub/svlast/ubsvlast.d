BEGIN ~UBSVLAST~ 

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @4220 // ~He's out there. He's coming. I can feel his footsteps, following me. The scent of rotting flesh. He's coming for us all.~ #14489
  IF ~~ THEN REPLY @4240 // ~What are you talking about? Who is coming for us?~
  	GOTO 1 
END

IF ~~ THEN BEGIN 1 // from:
  SAY @4221 // ~I-- I killed him. But he's out there, he's coming this way, I can f-- feel it.~ #14890
  IF ~~ THEN REPLY @4241 // ~Who was this person? Why does he hunt you from beyond the grave?~
  	GOTO 2
END

IF ~~ THEN BEGIN 2 // from:
  SAY @4222 // ~I was a paladin, once. I fought on the side of good but it all comes to naught... I murdered him in cold blood, my brother in the faith... When he comes, let him be.~ #14891 - MODIFIED
  IF ~~ THEN REPLY @4242 // ~Are you mad? I will not simply stand by and let this creature kill you!~ 
  	DO ~SetGlobal("UBSVLAST_ENC","GLOBAL",1)~ JOURNAL @4290 EXIT
  IF ~~ THEN REPLY @4243 // ~As you wish. I do not agree with your decision, but if it is your choice to die by this creature's hand, I will not stand in the way.~ 
  	DO ~SetGlobal("UBSVLAST_ENC","GLOBAL",1)~ JOURNAL @4290 EXIT
  IF ~~ THEN REPLY @4244 // ~No problem. This is between you and him. I want no part of it!~ 
  	DO ~SetGlobal("UBSVLAST_ENC","GLOBAL",1)~ JOURNAL @4291 EXIT
  IF ~~ THEN REPLY @4245 // ~An undead creature seeks *your* death? Perhaps we should just give it what it wants!~
  	DO ~SetGlobal("UBSVLAST_ENC","GLOBAL",9)~ JOURNAL @4292 GOTO 6
END

IF ~Global("UBSVLAST_ENC","GLOBAL",5)~ THEN BEGIN 3 // If revenant is killed 
  SAY @4223 // ~What have you done? Now I am twice as wretched! Kill me in this tortured place! At least there will be some justice then.~ /* #14893 - MODIFIED */
  IF ~~ THEN REPLY @4246 // ~As you wish. Let justice be done.~ 
  	DO ~SetGlobal("UBSVLAST_ENC","GLOBAL",10) ActionOverride(LastTalkedToBy(Myself),FaceObject("ubsvlast")) Wait(1) Kill("ubsvlast")~ JOURNAL @4295 EXIT
  IF ~~ THEN REPLY @4247 // ~I refuse. I will not be your executioner. You will have to atone for your crimes. Perhaps then others may learn from your mistakes.~ 
  	DO ~SetGlobal("UBSVLAST_ENC","GLOBAL",8)~ JOURNAL @4296 GOTO 4
  IF ~~ THEN REPLY @4248 // ~That's a fine way to show some gratitude! I just saved your miserable life!~
  	DO ~SetGlobal("UBSVLAST_ENC","GLOBAL",8)~ JOURNAL @4297 GOTO 8
  IF ~~ THEN REPLY @4249 // ~If that's what you desire, it will be my pleasure.~
  	DO ~SetGlobal("UBSVLAST_ENC","GLOBAL",10) ActionOverride(LastTalkedToBy(Myself),FaceObject("ubsvlast")) Wait(1) Kill("ubsvlast")~ JOURNAL @4298 EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @4224 // ~What could you ever hope to learn from a wretched fool like me? Learn from my example, at least, and seek not to kill that which is good in the world.~  #14894
  IF ~~ THEN GOTO 8
END

IF ~Global("UBSVLAST_ENC","GLOBAL",8)~ THEN BEGIN 5 // from:
  SAY @4225 // ~Please, just leave me to my misery.~ #14895
  IF ~~ THEN DO ~~ EXIT
END

IF ~Global("UBSVLAST_ENC","GLOBAL",9)~ THEN BEGIN 6 // from:
  SAY @4226 // ~Much as I may welcome death, I will not face it without a fight.~ #14896
  IF ~~ THEN DO ~SetGlobal("UBSVLAST_ENC","GLOBAL",10) Enemy()~ JOURNAL @4292 EXIT
END

IF ~~ THEN BEGIN 7 // from: UBSVLREV 0
  SAY @4227 // ~I am sorry, my brother... I was jealous, I was... a fool.~ 
  IF ~~ THEN DO ~~ EXIT
END
 
IF ~~ THEN BEGIN 8 // from:
  SAY @4225 // ~Please, just leave me to my misery.~ #14895
  IF ~~ THEN DO ~~ EXIT
END


BEGIN ~UBSVLREV~

IF ~Global("UBSVLAST_ENC","GLOBAL",3)~ THEN BEGIN 0 // from:
  SAY @4213 // ~[REVENANT 03] I've come for you. ~ [REVEN03]
  IF ~~ THEN DO ~SetGlobal("UBSVLAST_ENC","GLOBAL",4)~ EXTERN UBSVLAST 7
END

IF ~Global("UBSVLAST_ENC","GLOBAL",6)~ THEN BEGIN 1 // from:
  SAY @4217 // ~Revenge...~
  IF ~~ THEN DO ~SetGlobal("UBSVLAST_ENC","GLOBAL",10) Kill(Myself)~ JOURNAL @4293 EXIT
END

