scriptname DeazurainUtility extends DeazurainQuest
{Utility functions}

; -----------------------------------------------------------
; DESCRIPTION
; -----------------------------------------------------------

;/

/;

; -----------------------------------------------------------
; CONSTANTS
; -----------------------------------------------------------

; http://www.creationkit.com/GetType_-_Form
int property formTypeANIO = 83 autoreadonly
int property formTypeARMA = 102 autoreadonly
int property formTypeAcousticSpace = 16 autoreadonly
int property formTypeAction = 6 autoreadonly
int property formTypeActivator = 24 autoreadonly
int property formTypeActorValueInfo = 95 autoreadonly
int property formTypeAddonNode = 94 autoreadonly
int property formTypeAmmo = 42 autoreadonly
int property formTypeApparatus = 33 autoreadonly
int property formTypeArmor = 26 autoreadonly
int property formTypeArrowProjectile = 64 autoreadonly
int property formTypeArt = 125 autoreadonly
int property formTypeAssociationType = 123 autoreadonly
int property formTypeBarrierProjectile = 69 autoreadonly
int property formTypeBeamProjectile = 66 autoreadonly
int property formTypeBodyPartData = 93 autoreadonly
int property formTypeBook = 27 autoreadonly
int property formTypeCameraPath = 97 autoreadonly
int property formTypeCameraShot = 96 autoreadonly
int property formTypeCell = 60 autoreadonly
int property formTypeCharacter = 62 autoreadonly
int property formTypeClass = 10 autoreadonly
int property formTypeClimate = 55 autoreadonly
int property formTypeCollisionLayer = 132 autoreadonly
int property formTypeColorForm = 133 autoreadonly
int property formTypeCombatStyle = 80 autoreadonly
int property formTypeConeProjectile = 68 autoreadonly
int property formTypeConstructibleObject = 49 autoreadonly
int property formTypeContainer = 28 autoreadonly
int property formTypeDLVW = 117 autoreadonly
int property formTypeDebris = 88 autoreadonly
int property formTypeDefaultObject = 107 autoreadonly
int property formTypeDialogueBranch = 115 autoreadonly
int property formTypeDoor = 29 autoreadonly
int property formTypeDualCastData = 129 autoreadonly
int property formTypeEffectSetting = 18 autoreadonly
int property formTypeEffectShader = 85 autoreadonly
int property formTypeEnchantment = 21 autoreadonly
int property formTypeEncounterZone = 103 autoreadonly
int property formTypeEquipSlot = 120 autoreadonly
int property formTypeExplosion = 87 autoreadonly
int property formTypeEyes = 13 autoreadonly
int property formTypeFaction = 11 autoreadonly
int property formTypeFlameProjectile = 67 autoreadonly
int property formTypeFlora = 39 autoreadonly
int property formTypeFootstep = 110 autoreadonly
int property formTypeFootstepSet = 111 autoreadonly
int property formTypeFurniture = 40 autoreadonly
int property formTypeGMST = 3 autoreadonly
int property formTypeGlobal = 9 autoreadonly
int property formTypeGrass = 37 autoreadonly
int property formTypeGrenadeProjectile = 65 autoreadonly
int property formTypeGroup = 2 autoreadonly
int property formTypeHazard = 51 autoreadonly
int property formTypeHeadPart = 12 autoreadonly
int property formTypeIdle = 78 autoreadonly
int property formTypeIdleMarker = 47 autoreadonly
int property formTypeImageSpace = 89 autoreadonly
int property formTypeImageSpaceModifier = 90 autoreadonly
int property formTypeImpactData = 100 autoreadonly
int property formTypeImpactDataSet = 101 autoreadonly
int property formTypeIngredient = 30 autoreadonly
int property formTypeKey = 45 autoreadonly
int property formTypeKeyword = 4 autoreadonly
int property formTypeLand = 72 autoreadonly
int property formTypeLandTexture = 20 autoreadonly
int property formTypeLeveledCharacter = 44 autoreadonly
int property formTypeLeveledItem = 53 autoreadonly
int property formTypeLeveledSpell = 82 autoreadonly
int property formTypeLight = 31 autoreadonly
int property formTypeLightingTemplate = 108 autoreadonly
int property formTypeList = 91 autoreadonly
int property formTypeLoadScreen = 81 autoreadonly
int property formTypeLocation = 104 autoreadonly
int property formTypeLocationRef = 5 autoreadonly
int property formTypeMaterial = 126 autoreadonly
int property formTypeMaterialType = 99 autoreadonly
int property formTypeMenuIcon = 8 autoreadonly
int property formTypeMessage = 105 autoreadonly
int property formTypeMisc = 32 autoreadonly
int property formTypeMissileProjectile = 63 autoreadonly
int property formTypeMovableStatic = 36 autoreadonly
int property formTypeMovementType = 127 autoreadonly
int property formTypeMusicTrack = 116 autoreadonly
int property formTypeMusicType = 109 autoreadonly
int property formTypeNAVI = 59 autoreadonly
int property formTypeNPC = 43 autoreadonly
int property formTypeNavMesh = 73 autoreadonly
int property formTypeNone = 0 autoreadonly
int property formTypeNote = 48 autoreadonly
int property formTypeOutfit = 124 autoreadonly
int property formTypePHZD = 70 autoreadonly
int property formTypePackage = 79 autoreadonly
int property formTypePerk = 92 autoreadonly
int property formTypePotion = 46 autoreadonly
int property formTypeProjectile = 50 autoreadonly
int property formTypeQuest = 77 autoreadonly
int property formTypeRace = 14 autoreadonly
int property formTypeRagdoll = 106 autoreadonly
int property formTypeReference = 61 autoreadonly
int property formTypeReferenceEffect = 57 autoreadonly
int property formTypeRegion = 58 autoreadonly
int property formTypeRelationship = 121 autoreadonly
int property formTypeReverbParam = 134 autoreadonly
int property formTypeScene = 122 autoreadonly
int property formTypeScript = 19 autoreadonly
int property formTypeScrollItem = 23 autoreadonly
int property formTypeShaderParticleGeometryData = 56 autoreadonly
int property formTypeShout = 119 autoreadonly
int property formTypeSkill = 17 autoreadonly
int property formTypeSoulGem = 52 autoreadonly
int property formTypeSound = 15 autoreadonly
int property formTypeSoundCategory = 130 autoreadonly
int property formTypeSoundDescriptor = 128 autoreadonly
int property formTypeSoundOutput = 131 autoreadonly
int property formTypeSpell = 22 autoreadonly
int property formTypeStatic = 34 autoreadonly
int property formTypeStaticCollection = 35 autoreadonly
int property formTypeStoryBranchNode = 112 autoreadonly
int property formTypeStoryEventNode = 114 autoreadonly
int property formTypeStoryQuestNode = 113 autoreadonly
int property formTypeTES4 = 1 autoreadonly
int property formTypeTLOD = 74 autoreadonly
int property formTypeTOFT = 86 autoreadonly
int property formTypeTalkingActivator = 25 autoreadonly
int property formTypeTextureSet = 7 autoreadonly
int property formTypeTopic = 75 autoreadonly
int property formTypeTopicInfo = 76 autoreadonly
int property formTypeTree = 38 autoreadonly
int property formTypeVoiceType = 98 autoreadonly
int property formTypeWater = 84 autoreadonly
int property formTypeWeapon = 41 autoreadonly
int property formTypeWeather = 54 autoreadonly
int property formTypeWordOfPower = 118 autoreadonly
int property formTypeWorldSpace = 71 autoreadonly

