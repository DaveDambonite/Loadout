scriptname Loadout extends ReferenceAlias
{The complete Loadout plugin in one file}


;===================
;     Constants

; http://www.creationkit.com/GetType_-_Form
int property FORM_TYPE_ANIO = 83 autoreadonly
int property FORM_TYPE_ARMA = 102 autoreadonly
int property FORM_TYPE_ACOUSTIC_SPACE = 16 autoreadonly
int property FORM_TYPE_ACTION = 6 autoreadonly
int property FORM_TYPE_ACTIVATOR = 24 autoreadonly
int property FORM_TYPE_ACTOR_VALUE_INFO = 95 autoreadonly
int property FORM_TYPE_ADDON_NODE = 94 autoreadonly
int property FORM_TYPE_AMMO = 42 autoreadonly
int property FORM_TYPE_APPARATUS = 33 autoreadonly
int property FORM_TYPE_ARMOR = 26 autoreadonly
int property FORM_TYPE_ARROW_PROJECTILE = 64 autoreadonly
int property FORM_TYPE_ART = 125 autoreadonly
int property FORM_TYPE_ASSOCIATION_TYPE = 123 autoreadonly
int property FORM_TYPE_BARRIER_PROJECTILE = 69 autoreadonly
int property FORM_TYPE_BEAM_PROJECTILE = 66 autoreadonly
int property FORM_TYPE_BODY_PART_DATA = 93 autoreadonly
int property FORM_TYPE_BOOK = 27 autoreadonly
int property FORM_TYPE_CAMERA_PATH = 97 autoreadonly
int property FORM_TYPE_CAMERA_SHOT = 96 autoreadonly
int property FORM_TYPE_CELL = 60 autoreadonly
int property FORM_TYPE_CHARACTER = 62 autoreadonly
int property FORM_TYPE_CLASS = 10 autoreadonly
int property FORM_TYPE_CLIMATE = 55 autoreadonly
int property FORM_TYPE_COLLISION_LAYER = 132 autoreadonly
int property FORM_TYPE_COLOR_FORM = 133 autoreadonly
int property FORM_TYPE_COMBAT_STYLE = 80 autoreadonly
int property FORM_TYPE_CONE_PROJECTILE = 68 autoreadonly
int property FORM_TYPE_CONSTRUCTIBLE_OBJECT = 49 autoreadonly
int property FORM_TYPE_CONTAINER = 28 autoreadonly
int property FORM_TYPE_DLVW = 117 autoreadonly
int property FORM_TYPE_DEBRIS = 88 autoreadonly
int property FORM_TYPE_DEFAULT_OBJECT = 107 autoreadonly
int property FORM_TYPE_DIALOGUE_BRANCH = 115 autoreadonly
int property FORM_TYPE_DOOR = 29 autoreadonly
int property FORM_TYPE_DUAL_CAST_DATA = 129 autoreadonly
int property FORM_TYPE_EFFECT_SETTING = 18 autoreadonly
int property FORM_TYPE_EFFECT_SHADER = 85 autoreadonly
int property FORM_TYPE_ENCHANTMENT = 21 autoreadonly
int property FORM_TYPE_ENCOUNTER_ZONE = 103 autoreadonly
int property FORM_TYPE_EQUIP_SLOT = 120 autoreadonly
int property FORM_TYPE_EXPLOSION = 87 autoreadonly
int property FORM_TYPE_EYES = 13 autoreadonly
int property FORM_TYPE_FACTION = 11 autoreadonly
int property FORM_TYPE_FLAME_PROJECTILE = 67 autoreadonly
int property FORM_TYPE_FLORA = 39 autoreadonly
int property FORM_TYPE_FOOTSTEP = 110 autoreadonly
int property FORM_TYPE_FOOTSTEP_SET = 111 autoreadonly
int property FORM_TYPE_FURNITURE = 40 autoreadonly
int property FORM_TYPE_GMST = 3 autoreadonly
int property FORM_TYPE_GLOBAL = 9 autoreadonly
int property FORM_TYPE_GRASS = 37 autoreadonly
int property FORM_TYPE_GRENADE_PROJECTILE = 65 autoreadonly
int property FORM_TYPE_GROUP = 2 autoreadonly
int property FORM_TYPE_HAZARD = 51 autoreadonly
int property FORM_TYPE_HEAD_PART = 12 autoreadonly
int property FORM_TYPE_IDLE = 78 autoreadonly
int property FORM_TYPE_IDLE_MARKER = 47 autoreadonly
int property FORM_TYPE_IMAGE_SPACE = 89 autoreadonly
int property FORM_TYPE_IMAGE_SPACE_MODIFIER = 90 autoreadonly
int property FORM_TYPE_IMPACT_DATA = 100 autoreadonly
int property FORM_TYPE_IMPACT_DATA_SET = 101 autoreadonly
int property FORM_TYPE_INGREDIENT = 30 autoreadonly
int property FORM_TYPE_KEY = 45 autoreadonly
int property FORM_TYPE_KEYWORD = 4 autoreadonly
int property FORM_TYPE_LAND = 72 autoreadonly
int property FORM_TYPE_LAND_TEXTURE = 20 autoreadonly
int property FORM_TYPE_LEVELED_CHARACTER = 44 autoreadonly
int property FORM_TYPE_LEVELED_ITEM = 53 autoreadonly
int property FORM_TYPE_LEVELED_SPELL = 82 autoreadonly
int property FORM_TYPE_LIGHT = 31 autoreadonly
int property FORM_TYPE_LIGHTING_TEMPLATE = 108 autoreadonly
int property FORM_TYPE_LIST = 91 autoreadonly
int property FORM_TYPE_LOAD_SCREEN = 81 autoreadonly
int property FORM_TYPE_LOCATION = 104 autoreadonly
int property FORM_TYPE_LOCATION_REF = 5 autoreadonly
int property FORM_TYPE_MATERIAL = 126 autoreadonly
int property FORM_TYPE_MATERIAL_TYPE = 99 autoreadonly
int property FORM_TYPE_MENU_ICON = 8 autoreadonly
int property FORM_TYPE_MESSAGE = 105 autoreadonly
int property FORM_TYPE_MISC = 32 autoreadonly
int property FORM_TYPE_MISSILE_PROJECTILE = 63 autoreadonly
int property FORM_TYPE_MOVABLE_STATIC = 36 autoreadonly
int property FORM_TYPE_MOVEMENT_TYPE = 127 autoreadonly
int property FORM_TYPE_MUSIC_TRACK = 116 autoreadonly
int property FORM_TYPE_MUSIC_TYPE = 109 autoreadonly
int property FORM_TYPE_NAVI = 59 autoreadonly
int property FORM_TYPE_NPC = 43 autoreadonly
int property FORM_TYPE_NAV_MESH = 73 autoreadonly
int property FORM_TYPE_NONE = 0 autoreadonly
int property FORM_TYPE_NOTE = 48 autoreadonly
int property FORM_TYPE_OUTFIT = 124 autoreadonly
int property FORM_TYPE_PHZD = 70 autoreadonly
int property FORM_TYPE_PACKAGE = 79 autoreadonly
int property FORM_TYPE_PERK = 92 autoreadonly
int property FORM_TYPE_POTION = 46 autoreadonly
int property FORM_TYPE_PROJECTILE = 50 autoreadonly
int property FORM_TYPE_QUEST = 77 autoreadonly
int property FORM_TYPE_RACE = 14 autoreadonly
int property FORM_TYPE_RAGDOLL = 106 autoreadonly
int property FORM_TYPE_REFERENCE = 61 autoreadonly
int property FORM_TYPE_REFERENCE_EFFECT = 57 autoreadonly
int property FORM_TYPE_REGION = 58 autoreadonly
int property FORM_TYPE_RELATIONSHIP = 121 autoreadonly
int property FORM_TYPE_REVERB_PARAM = 134 autoreadonly
int property FORM_TYPE_SCENE = 122 autoreadonly
int property FORM_TYPE_SCRIPT = 19 autoreadonly
int property FORM_TYPE_SCROLL_ITEM = 23 autoreadonly
int property FORM_TYPE_SHADER_PARTICLE_GEOMETRY_DATA = 56 autoreadonly
int property FORM_TYPE_SHOUT = 119 autoreadonly
int property FORM_TYPE_SKILL = 17 autoreadonly
int property FORM_TYPE_SOUL_GEM = 52 autoreadonly
int property FORM_TYPE_SOUND = 15 autoreadonly
int property FORM_TYPE_SOUND_CATEGORY = 130 autoreadonly
int property FORM_TYPE_SOUND_DESCRIPTOR = 128 autoreadonly
int property FORM_TYPE_SOUND_OUTPUT = 131 autoreadonly
int property FORM_TYPE_SPELL = 22 autoreadonly
int property FORM_TYPE_STATIC = 34 autoreadonly
int property FORM_TYPE_STATIC_COLLECTION = 35 autoreadonly
int property FORM_TYPE_STORY_BRANCH_NODE = 112 autoreadonly
int property FORM_TYPE_STORY_EVENT_NODE = 114 autoreadonly
int property FORM_TYPE_STORY_QUEST_NODE = 113 autoreadonly
int property FORM_TYPE_TES4 = 1 autoreadonly
int property FORM_TYPE_TLOD = 74 autoreadonly
int property FORM_TYPE_TOFT = 86 autoreadonly
int property FORM_TYPE_TALKING_ACTIVATOR = 25 autoreadonly
int property FORM_TYPE_TEXTURE_SET = 7 autoreadonly
int property FORM_TYPE_TOPIC = 75 autoreadonly
int property FORM_TYPE_TOPIC_INFO = 76 autoreadonly
int property FORM_TYPE_TREE = 38 autoreadonly
int property FORM_TYPE_VOICE_TYPE = 98 autoreadonly
int property FORM_TYPE_WATER = 84 autoreadonly
int property FORM_TYPE_WEAPON = 41 autoreadonly
int property FORM_TYPE_WEATHER = 54 autoreadonly
int property FORM_TYPE_WORD_OF_POWER = 118 autoreadonly
int property FORM_TYPE_WORLD_SPACE = 71 autoreadonly

