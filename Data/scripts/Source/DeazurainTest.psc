scriptname DeazurainTest extends Quest
{Quick Loudout Event registering and updating}

; -----------------------------------------------------------
; DESCRIPTION
; -----------------------------------------------------------

;/
Testing input functions for gamepad
/;

; -----------------------------------------------------------
; CONSTANTS
; -----------------------------------------------------------


; -----------------------------------------------------------
; VARIABLES
; -----------------------------------------------------------

;/
; http://www.creationkit.com/Input_Script#DXScanCodes
int[] keyCodes
int[] keyCodesKeyboard
int[] keyCodesMouse
int[] keyCodesGamepad
string[] keyNames

; -----------------------------------------------------------
; FUNCTIONS
; -----------------------------------------------------------

function update()
  keyCodes = new int[43]
  keyCodesKeyboard = new int[43]
  keyCodesMouse = new int[43]
  keyCodesGamepad = new int[43]
  keyNames = new string[43]
  
  ; http://www.creationkit.com/GetMappedKey_-_Input#Parameters
  keyNames[ 0] = "Activate"
  keyNames[ 1] = "Auto-Move"
  keyNames[ 2] = "Back"
  keyNames[ 3] = "CameraPath"
  keyNames[ 4] = "Console"
  keyNames[ 5] = "Favorites"
  keyNames[ 6] = "Forward"
  keyNames[ 7] = "Hotkey1"
  keyNames[ 8] = "Hotkey2"
  keyNames[ 9] = "Hotkey3"
  keyNames[10] = "Hotkey4"
  keyNames[11] = "Hotkey5"
  keyNames[12] = "Hotkey6"
  keyNames[13] = "Hotkey7"
  keyNames[14] = "Hotkey8"
  keyNames[15] = "Journal"
  keyNames[16] = "Jump"
  keyNames[17] = "Left Attack/Block"
  keyNames[18] = "Look"
  keyNames[19] = "Move"
  keyNames[20] = "Multi-Screenshot"
  keyNames[21] = "Pause"
  keyNames[22] = "Quick Inventory"
  keyNames[23] = "Quick Magic"
  keyNames[24] = "Quick Map"
  keyNames[25] = "Quick Stats"
  keyNames[26] = "Quick Load"
  keyNames[27] = "Quick Save"
  keyNames[28] = "Ready Weapon"
  keyNames[29] = "Right Attack/Block"
  keyNames[30] = "Run"
  keyNames[31] = "Screenshot"
  keyNames[32] = "Shout"
  keyNames[33] = "Sneak"
  keyNames[34] = "Sprint"
  keyNames[35] = "Strafe Left"
  keyNames[36] = "Strafe Right"
  keyNames[37] = "Toggle Always Run"
  keyNames[38] = "Toggle POV"
  keyNames[39] = "Tween Menu"
  keyNames[40] = "Wait"
  keyNames[41] = "Zoom In"
  keyNames[42] = "Zoom Out"
  
  ;UnregisterForAllKeys() affects the Quest or maybe even other Objects as well, but I hope not
  
  int i = 0
  while i < 43
    string n = keyNames[i]
    int k = Input.getMappedKey(n, 0xFF) ; Auto
    RegisterForKey(k)
    
    keyCodes[i] = k
    keyCodesKeyboard[i] = Input.getMappedKey(n, 0x01)
    keyCodesMouse[i] = Input.getMappedKey(n, 0x02)
    keyCodesGamepad[i] = Input.getMappedKey(n, 0x03)
    
    Debug.trace("Keycodes for '" + n + "' | Auto: " + k + " | Keyboard: " + keyCodesKeyboard[i] + " | Mouse: " + keyCodesMouse[i] + " | Gamepad: " + keyCodesGamepad[i])
    i += 1
  endwhile
  
  Debug.notification("Set-up input test done")
endfunction

; -----------------------------------------------------------
; EVENTS
; -----------------------------------------------------------

event OnInit()
  update()
endevent

event OnKeyDown(int k)
  GotoState("Busy") ; One at a time please
  string n = k
  int i = keyCodes.find(k)
  if i != -1
    n = keyNames[i]
  endif
  string s = "OnKeyDown " + n + " | keyCode: " + k \
   + " | getNumKeysPressed(): " + Input.getNumKeysPressed() \
   + " | getNthKeyPressed(0): " + Input.getNthKeyPressed(0) \
   + " | isKeyPressed(" + k + "): " + Input.isKeyPressed(k)
  Debug.trace(s)
  GotoState("")
endevent

event OnKeyUp(int k, float holdTime)
  return
  GotoState("Busy")
  string n = k
  int i = keyCodes.find(k)
  if i != -1
    n = keyNames[i]
  endif
  string s = "OnKeyUp " + n + " | keyCode: " + k \
   + " | getNumKeysPressed(): " + Input.getNumKeysPressed() \
   + " | getNthKeyPressed(0): " + Input.getNthKeyPressed(0) \
   + " | isKeyPressed(" + k + "): " + Input.isKeyPressed(k)
  Debug.trace(s)
  GotoState("")
endevent

state Busy
  event OnKeyDown(int keyCode)
    Debug.trace("OnKeyDown while processing, ignoring")
  endevent
  event OnKeyUp(int keyCode, float holdTime)
    Debug.trace("OnKeyUp while processing, ignoring")
  endevent
endstate

/;