; http://www.creationkit.com/Input_Script#DXScanCodes
int property keyEscape = 0x01 autoreadonly
int property key1 = 0x02 autoreadonly
int property key2 = 0x03 autoreadonly
int property key3 = 0x04 autoreadonly
int property key4 = 0x05 autoreadonly
int property key5 = 0x06 autoreadonly
int property key6 = 0x07 autoreadonly
int property key7 = 0x08 autoreadonly
int property key8 = 0x09 autoreadonly
int property key9 = 0x0A autoreadonly
int property key0 = 0x0B autoreadonly
int property keyMinus = 0x0C autoreadonly
int property keyEquals = 0x0D autoreadonly
int property keyBackspace = 0x0E autoreadonly
int property keyTab = 0x0F autoreadonly
int property keyQ = 0x10 autoreadonly
int property keyW = 0x11 autoreadonly
int property keyE = 0x12 autoreadonly
int property keyR = 0x13 autoreadonly
int property keyT = 0x14 autoreadonly
int property keyY = 0x15 autoreadonly
int property keyU = 0x16 autoreadonly
int property keyI = 0x17 autoreadonly
int property keyO = 0x18 autoreadonly
int property keyP = 0x19 autoreadonly
int property keyLeftBracket = 0x1A autoreadonly
int property keyRightBracket = 0x1B autoreadonly
int property keyEnter = 0x1C autoreadonly
int property keyLeftControl = 0x1D autoreadonly
int property keyA = 0x1E autoreadonly
int property keyS = 0x1F autoreadonly
int property keyD = 0x20 autoreadonly
int property keyF = 0x21 autoreadonly
int property keyG = 0x22 autoreadonly
int property keyH = 0x23 autoreadonly
int property keyJ = 0x24 autoreadonly
int property keyK = 0x25 autoreadonly
int property keyL = 0x26 autoreadonly
int property keySemicolon = 0x27 autoreadonly
int property keyApostrophe = 0x28 autoreadonly
int property keyTilde = 0x29 autoreadonly
int property keyLeftShift = 0x2A autoreadonly
int property keyBackSlash = 0x2B autoreadonly
int property keyZ = 0x2C autoreadonly
int property keyX = 0x2D autoreadonly
int property keyC = 0x2E autoreadonly
int property keyV = 0x2F autoreadonly
int property keyB = 0x30 autoreadonly
int property keyN = 0x31 autoreadonly
int property keyM = 0x32 autoreadonly
int property keyComma = 0x33 autoreadonly
int property keyPeriod = 0x34 autoreadonly
int property keyForwardSlash   = 0x35 autoreadonly
int property keyRightShift = 0x36 autoreadonly
int property keyNumMultiply = 0x37 autoreadonly
int property keyLeftAlt = 0x38 autoreadonly
int property keySpacebar = 0x39 autoreadonly
int property keyCapsLock = 0x3A autoreadonly
int property keyF1 = 0x3B autoreadonly
int property keyF2 = 0x3C autoreadonly
int property keyF3 = 0x3D autoreadonly
int property keyF4 = 0x3E autoreadonly
int property keyF5 = 0x3F autoreadonly
int property keyF6 = 0x40 autoreadonly
int property keyF7 = 0x41 autoreadonly
int property keyF8 = 0x42 autoreadonly
int property keyF9 = 0x43 autoreadonly
int property keyF10 = 0x44 autoreadonly
int property keyNumLock = 0x45 autoreadonly
int property keyScrollLock = 0x46 autoreadonly
int property keyNum7 = 0x47 autoreadonly
int property keyNum8 = 0x48 autoreadonly
int property keyNum9 = 0x49 autoreadonly
int property keyNumMinus = 0x4A autoreadonly
int property keyNum4 = 0x4B autoreadonly
int property keyNum5 = 0x4C autoreadonly
int property keyNum6 = 0x4D autoreadonly
int property keyNumPlus = 0x4E autoreadonly
int property keyNum1 = 0x4F autoreadonly
int property keyNum2 = 0x50 autoreadonly
int property keyNum3 = 0x51 autoreadonly
int property keyNum0 = 0x52 autoreadonly
int property keyNumDot = 0x53 autoreadonly
int property keyF11 = 0x57 autoreadonly
int property keyF12 = 0x58 autoreadonly
int property keyNumEnter = 0x9C autoreadonly
int property keyRightControl = 0x9D autoreadonly
int property keyNumDivide = 0xB5 autoreadonly
int property keyRightAlt = 0xB8 autoreadonly
int property keyHome = 0xC7 autoreadonly
int property keyUpArrow = 0xC8 autoreadonly
int property keyPgUp = 0xC9 autoreadonly
int property keyLeftArrow = 0xCB autoreadonly
int property keyRightArrow = 0xCD autoreadonly
int property keyEnd = 0xCF autoreadonly
int property keyDownArrow = 0xD0 autoreadonly
int property keyPgDown = 0xD1 autoreadonly
int property keyInsert = 0xD2 autoreadonly
int property keyDelete = 0xD3 autoreadonly
int property keyLeftMouseButton = 0x100 autoreadonly
int property keyRightMouseButton = 0x101 autoreadonly
int property keyMiddleMouseButton = 0x102 autoreadonly
int property keyMouseButton3 = 0x103 autoreadonly
int property keyMouseButton4 = 0x104 autoreadonly
int property keyMouseButton5 = 0x105 autoreadonly
int property keyMouseButton6 = 0x106 autoreadonly
int property keyMouseButton7 = 0x107 autoreadonly
int property keyMouseWheelUp = 0x108 autoreadonly
int property keyMouseWheelDown = 0x109 autoreadonly
; Supported GamePad buttons:
int property gamepadUp = 0x10A autoreadonly
int property gamepadDown = 0x10B autoreadonly
int property gamepadLeft = 0x10C autoreadonly
int property gamepadRight = 0x10D autoreadonly
int property gamepadStart = 0x10E autoreadonly
int property gamepadBack = 0x10F autoreadonly
int property gamepadLeftThumb = 0x110 autoreadonly
int property gamepadRightThumb = 0x111 autoreadonly
int property gamepadLeftShoulder = 0x112 autoreadonly
int property gamepadRightShoulder = 0x113 autoreadonly
int property gamepadA = 0x114 autoreadonly
int property gamepadB = 0x115 autoreadonly
int property gamepadX = 0x116 autoreadonly
int property gamepadY = 0x117 autoreadonly
int property gamepadLT = 0x118 autoreadonly
int property gamepadRT = 0x119 autoreadonly

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