int property LOADOUT_APPAREL_SIZE = 32 autoreadonly
int property LOADOUT_LEFT = 32 autoreadonly
int property LOADOUT_RIGHT = 33 autoreadonly
int property LOADOUT_SHOUT = 34 autoreadonly

; http://www.creationkit.com/Input_Script#DXScanCodes
int property KEY_ESCAPE = 0x01 autoreadonly
int property KEY_1 = 0x02 autoreadonly
int property KEY_2 = 0x03 autoreadonly
int property KEY_3 = 0x04 autoreadonly
int property KEY_4 = 0x05 autoreadonly
int property KEY_5 = 0x06 autoreadonly
int property KEY_6 = 0x07 autoreadonly
int property KEY_7 = 0x08 autoreadonly
int property KEY_8 = 0x09 autoreadonly
int property KEY_9 = 0x0A autoreadonly
int property KEY_0 = 0x0B autoreadonly
int property KEY_MINUS = 0x0C autoreadonly
int property KEY_EQUALS = 0x0D autoreadonly
int property KEY_BACKSPACE = 0x0E autoreadonly
int property KEY_TAB = 0x0F autoreadonly
int property KEY_Q = 0x10 autoreadonly
int property KEY_W = 0x11 autoreadonly
int property KEY_E = 0x12 autoreadonly
int property KEY_R = 0x13 autoreadonly
int property KEY_T = 0x14 autoreadonly
int property KEY_Y = 0x15 autoreadonly
int property KEY_U = 0x16 autoreadonly
int property KEY_I = 0x17 autoreadonly
int property KEY_O = 0x18 autoreadonly
int property KEY_P = 0x19 autoreadonly
int property KEY_LEFT_BRACKET = 0x1A autoreadonly
int property KEY_RIGHT_BRACKET = 0x1B autoreadonly
int property KEY_ENTER = 0x1C autoreadonly
int property KEY_LEFT_CONTROL = 0x1D autoreadonly
int property KEY_A = 0x1E autoreadonly
int property KEY_S = 0x1F autoreadonly
int property KEY_D = 0x20 autoreadonly
int property KEY_F = 0x21 autoreadonly
int property KEY_G = 0x22 autoreadonly
int property KEY_H = 0x23 autoreadonly
int property KEY_J = 0x24 autoreadonly
int property KEY_K = 0x25 autoreadonly
int property KEY_L = 0x26 autoreadonly
int property KEY_SEMICOLON = 0x27 autoreadonly
int property KEY_APOSTROPHE = 0x28 autoreadonly
int property KEY_TILDE = 0x29 autoreadonly
int property KEY_LEFT_SHIFT = 0x2A autoreadonly
int property KEY_BACK_SLASH = 0x2B autoreadonly
int property KEY_Z = 0x2C autoreadonly
int property KEY_X = 0x2D autoreadonly
int property KEY_C = 0x2E autoreadonly
int property KEY_V = 0x2F autoreadonly
int property KEY_B = 0x30 autoreadonly
int property KEY_N = 0x31 autoreadonly
int property KEY_M = 0x32 autoreadonly
int property KEY_COMMA = 0x33 autoreadonly
int property KEY_PERIOD = 0x34 autoreadonly
int property KEY_FORWARD_SLASH   = 0x35 autoreadonly
int property KEY_RIGHT_SHIFT = 0x36 autoreadonly
int property KEY_NUM_MULTIPLY = 0x37 autoreadonly
int property KEY_LEFT_ALT = 0x38 autoreadonly
int property KEY_SPACEBAR = 0x39 autoreadonly
int property KEY_CAPS_LOCK = 0x3A autoreadonly
int property KEY_F1 = 0x3B autoreadonly
int property KEY_F2 = 0x3C autoreadonly
int property KEY_F3 = 0x3D autoreadonly
int property KEY_F4 = 0x3E autoreadonly
int property KEY_F5 = 0x3F autoreadonly
int property KEY_F6 = 0x40 autoreadonly
int property KEY_F7 = 0x41 autoreadonly
int property KEY_F8 = 0x42 autoreadonly
int property KEY_F9 = 0x43 autoreadonly
int property KEY_F10 = 0x44 autoreadonly
int property KEY_NUM_LOCK = 0x45 autoreadonly
int property KEY_SCROLL_LOCK = 0x46 autoreadonly
int property KEY_NUM7 = 0x47 autoreadonly
int property KEY_NUM8 = 0x48 autoreadonly
int property KEY_NUM9 = 0x49 autoreadonly
int property KEY_NUM_MINUS = 0x4A autoreadonly
int property KEY_NUM4 = 0x4B autoreadonly
int property KEY_NUM5 = 0x4C autoreadonly
int property KEY_NUM6 = 0x4D autoreadonly
int property KEY_NUM_PLUS = 0x4E autoreadonly
int property KEY_NUM1 = 0x4F autoreadonly
int property KEY_NUM2 = 0x50 autoreadonly
int property KEY_NUM3 = 0x51 autoreadonly
int property KEY_NUM0 = 0x52 autoreadonly
int property KEY_NUM_DOT = 0x53 autoreadonly
int property KEY_F11 = 0x57 autoreadonly
int property KEY_F12 = 0x58 autoreadonly
int property KEY_NUM_ENTER = 0x9C autoreadonly
int property KEY_RIGHT_CONTROL = 0x9D autoreadonly
int property KEY_NUM_DIVIDE = 0xB5 autoreadonly
int property KEY_RIGHT_ALT = 0xB8 autoreadonly
int property KEY_HOME = 0xC7 autoreadonly
int property KEY_UP_ARROW = 0xC8 autoreadonly
int property KEY_PG_UP = 0xC9 autoreadonly
int property KEY_LEFT_ARROW = 0xCB autoreadonly
int property KEY_RIGHT_ARROW = 0xCD autoreadonly
int property KEY_END = 0xCF autoreadonly
int property KEY_DOWN_ARROW = 0xD0 autoreadonly
int property KEY_PG_DOWN = 0xD1 autoreadonly
int property KEY_INSERT = 0xD2 autoreadonly
int property KEY_DELETE = 0xD3 autoreadonly
int property KEY_LEFT_MOUSE_BUTTON = 0x100 autoreadonly
int property KEY_RIGHT_MOUSE_BUTTON = 0x101 autoreadonly
int property KEY_MIDDLE_MOUSE_BUTTON = 0x102 autoreadonly
int property KEY_MOUSE_BUTTON3 = 0x103 autoreadonly
int property KEY_MOUSE_BUTTON4 = 0x104 autoreadonly
int property KEY_MOUSE_BUTTON5 = 0x105 autoreadonly
int property KEY_MOUSE_BUTTON6 = 0x106 autoreadonly
int property KEY_MOUSE_BUTTON7 = 0x107 autoreadonly
int property KEY_MOUSE_WHEEL_UP = 0x108 autoreadonly
int property KEY_MOUSE_WHEEL_DOWN = 0x109 autoreadonly
; Supported GamePad buttons:
int property GAMEPAD_UP = 0x10A autoreadonly
int property GAMEPAD_DOWN = 0x10B autoreadonly
int property GAMEPAD_LEFT = 0x10C autoreadonly
int property GAMEPAD_RIGHT = 0x10D autoreadonly
int property GAMEPAD_START = 0x10E autoreadonly
int property GAMEPAD_BACK = 0x10F autoreadonly
int property GAMEPAD_LEFT_THUMB = 0x110 autoreadonly
int property GAMEPAD_RIGHT_THUMB = 0x111 autoreadonly
int property GAMEPAD_LEFT_SHOULDER = 0x112 autoreadonly
int property GAMEPAD_RIGHT_SHOULDER = 0x113 autoreadonly
int property GAMEPAD_A = 0x114 autoreadonly
int property GAMEPAD_B = 0x115 autoreadonly
int property GAMEPAD_X = 0x116 autoreadonly
int property GAMEPAD_Y = 0x117 autoreadonly
int property GAMEPAD_LT = 0x118 autoreadonly
int property GAMEPAD_RT = 0x119 autoreadonly

