BEGIN ~UBMALKAL~ 

IF ~Global("UBMalKal_Enc","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY @4302 /* #2471 */
  IF ~~ THEN DO ~~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0
  SAY @4310 // ~Help to me... body inside... just a shade I... inside body... I live again! Revenge the destroyers!~ /* #2472 */
  IF ~~ THEN REPLY @4311 // ~Poor creature, who were you in life?~ /* #2474 */ 
  	GOTO 2
  IF ~~ THEN REPLY @4312 // ~Is there no rest for you spirit? What holds you to this place?~ /* #2476 */ 
  	GOTO 3
  IF ~~ THEN REPLY @4313 // ~Back you undead horror! Back, lest you wish to die again!~ /* #2475 */ 
  	GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 3.0 1.0
  SAY @4314 // ~Mal-Kalen I... student I... revenge destroyers... release the body!~ /* #2473 */
  IF ~~ THEN REPLY @4312 // ~Is there no rest for you spirit? What holds you to this place?~ /* #2476 */ 
  	GOTO 3
  IF ~~ THEN REPLY @4313 // ~Back you undead horror! Back, lest you wish to die again!~ /* #2475 */ 
  	GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0 1.1
  SAY @4315 // ~School destroyed by treachery... Ulcaster gone... protect they said... must revenge!~ /* #2477 */
  IF ~~ THEN REPLY @4311 // ~Poor creature, who were you in life?~ /* #2474 */ 
  	GOTO 2
  IF ~~ THEN REPLY @4313 // ~Back you undead horror! Back, lest you wish to die again!~ /* #2475 */ 
  	GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1 2.1 1.2
  SAY @4316 // ~Now the body inside... no escape for body... release body so I live! Revenge the destroyers!~ /* #2478 */
  IF ~~ THEN REPLY @4317 // ~I beseech you, cease your attack! I am not your enemy!~ /* #2481 */ 
  	GOTO 5
  IF ~~ THEN REPLY @4318 // ~Leave me be! I want no part of your ancient anger!~ /* #2482 */ 
  	GOTO 6
  IF ~~ THEN REPLY @4319 // ~You thought you were dead before? Just wait until I'm through with you!~ /* #2483 */ 
  	GOTO 10
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @4320 // ~You not enemy... you the body... release body so I live! Revenge the destroyers!~ /* #2479 */
  IF ~~ THEN REPLY @4318 // ~Leave me be! I want no part of your ancient anger!~ /* #2482 */ 
  	GOTO 6
  IF ~~ THEN REPLY @4321 // ~The battle has been forgotten by all! Stop your pointless quest!~ /* #2488 */ 
  	GOTO 7
  IF ~~ THEN REPLY @4322 // ~I'm releasing my body right out of this place! See ya!~ /* #2489 */ 
  	GOTO 10
  IF ~~ THEN REPLY @4319 // ~You thought you were dead before? Just wait until I'm through with you!~ /* #2483 */ 
  	GOTO 10
  IF ~PartyHasItem("%tutu_var%misc13")~ THEN REPLY @4323 // ~Wait! You can take the body of Samuel. Just leave me be!~ 
  	DO ~TakePartyItem("%tutu_var%misc13") DestroyItem("%tutu_var%misc13") SetGlobal("UBMalKal_Enc","GLOBAL",5)~ EXIT 
  IF ~PartyHasItem("%tutu_var%misc1e")~ THEN REPLY @4324 // ~Wait! You can take the body of Evan. Just leave me be!~ 
  	DO ~TakePartyItem("%tutu_var%misc1e") DestroyItem("%tutu_var%misc1e") SetGlobal("UBMalKal_Enc","GLOBAL",5)~ EXIT 
  IF ~PartyHasItem("%tutu_var%misc65")~ THEN REPLY @4325 // ~Wait! You can take the body of Brage. Just leave me be!~ 
  	DO ~TakePartyItem("%tutu_var%misc65") DestroyItem("%tutu_var%misc65") SetGlobal("UBMalKal_Enc","GLOBAL",5)~ EXIT 
  IF ~PartyHasItem("%tutu_var%misc66")~ THEN REPLY @4326 // ~Wait! You can take the body of Nathan. Just leave me be!~ 
  	DO ~TakePartyItem("%tutu_var%misc66") DestroyItem("%tutu_var%misc66") SetGlobal("UBMalKal_Enc","GLOBAL",5)~ EXIT 
  IF ~PartyHasItem("%tutu_var%misc67")~ THEN REPLY @4327 // ~Wait! You can take the body of Farmer Brun's son. Just leave me be!~ 
  	DO ~TakePartyItem("%tutu_var%misc67") DestroyItem("%tutu_var%misc67") SetGlobal("UBMalKal_Enc","GLOBAL",5)~ EXIT 
  IF ~PartyHasItem("%tutu_var%misc79")~ THEN REPLY @4328 // ~Wait! You can take the body of this woman. Just leave me be!~ 
  	DO ~TakePartyItem("%tutu_var%misc79") DestroyItem("%tutu_var%misc79") SetGlobal("UBMalKal_Enc","GLOBAL",5)~ EXIT 
  IF ~PartyHasItem("%tutu_var%misc80")~ THEN REPLY @4329 // ~Wait! You can take the body of this man. Just leave me be!~ 
  	DO ~TakePartyItem("%tutu_var%misc80") DestroyItem("%tutu_var%misc80") SetGlobal("UBMalKal_Enc","GLOBAL",5)~ EXIT 
END

IF ~~ THEN BEGIN 6 // from: 10.1 5.1 4.1
  SAY @4330 // ~Has been but a tenday.. must revenge the destroyers! Release body!~ /* #2480 */
  IF ~~ THEN REPLY @4331 // ~It has been 300 years! Time has already taken your quarry!~ /* #2487 */ 
  	GOTO 8
  IF ~~ THEN REPLY @4322 // ~I'm releasing my body right out of this place! See ya!~ /* #2489 */ 
  	GOTO 10
  IF ~~ THEN REPLY @4332 // ~"Release the body, release the body!" I'll release your spirit back to the Nine Hells!~ /* #2490 */ 
  	GOTO 10
END

IF ~~ THEN BEGIN 7 // from: 13.1 7.1 6.1
  SAY @4333 // ~Not forgotten by I... but a tenday... release the body!~ /* #2491 */
  IF ~~ THEN REPLY @4331 // ~It has been 300 years! Time has already taken your quarry!~ /* #2487 */ 
  	GOTO 8
  IF ~~ THEN REPLY @4322 // ~I'm releasing my body right out of this place! See ya!~ /* #2489 */ 
  	GOTO 10
  IF ~~ THEN REPLY @4332 // ~"Release the body, release the body!" I'll release your spirit back to the Nine Hells!~ /* #2490 */ 
  	GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 13.0 7.0 6.0
  SAY @4334 // ~300 years... it cannot be... 300... dead all must be...~ /* #2496 */
  IF ~~ THEN DO ~~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from:
  SAY @4335 // ~All dead... I remain... will exact penance from descendants... revenge the destroyers! Release the body!~ /* #2497 */
  IF ~~ THEN DO ~Enemy() SetGlobal("UBMalKal_Enc","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 10.2 5.2 4.2
  SAY @4336 // ~Fight or no... release the body... RELEASE!!!~ /* #2498 */
  IF ~~ THEN DO ~Enemy() SetGlobal("UBMalKal_Enc","GLOBAL",1)~ EXIT
END

IF ~Global("UBMalKal_Enc","GLOBAL",7)~ THEN BEGIN 11 // from:
  SAY @4337 // ~I live again... revenge the destroyers!~ /* #2499 */
  IF ~~ THEN DO ~EscapeArea()~ JOURNAL @4351 EXIT
END

IF ~Global("UBMalKal_Enc","GLOBAL",3)~ THEN BEGIN 12 // from:
  SAY @4338 // ~Noooo... revenge the destroyers.... revenge....~ /* #2500 */
  IF ~~ THEN DO ~SetGlobal("UBMalKal_Enc","GLOBAL",3) DestroySelf()~ JOURNAL @4350 EXIT
END
