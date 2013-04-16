scriptname DeazurainLoadoutQuest extends Quest
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
; CONSTANTS
; -----------------------------------------------------------

; http://www.creationkit.com/GetType_-_Form
int property formTypeAmmo = 42 autoreadonly
int property formTypeArmor = 26 autoreadonly
int property formTypeShout = 119 autoreadonly
int property formTypeSpell = 22 autoreadonly
int property formTypeWeapon = 41 autoreadonly

; http://www.creationkit.com/Input_Script#DXScanCodes
int property keyCode1 = 2 autoreadonly
int property keyCode2 = 3 autoreadonly
int property keyCode3 = 4 autoreadonly
int property keyCode4 = 5 autoreadonly
int property keyCode5 = 6 autoreadonly
int property keyCode6 = 7 autoreadonly
int property keyCode7 = 8 autoreadonly
int property keyCode8 = 9 autoreadonly
int property keyCode9 = 10 autoreadonly
int property keyCode0 = 11 autoreadonly
int property keyCodeAltLeft = 56 autoreadonly
int property keyCodeAltRight = 184 autoreadonly
; controller
int property keyCodeDPadLeft = 268 autoreadonly
int property keyCodeDPadRight = 269 autoreadonly
int property keyCodeStickLeft = 272 autoreadonly
int property keyCodeStickRight = 273 autoreadonly

; http://www.creationkit.com/GetEquippedItemType_-_Actor
int property itemTypeNothing = 0 autoreadonly
int property itemTypeSword = 1 autoreadonly
int property itemTypeDagger = 2 autoreadonly
int property itemTypeAxe = 3 autoreadonly
int property itemTypeMace = 4 autoreadonly
int property itemType2HSword = 5 autoreadonly
int property itemType2HAxeMace = 6 autoreadonly ; there is no separate property for 2H axe and 2H mace
int property itemTypeBow = 7 autoreadonly
int property itemTypeStaff = 8 autoreadonly
int property itemTypeSpell = 9 autoreadonly
int property itemTypeShield = 10 autoreadonly
int property itemTypeTorch = 11 autoreadonly
int property itemTypeCrossbow = 12 autoreadonly

; -----------------------------------------------------------
; VARIABLES
; -----------------------------------------------------------

FormList[] property loadouts auto

Form[] loadoutLeftHand
Form[] loadoutRightHand
Form[] loadoutShout ; Contains a shout or power

bool keyStateStickRight = false ; nasty fix

float version = 0.0

; -----------------------------------------------------------
; FUNCTIONS
; -----------------------------------------------------------

; Unfortunately does not work for weird stuff like torches
Form function getEquippedFormLeftHand(Actor a)
  int t = a.getEquippedItemType(0) ; left hand
  if t == 0 ; itemTypeNothing, can't use the property from global function
    return None
  elseif t == 9 ; itemTypeSpell, can't use the property from global function
    return a.getEquippedSpell(0) ; left hand
  elseif t == 10 ; itemTypeShield, can't use the property from global function
    return a.getEquippedShield() ; always the left hand
  elseif t == 11 ; itemTypeTorch, can't use the property from global function
    return None ; searching the inventory for an equipped Torch item takes too long
  endif
  return a.getEquippedWeapon(true) ; left hand
endfunction

; Does not unequip when f == None
function setEquippedFormLeftHand(Actor a, Form f)
  if f
    if f.getType() == 22 ; formTypeSpell
      a.equipSpell(f as Spell, 0) ; left hand
    else
      a.equipItemEx(f, 2) ; left hand
    endif
  endif
endfunction

Form function getEquippedFormRightHand(Actor a)
  int t = a.getEquippedItemType(1) ; right hand
  if t == 0 ; itemTypeNothing, can't use it for some reason
    return None
  elseif t == 9 ; itemTypeSpell, can't use it for some reason
    return a.getEquippedSpell(1) ; right hand
  endif
  return a.getEquippedWeapon(false) ; right hand
endfunction

; Does not unequip when f = None
function setEquippedFormRightHand(Actor a, Form f)
  if f
    if f.getType() == 22 ; formTypeSpell
      a.equipSpell(f as Spell, 1) ; right hand
    else
      a.equipItemEx(f, 1) ; right hand
    endif
  endif
endfunction

Form function getEquippedShoutOrPower(Actor a)
  Form t = a.getEquippedShout()
  if t
    return t
  endif
  return a.getEquippedSpell(2)
endfunction