; http://www.creationkit.com/GetEquippedItemType_-_Actor
int property ITEM_TYPE_NOTHING = 0 autoreadonly
int property ITEM_TYPE_SWORD = 1 autoreadonly
int property ITEM_TYPE_DAGGER = 2 autoreadonly
int property ITEM_TYPE_AXE = 3 autoreadonly
int property ITEM_TYPE_MACE = 4 autoreadonly
int property ITEM_TYPE2HSWORD = 5 autoreadonly
int property ITEM_TYPE2HAXE_MACE = 6 autoreadonly ; there is no separate property FOR 2H axe and 2H mace
int property ITEM_TYPE_BOW = 7 autoreadonly
int property ITEM_TYPE_STAFF = 8 autoreadonly
int property ITEM_TYPE_SPELL = 9 autoreadonly
int property ITEM_TYPE_SHIELD = 10 autoreadonly
int property ITEM_TYPE_TORCH = 11 autoreadonly
int property ITEM_TYPE_CROSSBOW = 12 autoreadonly
;     Constants
;===================



;====================================
;     Debugging and notification
function dbg(string m)
	if !Debug.traceUser("Loadout", m)
		Debug.openUserLog("Loadout")
		if !Debug.traceUser("Loadout", m)
			Debug.trace("Loadout: " + m)
		endif
	endif
