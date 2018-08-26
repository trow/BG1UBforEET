I_C_T2 ~%tutu_scriptbg%TAZOK~ 1 UBKivanAndTazok
== %KIVAN_JOINED% IF ~InParty("kivan") !Dead("kivan") !StateCheck("kivan",STATE_SLEEPING)~ THEN @0
== %tutu_scriptbg%TAZOK @1
END

I_C_T2 ~%tutu_scriptbg%TAZOK~ 6 UBKivanAndTazok
== %KIVAN_JOINED% IF ~InParty("kivan") !Dead("kivan") !StateCheck("kivan",STATE_SLEEPING)~ THEN @0
== %tutu_scriptbg%TAZOK @1
END

I_C_T2 ~%tutu_scriptbg%TAZOK~ 7 UBKivanAndTazok
== %KIVAN_JOINED% IF ~InParty("kivan") !Dead("kivan") !StateCheck("kivan",STATE_SLEEPING)~ THEN @0
== %tutu_scriptbg%TAZOK @1
END

I_C_T2 ~%tutu_scriptbg%TAZOK~ 10 UBKivanAndTazok
== %KIVAN_JOINED% IF ~InParty("kivan") !Dead("kivan") !StateCheck("kivan",STATE_SLEEPING)~ THEN @0
== %tutu_scriptbg%TAZOK @1
END

I_C_T2 ~%tutu_scriptbg%TAZOK~ 12 UBKivanAndTazok
== %KIVAN_JOINED% IF ~InParty("kivan") !Dead("kivan") !StateCheck("kivan",STATE_SLEEPING)~ THEN @0
== %tutu_scriptbg%TAZOK @1
END

I_C_T2 ~%tutu_scriptbg%TAZOK~ 14 UBKivanAndTazok
== %KIVAN_JOINED% IF ~InParty("kivan") !Dead("kivan") !StateCheck("kivan",STATE_SLEEPING)~ THEN @0
== %tutu_scriptbg%TAZOK @1
END

I_C_T2 ~%tutu_scriptbg%TAZOK~ 15 UBKivanAndTazok
== %KIVAN_JOINED% IF ~InParty("kivan") !Dead("kivan") !StateCheck("kivan",STATE_SLEEPING)~ THEN @0
== %tutu_scriptbg%TAZOK @1
END

I_C_T2 ~%tutu_scriptbg%TAZOK~ 20 UBKivanAndTazok
== %KIVAN_JOINED% IF ~InParty("kivan") !Dead("kivan") !StateCheck("kivan",STATE_SLEEPING)~ THEN @0
== %tutu_scriptbg%TAZOK @1
END

I_C_T2 ~%tutu_scriptbg%TAZOK~ 21 UBKivanAndTazok
== %KIVAN_JOINED% IF ~InParty("kivan") !Dead("kivan") !StateCheck("kivan",STATE_SLEEPING)~ THEN @0
== %tutu_scriptbg%TAZOK @1
END

I_C_T2 ~%tutu_scriptbg%TAZOK~ 24 UBKivanAndTazok
== %KIVAN_JOINED% IF ~InParty("kivan") !Dead("kivan") !StateCheck("kivan",STATE_SLEEPING)~ THEN @0
== %tutu_scriptbg%TAZOK @1
END

I_C_T2 ~%tutu_scriptbg%TAZOK~ 26 UBKivanAndTazok
== %KIVAN_JOINED% IF ~InParty("kivan") !Dead("kivan") !StateCheck("kivan",STATE_SLEEPING)~ THEN @0
== %tutu_scriptbg%TAZOK @1
END

I_C_T2 ~%tutu_scriptbg%TAZOK~ 13 UBKivanAndTazokLeave
== %KIVAN_JOINED% IF ~InParty("kivan") !Dead("kivan") !StateCheck("kivan",STATE_SLEEPING)~ THEN @2
END

I_C_T2 ~%tutu_scriptbg%TAZOK~ 27 UBKivanAndTazokLeave
== %KIVAN_JOINED% IF ~InParty("kivan") !Dead("kivan") !StateCheck("kivan",STATE_SLEEPING)~ THEN @2
END

APPEND %KIVAN_JOINED%

IF WEIGHT #-1 ~Global("UBKivanTazokDead","GLOBAL",1)~ THEN BEGIN UBKivanTazokDead
SAY @3
IF ~~ THEN DO ~SetGlobal("UBKivanTazokDead","GLOBAL",2)~ EXIT
END

END