; Unequips when f == None
function setEquippedShoutOrPower(Actor a, Form f)
  if f
    if f.getType() == 22 ; formTypeSpell
      a.equipSpell(f as Spell, 2) ; Equip power
    else
      a.equipShout(f as Shout)
    endif
  else ; f == None so unequip
    f = a.getEquippedShout()
    if f ; has a shout equipped
      a.unequipShout(f as Shout)
    else ; might have a power equipped
      f = a.getEquippedSpell(2)
      if f ; has a power equipped
        a.unequipSpell(f as Spell, 2) ; Don't know if this is possible, the wiki makes you think its not
      endif
    endif
  endif
endfunction

; should be using versioning to prevent threading issues
; nasty fix because isKeyPressed fails for gamepad keys
function updateKeyStates(int keyCode, bool down)
  if keyCode == keyCodeStickRight
    keyStateStickRight = down
  endif
endfunction

; custom isKeyPressed that works for gamepad (needs tailoring, see updateKeyStates)
bool function isKeyPressed(int k)
  if k == keyCodeStickRight
    return keyStateStickRight
  endif
  return Input.isKeyPressed(k)
endfunction

function dbg(string m, bool notification = false)
  if notification
    Debug.notification(m)
  endif
  Debug.trace("DeazurainLoadout: " + m)
endfunction

function onKeyDownLoadout(int i)
  if Utility.isInMenuMode()
    return
  endif
  
  if isKeyPressed(keyCodeAltLeft) || isKeyPressed(keyCodeAltRight) || isKeyPressed(keyCodeStickRight)
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

function update()
  gotoState("Updating")
  dbg("Checking for updates...")
  float versionOld = version

  if SKSE.getVersion() < 1 || SKSE.getVersionMinor() < 6 || SKSE.getVersionBeta() < 7
    dbg("Loadout cannot function completely because SKSE needs to be updated!", true)
  endif
  
  if version < 0.08
    version = 0.08
    ; create left hand, right hand and shout storage
    ; because they need special treatment
    loadoutLeftHand = new Form[10]
    loadoutRightHand = new Form[10]
    loadoutShout = new Form[10]
  endif
  if version < 0.11
    version = 0.11
    UnregisterForAllKeys(); unregister old keybindings
    RegisterForKey(keyCode0)
    RegisterForKey(keyCode1)
    RegisterForKey(keyCode2)
    RegisterForKey(keyCode3)
    RegisterForKey(keyCode4)
    RegisterForKey(keyCode5)
    RegisterForKey(keyCode6)
    RegisterForKey(keyCode7)
    RegisterForKey(keyCode8)
    RegisterForKey(keyCode9)
    RegisterForKey(keyCodeDPadLeft)
    RegisterForKey(keyCodeDPadRight)
    RegisterForKey(keyCodeStickRight)
  endif
  
  if versionOld == version
    dbg("No updates found")
  else
    dbg("Loadout updated from " + versionToString(versionOld) + " to " + versionToString(version), true)
  endif
  gotoState("")
endfunction

; -----------------------------------------------------------
; EVENTS
; -----------------------------------------------------------

event OnInit()
  dbg("Thank you for installing Loadout!", true)
  update()
endevent

event OnKeyDown(int keyCode)
  GotoState("Busy") ; only do one thing at once

  updateKeyStates(keyCode, true) ; nasty fix because isKeyPressed fails for gamepad keys
  
  if keyCode == keyCode0
    onKeyDownLoadout(0)
  elseif keyCode == keyCode1 || keyCode == keyCodeDPadLeft
    onKeyDownLoadout(1)
  elseif keyCode == keyCode2 || keyCode == keyCodeDPadRight
    onKeyDownLoadout(2)
  elseif keyCode == keyCode3
    onKeyDownLoadout(3)
  elseif keyCode == keyCode4
    onKeyDownLoadout(4)
  elseif keyCode == keyCode5
    onKeyDownLoadout(5)
  elseif keyCode == keyCode6
    onKeyDownLoadout(6)
  elseif keyCode == keyCode7
    onKeyDownLoadout(7)
  elseif keyCode == keyCode8
    onKeyDownLoadout(8)
  elseif keyCode == keyCode9
    onKeyDownLoadout(9)
  endif
  
  GotoState("")
endevent

event OnKeyUp(int k, float holdTime)
  updateKeyStates(k, false) ; nasty fix because isKeyPressed fails for gamepad keys
endevent

state Busy
  event OnKeyDown(int k)
    updateKeyStates(k, true) ; nasty fix because isKeyPressed fails for gamepad keys
    dbg("I'm busy")
  endevent
endstate

state Updating
  event OnKeyDown(int k)
  endevent
  event OnKeyUp(int k, float holdTime)
  endevent
endstate