endfunction

function print(string m)
	Debug.notification(m)
	dbg(m)
endfunction
;     Debugging and notification
;====================================



;==========================
;     Player reference
Actor player

function initializePlayer()
	player = getReference() as Actor
endfunction
;     Player reference
;==========================



;=====================
;      Versioning     
int _major
int _minor
int _patch

bool function isNewerVersion(int major, int minor, int patch)
	return !(_major < major || _minor < minor || _patch < patch)
endfunction

function setVersion(int major, int minor, int patch)
	_major = major
	_minor = minor
	_patch = patch
endfunction

string function getVersion()
	return _major + "." + _minor + "." + _patch
endfunction

function initializeVersion()
	setVersion(2,0,0)
endfunction
;     Versioning    
;====================



;============================
;     Loadout management
;0-31: equipment, 32: left, 33: right, 34: shout
Form[] loadoutFormsCurrent
Form[] loadoutForms0
Form[] loadoutForms1
Form[] loadoutForms2
Form[] loadoutForms3
Form[] loadoutForms4
Form[] loadoutForms5
Form[] loadoutForms6
Form[] loadoutForms7
Form[] loadoutForms8
Form[] loadoutForms9

int[] loadoutHashesCurrent
int[] loadoutHashes0
int[] loadoutHashes1
int[] loadoutHashes2
int[] loadoutHashes3
int[] loadoutHashes4
int[] loadoutHashes5
int[] loadoutHashes6
int[] loadoutHashes7
int[] loadoutHashes8
int[] loadoutHashes9