bool[] keyStates

; -----------------------------------------------------------
; FUNCTIONS
; -----------------------------------------------------------

; Unfortunately does not work for weird stuff like torches
Form function getEquippedFormLeftHand(Actor a) global
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
function setEquippedFormLeftHand(Actor a, Form f) global
  if f
    if f.getType() == 22 ; formTypeSpell
      a.equipSpell(f as Spell, 0) ; left hand
    else
      a.equipItemEx(f, 2) ; left hand
    endif
  endif
endfunction

Form function getEquippedFormRightHand(Actor a) global
  int t = a.getEquippedItemType(1) ; right hand
  if t == 0 ; itemTypeNothing, can't use it for some reason
    return None
  elseif t == 9 ; itemTypeSpell, can't use it for some reason
    return a.getEquippedSpell(1) ; right hand
  endif
  return a.getEquippedWeapon(false) ; right hand
endfunction

; Does not unequip when f = None
function setEquippedFormRightHand(Actor a, Form f) global
  if f
    if f.getType() == 22 ; formTypeSpell
      a.equipSpell(f as Spell, 1) ; right hand
    else
      a.equipItemEx(f, 1) ; right hand
    endif
  endif
endfunction

Form function getEquippedShoutOrPower(Actor a) global
  Form t = a.getEquippedShout()
  if t
    return t
  endif
  return a.getEquippedSpell(2)
