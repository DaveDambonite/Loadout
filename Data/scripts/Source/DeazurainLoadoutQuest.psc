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
  if Utility.isInMenuMode()
    return
  endif
  
  if Dutil.isKeyPressed(Dutil.keyLeftAlt) || \
    Dutil.isKeyPressed(Dutil.keyRightAlt) || \
    Dutil.isKeyPressed(Dutil.gamepadRightThumb)
    saveLoadout(i)
  else
    restoreLoadout(i)
  endif
endfunction

function saveLoadout(int i)
  dbg("Saving loadout " + i + "...", true)

  Actor p = Game.getPlayer()
  
  FormList loadout = loadouts[i]
  Formlist current = LoadoutCurrent

  ; Lets hope the equipment doesn't change :3
  loadout.revert()
  int n = current.getSize()
  while n
    n -= 1
    loadout.addForm(current.getAt(n))
  endwhile
  
  ; Special cases
  loadoutRightHand[i] = getEquippedFormRightHand(p)
  loadoutLeftHand[i] = getEquippedFormLeftHand(p)
  loadoutShout[i] = getEquippedShoutOrPower(p)
  
  dbg("Saved current loadout to " + i, true)
endfunction

function restoreLoadout(int i)
  dbg("Restoring loadout " + i + "...", true)

  Actor p = Game.GetPlayer()

  ; Equip special cases, does not check if already equipped
  setEquippedFormRightHand(p, loadoutRightHand[i])
  setEquippedFormLeftHand(p, loadoutLeftHand[i])
  setEquippedShoutOrPower(p, loadoutShout[i])

  FormList loadout = loadouts[i]
  Formlist current = LoadoutCurrent
  Form f
  int n

  ; Algorithm idea
    ; forall x in loadout where x not in equipped
    ;   equip x
    ; forall x in equipped where x not in loadout
    ;   unequip x
  ; I used to create a buffer for the current equipment
  ; but that magically added about 50% processing time
  n = loadout.getSize()
  while n
    n -= 1
    f = loadout.getAt(n)
    if !current.hasForm(f)
      p.equipItemEx(f)
    endif
  endwhile

  n = current.getSize()
  while n
    n -= 1
    f = current.getAt(n)
    if !loadout.hasForm(f)
      p.unequipItemEx(f)
    endif
  endwhile
endfunction

; -----------------------------------------------------------
; EVENTS
; -----------------------------------------------------------

event OnInit()
  dbg("Thank you for installing Loadout!", true)
endevent

event OnGameLoad()
  dbg("Checking for updates...")

  if SKSE.getVersion() < 1 || SKSE.getVersionMinor() < 6 || SKSE.getVersionBeta() < 7
    dbg("Loadout cannot function completely because SKSE needs to be updated!", true)
  endif

  float versionOld = version  
  if version < 0.08
    version = 0.08
    ; create left hand, right hand and shout storage
    ; because they need special treatment
    loadoutLeftHand = new Form[10]
    loadoutRightHand = new Form[10]
    loadoutShout = new Form[10]
  endif
  if version < 1.01
    version = 1.01
    UnregisterForAllKeys(); unregister old keybindings
    RegisterForKey(Dutil.key0)
    RegisterForKey(Dutil.key1)
    RegisterForKey(Dutil.key2)
    RegisterForKey(Dutil.key3)
    RegisterForKey(Dutil.key4)
    RegisterForKey(Dutil.key5)
    RegisterForKey(Dutil.key6)
    RegisterForKey(Dutil.key7)
    RegisterForKey(Dutil.key8)
    RegisterForKey(Dutil.key9)
    RegisterForKey(Dutil.gamepadLeft)
    RegisterForKey(Dutil.gamepadRight)
  endif

  if versionOld == version
    dbg("No updates found")
  else
    dbg("Loadout updated from " + versionToString(versionOld) + " to " + versionToString(version), true)
  endif
  GotoState("Ready")
endevent

state Ready
  event OnKeyDown(int keyCode)
    GotoState("Busy") ; only do one thing at once

    if keyCode == Dutil.key0
      onKeyDownLoadout(0)
    elseif keyCode == Dutil.key1 || keyCode == Dutil.gamepadLeft
      onKeyDownLoadout(1)
    elseif keyCode == Dutil.key2 || keyCode == Dutil.gamepadRight
      onKeyDownLoadout(2)
    elseif keyCode == Dutil.key3
      onKeyDownLoadout(3)
    elseif keyCode == Dutil.key4
      onKeyDownLoadout(4)
    elseif keyCode == Dutil.key5
      onKeyDownLoadout(5)
    elseif keyCode == Dutil.key6
      onKeyDownLoadout(6)
    elseif keyCode == Dutil.key7
      onKeyDownLoadout(7)
    elseif keyCode == Dutil.key8
      onKeyDownLoadout(8)
    elseif keyCode == Dutil.key9
      onKeyDownLoadout(9)
    endif
    
    GotoState("Ready")
  endevent
endstate

state Busy
  event OnKeyDown(int k)
    dbg("I'm busy")
  endevent
endstate