function initializeLoadouts()
	loadoutFormsCurrent = new Form[35]
	loadoutForms0 = new Form[35]
	loadoutForms1 = new Form[35]
	loadoutForms2 = new Form[35]
	loadoutForms3 = new Form[35]
	loadoutForms4 = new Form[35]
	loadoutForms5 = new Form[35]
	loadoutForms6 = new Form[35]
	loadoutForms7 = new Form[35]
	loadoutForms8 = new Form[35]
	loadoutForms9 = new Form[35]

	loadoutHashesCurrent = new int[35]
	loadoutHashes0 = new int[35]
	loadoutHashes1 = new int[35]
	loadoutHashes2 = new int[35]
	loadoutHashes3 = new int[35]
	loadoutHashes4 = new int[35]
	loadoutHashes5 = new int[35]
	loadoutHashes6 = new int[35]
	loadoutHashes7 = new int[35]
	loadoutHashes8 = new int[35]
	loadoutHashes9 = new int[35]

	player.unequipAll()
endfunction

Form[] function getLoadoutForms(int i)
	if i == 0
		return loadoutForms0
	elseif i == 1
		return loadoutForms1
	elseif i == 2
		return loadoutForms2
	elseif i == 3
		return loadoutForms3
	elseif i == 4
		return loadoutForms4
	elseif i == 5
		return loadoutForms5
	elseif i == 6
		return loadoutForms6
	elseif i == 7
		return loadoutForms7
	elseif i == 8
		return loadoutForms8
	elseif i == 9
		return loadoutForms9
	endif
endfunction

int[] function getLoadoutHashes(int i)
	if i == 0
		return loadoutHashes0
	elseif i == 1
		return loadoutHashes1
	elseif i == 2
		return loadoutHashes2
	elseif i == 3
		return loadoutHashes3
	elseif i == 4
		return loadoutHashes4
	elseif i == 5
		return loadoutHashes5
	elseif i == 6
		return loadoutHashes6
	elseif i == 7
		return loadoutHashes7
	elseif i == 8
		return loadoutHashes8
	elseif i == 9
		return loadoutHashes9
	endif
endfunction

