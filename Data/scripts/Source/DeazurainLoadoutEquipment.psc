scriptname DeazurainLoadoutEquipment extends ReferenceAlias
{Keeps track of the player's equipment}

DeazurainUtility property Dutil auto

Actor player;

FormList property loadoutApparel auto

event OnInit()
	player = getReference() as Actor
endevent

event OnObjectEquipped(Form object, ObjectReference reference)
	;Debug.trace("Equipped " + object.getName() + ", type: " + t + ", total equipped items: " + loadoutApparel.getSize())
	if reference && reference != player
		return
	endif
	
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
	loadoutApparel.removeAddedForm(object)
endevent
