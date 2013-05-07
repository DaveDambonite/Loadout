scriptname DeazurainLoadoutEquipment extends ReferenceAlias
{Keeps track of the player's equipment}

import DeazurainUtility

DeazurainUtility property Dutil auto

Actor player

FormList property loadoutApparel auto

event OnInit()
	player = getReference() as Actor
endevent

event OnObjectEquipped(Form object, ObjectReference reference)
	if reference && reference != player
		return
	endif

	dbg("Equipped \"" + object.getName() + "\"")
	
	int t = object.getType()
	if t != Dutil.formTypeArmor && \
		t != Dutil.formTypeAmmo && \
		t != Dutil.formTypeLight ; Torches are of this type
		return ; Do not save weapons, spells, shouts and powers
	endif

	loadoutApparel.addForm(object)
endevent

event OnObjectUnequipped(Form object, ObjectReference reference)
	if reference && reference != player
		return
	endif

	dbg("Unequipped \"" + object.getName() + "\"")

	loadoutApparel.removeAddedForm(object)
endevent
