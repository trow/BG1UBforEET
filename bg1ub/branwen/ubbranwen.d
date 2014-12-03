INTERJECT %tutu_var%TRANZI 7 UBBranwenAndTranzigMercy
== BRANWJ IF ~InParty("branwen") !Dead("branwen") !StateCheck("branwen",STATE_SLEEPING)~ THEN @0
END %tutu_var%TRANZI 10

CHAIN
IF WEIGHT #-1 ~NumTimesTalkedTo(0)
InParty("branwen") 
!Dead("branwen") 
!StateCheck("branwen",STATE_SLEEPING)~ THEN %tutu_var%TRANZI UBBranwenMeetsTranzig
@1
== %BRANWEN_JOINED% @2 
== %tutu_var%TRANZI @3 DO ~Enemy()~ EXIT