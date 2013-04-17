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

Currently, ammo and torches are not supported because of papyrus limitations. 
/;


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

Form[] loadoutLeftHand
Form[] loadoutRightHand
Form[] loadoutShout ; Contains a shout or power

bool keyStateStickRight = false ; nasty fix

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

  ;float startTime = Utility.getCurrentRealTime()
  
  Actor p = Game.getPlayer()
  FormList loadout = loadouts[i]
  loadout.revert()
  
  ; Get apparel
  int n = 0; I used to use n as an array index
  int mask = 1
  while n < 31
    loadout.addForm(p.getWornForm(mask)) ; 'None' objects won't be added
    n += 1
    mask *= 2
  endwhile
  
  ; Special cases
  loadoutRightHand[i] = getEquippedFormRightHand(p)
  loadoutLeftHand[i] = getEquippedFormLeftHand(p)
  loadoutShout[i] = getEquippedShoutOrPower(p)
  
  ; Add time info
  ;float endTime = Utility.getCurrentRealTime()
  dbg("Saved current loadout to " + i, true)
endfunction

function restoreLoadout(int i)
  dbg("Restoring loadout " + i + "...", true)
  ;float startTime = Utility.getCurrentRealTime()
  
  Actor p = Game.GetPlayer()
  FormList loadout = loadouts[i]
  
  int n = loadout.getSize()
  p.unequipAll()
  
  ; Equip apparel
  while n
    n -= 1
    ;/
    Form f = loadout.getAt(n)
    if (f.getType() == 26) ; armor
      Armor a = f as Armor
      Debug.trace("Armor: " + a.getName())
      Enchantment e = a.getEnchantment();
      if e
        int ne = e.getNumEffects()
        while ne
          ne -= 1
          float effectMagnitude = e.getNthEffectMagnitude(ne)
          MagicEffect m = e.getNthEffectMagicEffect(ne)
          string effectName = m.getName()
          Debug.trace(" - " + effectName + " (" + effectMagnitude + ")")
        endwhile
      endif
    endif
    /;
    p.equipItemEx(loadout.getAt(n))
  endwhile
  
  ; Equip special cases
  setEquippedFormRightHand(p, loadoutRightHand[i])
  setEquippedFormLeftHand(p, loadoutLeftHand[i])
  setEquippedShoutOrPower(p, loadoutShout[i])
    
  ;float endTime = Utility.getCurrentRealTime()
  ;dbg("Restored loadout from " + i)
endfunction

string function versionToString(float v)
  int a = (v * 100) as int ; 2.044 becomes 204
  int b = a / 100 ; b := 2
  int c = a - b * 100 ; c := 204 - 200 = 4
  if c < 10
    return b + ".0" + c ; return 2.04
  endif
  return b + "." + c
endfunction

; -----------------------------------------------------------
; EVENTS
; -----------------------------------------------------------

event OnInit()
  dbg("Thank you for installing Loadout!", true)
endevent

event OnGameLoad()
  gotoState("Updating")
  dbg("Checking for updates...")

  dbg(Dutil)
  dbg(Dutil.formTypeAmmo)
  int x = Dutil.formTypeAmmo
  dbg(x)

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
  if version < 0.12
    version = 0.12
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
  gotoState("")
endevent

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
  
  GotoState("")
endevent

state Busy
  event OnKeyDown(int k)
    dbg("I'm busy")
  endevent
endstate

state Updating
  event OnKeyDown(int k)
  endevent
  event OnKeyUp(int k, float holdTime)
  endevent
endstate