endfunction

; Unequips when f == None
function setEquippedShoutOrPower(Actor a, Form f) global
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

function dbg(string m, bool notification = false) global
  if notification
    Debug.notification(m)
  endif
  if !Debug.traceUser("DeazurainLoadout", m)
    Debug.openUserLog("DeazurainLoadout")
    if !Debug.traceUser("DeazurainLoadout", m)
      Debug.trace("DeazurainLoadout: " + m)
    endif
  endif
endfunction

; Converts a two decimal version number to a string
string function versionToString(float v) global
  int a = (v * 100) as int ; 2.044 becomes 204
  int b = a / 100 ; b := 2
  int c = a - b * 100 ; c := 204 - 200 = 4
  if c < 10
    return b + ".0" + c ; return 2.04
  endif
  return b + "." + c
endfunction

;Reset the key states, should do this on script load
function resetKeyStates()
  int i = keyStates.length
  while i
    i -= 1
    keyStates[i] = false
  endwhile
endfunction

; nasty fix because isKeyPressed fails for gamepad keys
function updateKeyState(int keyCode, bool down)
  if keyCode >= gamepadUp && keyCode <= gamepadRT ; is a gamepad key
    int k = keyCode - gamepadUp
    keyStates[k] = down
  endif
endfunction

; custom isKeyPressed that works for gamepad
bool function isKeyPressed(int keyCode)
  if keyCode >= gamepadUp && keyCode <= gamepadRT ; is a gamepad key
    int k = keyCode - gamepadUp
    return keyStates[k]
  endif
  return Input.isKeyPressed(keyCode)
endfunction

; -----------------------------------------------------------
; EVENTS
; -----------------------------------------------------------

event OnInit()
  keyStates = new bool[16]
  registerForKey(gamepadUp)
  registerForKey(gamepadDown)
  registerForKey(gamepadLeft)
  registerForKey(gamepadRight)
  registerForKey(gamepadStart)
  registerForKey(gamepadBack)
  registerForKey(gamepadLeftThumb)
  registerForKey(gamepadRightThumb)
  registerForKey(gamepadLeftShoulder)
  registerForKey(gamepadRightShoulder)
  registerForKey(gamepadA)
  registerForKey(gamepadB)
  registerForKey(gamepadX)
  registerForKey(gamepadY)
  registerForKey(gamepadLT)
  registerForKey(gamepadRT)
endevent

; Called from the player ReferenceAlias by DeazurainOnGameLoad
event OnGameLoad()
  resetKeyStates()
endevent

event OnKeyDown(int keyCode)
  updateKeyState(keyCode, true) ; nasty fix because isKeyPressed fails for gamepad keys
endevent

event OnKeyUp(int keyCode, float holdTime)
  updateKeyState(keyCode, false) ; nasty fix because isKeyPressed fails for gamepad keys
endevent