function saveLoadout(int i)
	print("Saving loadout " + i + "...")

	Form[] forms = getLoadoutForms(i)
	int[] hashes = getLoadoutHashes(i)

	; Lets hope the equipment doesn't change :3
	int n = LOADOUT_APPAREL_SIZE
	while n
		n -= 1
		forms[n] = loadoutFormsCurrent[n]
		hashes[n] = loadoutHashesCurrent[n]
	endwhile
	
	; Special cases
	forms[LOADOUT_LEFT] = player.getEquippedObject(0)
	hashes[LOADOUT_LEFT] = player.getEquippedItemId(0)
	forms[LOADOUT_RIGHT] = player.getEquippedObject(1)
	hashes[LOADOUT_RIGHT] = player.getEquippedItemId(1)

	FORMS[LOADOUT_SHOUT] = getEquippedShoutOrPower(player)
	
	print("Saved current loadout to " + i)

	string s = "Loadout " + i + ": "
	n = 0
	while n < LOADOUT_APPAREL_SIZE
		if forms[n] != None || hashes[n] != 0
			s += "\n\t" + n + "\tname: " + forms[n].getName() + ",\thash: " + hashes[n]
		endif
		n += 1
	endwhile
	s += "\n\tLeft\tname: " + forms[LOADOUT_LEFT].getName() + ",\thash: " + hashes[LOADOUT_LEFT]
	s += "\n\tRight\tname: " + forms[LOADOUT_RIGHT].getName() + ",\thash: " + hashes[LOADOUT_RIGHT]
	s += "\n\tShout\tname: " + forms[LOADOUT_SHOUT].getName() + ",\thash: " + hashes[LOADOUT_SHOUT]
	dbg(s)
endfunction

bool function loadoutContains(Form[] forms, int[] hashes, Form f, int h = 0)
	if h != 0
		int o = hashes.find(h, 0)
		while o >= 0 && o < LOADOUT_APPAREL_SIZE
			if forms[o] == f
				return true
			else
				o += 1
			endif
			o = hashes.find(h, o)
		endwhile
		return false
	else
		int o = forms.find(f)
		return o >= 0 && o < LOADOUT_APPAREL_SIZE
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
function equipShoutOrPower(Actor a, Form f)
	if f
		if f.getType() == FORM_TYPE_SPELL
			a.equipSpell(f as Spell, 2)
		else
			a.equipShout(f as Shout)
		endif
	else ; f == None so unequip
		unequipShoutOrPower(a)
	endif
endfunction

function unequipShoutOrPower(Actor a)
	Shout sh = a.getEquippedShout()
	if sh ; has a shout equipped
		a.unequipShout(sh)
	else ; might have a power equipped
		Spell sp = a.getEquippedSpell(2)
		if sp ; has a power equipped
			a.unequipSpell(sp, 2) ; Don't know if this is possible, the wiki makes you think its not
		endif
	endif
endfunction

function setLeftHand(Actor a, Form f, int h = 0)
	Form cf = a.getEquippedObject(0)
	if f == None
		if cf.getType() == FORM_TYPE_SPELL
			a.unequipSpell(cf as Spell, 0)
		else
			a.unequipItemEx(cf, 2)
		endif
	elseif h != 0
		if cf != f || a.getEquippedItemId(0) != h
			a.equipItemById(f, h, 2)
		endif
	elseif cf != f
		if f.getType() == FORM_TYPE_SPELL
			a.equipSpell(f as Spell, 0)
		else
			a.equipItemEx(f, 2)
		endif
	endif
endfunction

function setRightHand(Actor a, Form f, int h = 0)
	Form cf = a.getEquippedObject(1)
	if f == None
		if cf.getType() == FORM_TYPE_SPELL
			a.unequipSpell(cf as Spell, 1)
		else
			a.unequipItemEx(cf, 1)
		endif
	elseif h != 0
		if cf != f || a.getEquippedItemId(0) != h
			a.equipItemById(f, h, 1)
		endif
	elseif cf != f
		if f.getType() == FORM_TYPE_SPELL
			a.equipSpell(f as Spell, 1)
		else
			a.equipItemEx(f, 1)
		endif
	endif
endfunction

function restoreLoadout(int i)
	dbg("Restoring loadout " + i + "...")

	Form[] forms = getLoadoutForms(i)
	int[] hashes = getLoadoutHashes(i)
	
	; Equip hands and shout
	setLeftHand(player, forms[LOADOUT_LEFT], hashes[LOADOUT_LEFT])
	setRightHand(player, forms[LOADOUT_RIGHT], hashes[LOADOUT_RIGHT])
	equipShoutOrPower(player, forms[LOADOUT_SHOUT])

	; ; Algorithm idea
	;   ; forall x in equipped where x not in loadout
	;   ;   unequip x
	;   ; forall x in loadout where x not in equipped
	;   ;   equip x
	; ; I used to create a buffer for the current equipment
	; ; but that magically added about 50% processing time

	Form f
	int h
	int n = 0
	while n < LOADOUT_APPAREL_SIZE
		f = loadoutFormsCurrent[n]
		h = loadoutHashesCurrent[n]
		if f && !loadoutContains(forms, hashes, f, h)
			player.unequipItemEx(f)
		endif
		n += 1
	endwhile

	n = 0
	while n < LOADOUT_APPAREL_SIZE
		f = forms[n]
		h = hashes[n]
		if f && !loadoutContains(loadoutFormsCurrent, loadoutHashesCurrent, f, h)
			if h != 0
				player.equipItemById(f, h)
			else
				player.equipItemEx(f)
			endif
		endif
		n += 1
	endwhile

	dbg("Loadout " + i + " restored")
