scriptname DeazurainLoadoutPlayerAlias extends ReferenceAlias
{Quick Loudout Event registering and updating}

DeazurainLoadoutQuest property questScript auto

event OnPlayerLoadGame()
  questScript.update()
endevent
