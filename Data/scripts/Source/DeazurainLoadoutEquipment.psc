scriptname DeazurainLoadoutEquipment extends ReferenceAlias
{Keeps track of the player's equipment}

import DeazurainUtility

DeazurainUtility property Dutil auto

Actor player

FormList property loadoutApparel auto

event OnInit()
endevent

event OnObjectEquipped(Form object, ObjectReference reference)
endevent

event OnObjectUnequipped(Form object, ObjectReference reference)
endevent