endfunction
;     Loadout management
;============================



;================================
;     Equipment registration
event OnObjectEquipped(Form object, ObjectReference reference)
	int t = object.getType()
	if t == FORM_TYPE_ARMOR || t == FORM_TYPE_AMMO
		int i = loadoutFormsCurrent.find(None)
		if (i >= 0 && i < LOADOUT_APPAREL_SIZE)
			loadoutFormsCurrent[i] = object
			loadoutHashesCurrent[i] = player.getWornItemId((object as Armor).getSlotMask())
		else
			print("Warning: Current loadout overflow!")
		endif
		dbg("Equipped Armor or Ammo \"" + object.getName() + "\", hash: " + player.getWornItemId((object as Armor).getSlotMask()))
	elseif t == FORM_TYPE_WEAPON || t == FORM_TYPE_SPELL || t == FORM_TYPE_LIGHT
		;loadoutFormsCurrent[LOADOUT_LEFT] = player.getEquippedObject(0)
		;loadoutHashesCurrent[LOADOUT_LEFT] = player.getEquippedItemId(0)
		;loadoutFormsCurrent[LOADOUT_RIGHT] = player.getEquippedObject(1)
		;loadoutHashesCurrent[LOADOUT_RIGHT] = player.getEquippedItemId(1)
		dbg("Equipped Weapon, Spell or Light Source \"" + object.getName() + "\"")
	elseif t == FORM_TYPE_SHOUT
		loadoutFormsCurrent[34] = object
		dbg("Equipped Shout \"" + object.getName() + "\"")
	endif
endevent

event OnObjectUnequipped(Form object, ObjectReference reference)
	int t = object.getType()
	if t == FORM_TYPE_ARMOR || t == FORM_TYPE_AMMO
		int i = loadoutFormsCurrent.find(object)
		if (i >= 0 && i < LOADOUT_APPAREL_SIZE)
			loadoutFormsCurrent[i] = None
			loadoutHashesCurrent[i] = 0
		else
			dbg("Warning: Could not find Form to unequip \"" + object.getName() + "\"")
		endif
		dbg("Unequipped Armor or Ammo \"" + object.getName() + "\", hash: can't compute")
	elseif t == FORM_TYPE_WEAPON || t == FORM_TYPE_SPELL || t == FORM_TYPE_LIGHT
		;loadoutFormsCurrent[LOADOUT_LEFT] = player.getEquippedObject(0)
		;loadoutHashesCurrent[LOADOUT_LEFT] = player.getEquippedItemId(0)
		;loadoutFormsCurrent[LOADOUT_RIGHT] = player.getEquippedObject(1)
		;loadoutHashesCurrent[LOADOUT_RIGHT] = player.getEquippedItemId(1)
		dbg("Unequipped Weapon, Spell or Light Source \"" + object.getName() + "\"")
	elseif t == FORM_TYPE_SHOUT
		loadoutFormsCurrent[34] = None
		dbg("Unequipped Shout \"" + object.getName() + "\"")
	endif
endevent
;     Equipment registration
;================================



;=====================
;     Keybindings
bool[] keyStates

;Reset the key states, should do this on script load
function gamepadKeystateFixReset()
	int i = keyStates.length
	while i
		i -= 1
		keyStates[i] = false
	endwhile
endfunction

; nasty fix because isKeyPressed fails for gamepad keys
function gamepadKeystateFixUpdate(int keyCode, bool down)
	if keyCode >= GAMEPAD_UP && keyCode <= GAMEPAD_RT ; is a gamepad key
		keyStates[keyCode - GAMEPAD_UP] = down
	endif
endfunction

function gamepadKeystateFixInitialize()
	keyStates = new bool[16]
endfunction

; custom isKeyPressed that works for gamepad
bool function isKeyPressed(int keyCode)
	if keyCode >= GAMEPAD_UP && keyCode <= GAMEPAD_RT ; is a gamepad key
		int k = keyCode - GAMEPAD_UP
		return keyStates[k]
	endif
	return Input.isKeyPressed(keyCode)
endfunction

