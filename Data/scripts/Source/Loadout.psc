scriptname Loadout extends ReferenceAlias
{The complete Loadout plugin in one file}


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
	if major > _major
		return true
	elseif major == _major && minor > _minor
		return true
	elseif major == _major && minor == _minor && patch > _patch
		return true
	endif
	return false
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
;     Loadout management
;============================



;================================
;     Equipment registration
event OnObjectEquipped(Form object, ObjectReference reference)
	print(reference.getBaseObject().getName() + " equipped \"" + object.getName() + "\"")
	
	; int t = object.getType()
	; if t != Dutil.formTypeArmor && \
	; 	t != Dutil.formTypeAmmo && \
	; 	t != Dutil.formTypeLight ; Torches are of this type
	; 	return ; Do not save weapons, spells, shouts and powers
	; endif

	; loadoutApparel.addForm(object)
endevent

event OnObjectUnequipped(Form object, ObjectReference reference)
	print(reference.getBaseObject()getName() + " unequipped \"" + object.getName() + "\"")

	; loadoutApparel.removeAddedForm(object)
endevent
;     Equipment registration
;================================



;==================
;     Ignition

; Called when the script is run for the first time
event OnInit()
	initializeVersion()
	initializePlayer()
	initializeLoadouts()
	print("Thank you for installing Loadout " + getVersion())
endevent

; Called upon load
event OnPlayerLoadGame()
	
	dbg("Checking SKSE version...")
	int SKSE_maj = SKSE.getVersion()
	int SKSE_min = SKSE.getVersionMinor()
	int SKSE_pat = SKSE.getVersionBeta()
	string SKSE_ver = SKSE_maj + "." + SKSE_min + "." + SKSE_pat
	if SKSE_maj < 1 || SKSE_min < 6 || SKSE_pat < 16
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

	dbg("Loading done")
	GotoState("Ready")
endevent

; TODO: initializeKeybindings()
; RegisterForKey(Dutil.key0)
; RegisterForKey(Dutil.key1)
; RegisterForKey(Dutil.key2)
; RegisterForKey(Dutil.key3)
; RegisterForKey(Dutil.key4)
; RegisterForKey(Dutil.key5)
; RegisterForKey(Dutil.key6)
; RegisterForKey(Dutil.key7)
; RegisterForKey(Dutil.key8)
; RegisterForKey(Dutil.key9)
; RegisterForKey(Dutil.gamepadLeft)
; RegisterForKey(Dutil.gamepadRight)
; dbg("Registered all keys")

;     Ignition
;==================