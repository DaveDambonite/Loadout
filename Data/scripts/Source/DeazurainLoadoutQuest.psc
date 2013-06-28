scriptname DeazurainLoadoutQuest extends DeazurainQuest
{Quick Loudout Event registering and updating}

; -----------------------------------------------------------
; DESCRIPTION
; -----------------------------------------------------------

;/
A loadout should consists of
Apparel: [armor|ammo]
Left hand: weapon|shield|spell|unarmed|torch
Right hand: weapon|spell|unarmed
Shout: shout|power

Should now support saving ammo and torches
/;

;Time measuring
;float startTime = Utility.getCurrentRealTime()
;  <THE CODE>
;float endTime = Utility.getCurrentRealTime()
;Debug.trace("Description " + (1000*(endTime - startTime)) as int)  


; -----------------------------------------------------------
; IMPORTS
; -----------------------------------------------------------

import DeazurainUtility

; -----------------------------------------------------------
; CONSTANTS
; -----------------------------------------------------------

; -----------------------------------------------------------
; VARIABLES
; -----------------------------------------------------------

DeazurainUtility property Dutil auto
FormList[] property loadouts auto
FormList property loadoutCurrent auto

Form[] loadoutLeftHand
Form[] loadoutRightHand
Form[] loadoutShout ; Contains a shout or power

float version = 0.0

; -----------------------------------------------------------
; FUNCTIONS
; -----------------------------------------------------------

function onKeyDownLoadout(int i)
endfunction

function saveLoadout(int i)
endfunction

function restoreLoadout(int i)
endfunction

; -----------------------------------------------------------
; EVENTS
; -----------------------------------------------------------

event OnInit()
  dbg("You tried to uninstall Loadout but it is not even installed!", true)
  dbg("Maybe you've downloaded the wrong file?", true)
endevent

event OnGameLoad()
  if version != -1
    UnregisterForAllKeys()
    version = -1
    dbg("Uninstalled Loadout", true)
  endif
endevent

state Ready
  event OnKeyDown(int keyCode)
  endevent
endstate

state Busy
  event OnKeyDown(int k)
    GotoState("Ready")
  endevent
endstate