function initializeKeybindings()
	registerForKey(KEY_0)
	registerForKey(KEY_1)
	registerForKey(KEY_2)
	registerForKey(KEY_3)
	registerForKey(KEY_4)
	registerForKey(KEY_5)
	registerForKey(KEY_6)
	registerForKey(KEY_7)
	registerForKey(KEY_8)
	registerForKey(KEY_9)
	registerForKey(KEY_LEFT_CONTROL)
	registerForKey(KEY_RIGHT_CONTROL)

	registerForKey(GAMEPAD_UP)
	registerForKey(GAMEPAD_DOWN)
	registerForKey(GAMEPAD_LEFT)
	registerForKey(GAMEPAD_RIGHT)
	registerForKey(GAMEPAD_START)
	registerForKey(GAMEPAD_BACK)
	registerForKey(GAMEPAD_LEFT_THUMB)
	registerForKey(GAMEPAD_RIGHT_THUMB)
	registerForKey(GAMEPAD_LEFT_SHOULDER)
	registerForKey(GAMEPAD_RIGHT_SHOULDER)
	registerForKey(GAMEPAD_A)
	registerForKey(GAMEPAD_B)
	registerForKey(GAMEPAD_X)
	registerForKey(GAMEPAD_Y)
	registerForKey(GAMEPAD_LT)
	registerForKey(GAMEPAD_RT)
endfunction

function onKeyDownLoadout(int i)
	if Utility.isInMenuMode()
		return
	endif
	if isKeyPressed(KEY_LEFT_CONTROL) || isKeyPressed(KEY_RIGHT_CONTROL) || isKeyPressed(GAMEPAD_RIGHT_THUMB)
		saveLoadout(i)
	else
		restoreLoadout(i)
	endif
endfunction

event OnKeyUp(int keyCode, float holdTime)
	gamepadKeystateFixUpdate(keyCode, false)
endevent

state Ready
	event OnKeyDown(int keyCode)
		GotoState("Busy") ; only do one thing at once
		gamepadKeystateFixUpdate(keyCode, true)

		dbg("Key pressed: " + keyCode)

		if keyCode == KEY_0
		onKeyDownLoadout(0)
		elseif keyCode == KEY_1 || keyCode == GAMEPAD_LEFT
		onKeyDownLoadout(1)
		elseif keyCode == KEY_2 || keyCode == GAMEPAD_RIGHT
		onKeyDownLoadout(2)
		elseif keyCode == KEY_3
		onKeyDownLoadout(3)
		elseif keyCode == KEY_4
		onKeyDownLoadout(4)
		elseif keyCode == KEY_5
		onKeyDownLoadout(5)
		elseif keyCode == KEY_6
		onKeyDownLoadout(6)
		elseif keyCode == KEY_7
		onKeyDownLoadout(7)
		elseif keyCode == KEY_8
		onKeyDownLoadout(8)
		elseif keyCode == KEY_9
		onKeyDownLoadout(9)
		endif

		GotoState("Ready")
	endevent
endstate

state Busy
	event OnKeyDown(int keyCode)
		gamepadKeystateFixUpdate(keyCode, true)
		dbg("Key pressed: " + keyCode + ", but I'm busy")
	endevent
endstate
;     Keybindings
;=====================



;==================
;     Ignition

; Called when the script is run for the first time
event OnInit()
	initializeVersion()
	initializePlayer()
	initializeLoadouts()
	gamepadKeystateFixInitialize()
	print("Thank you for installing Loadout " + getVersion())
	load()
endevent

; Called upon load
event OnPlayerLoadGame()
	load()
endevent

function load()
	GotoState("Busy")
	dbg("Checking SKSE version...")
	int SKSE_maj = SKSE.getVersion()
	int SKSE_min = SKSE.getVersionMinor()
	int SKSE_pat = SKSE.getVersionBeta()
	string SKSE_ver = SKSE_maj + "." + SKSE_min + "." + SKSE_pat
	if SKSE_maj == 0
		print("Loadout requires you to install SKSE 1.6.16 or higher")
		print("Make sure Steam is running before launching Skyrim with SKSE!")
	elseif SKSE_maj < 1 || SKSE_min < 6 || SKSE_pat < 16
		print("You have SKSE " + SKSE_ver + " installed but Loadout requires at least 1.6.16")
	else
		dbg("SKSE " + SKSE_ver + " is installed")
	endif

	dbg("Checking for updates...")
	string oldVersion = getVersion()
	if isNewerVersion(2,0,0)
		; do stuff
	endif
	string newVersion = getVersion()
	if oldVersion == newVersion
		dbg("No updates found")
	else
		print("Loadout updated from " + oldVersion + " to " + newVersion)
	endif

	dbg("Resetting key states...")
	gamepadKeystateFixReset()

	dbg("Registering key bindings...")
	initializeKeybindings()

	dbg("Loading done")
	GotoState("Ready")
endfunction
;     Ignition
;==================