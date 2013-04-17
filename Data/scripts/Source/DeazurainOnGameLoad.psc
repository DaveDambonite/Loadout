scriptname DeazurainOnGameLoad extends ReferenceAlias
{Triggers onGameLoad event for DeazurainQuest objects}

event OnPlayerLoadGame()
  (GetOwningQuest() as DeazurainQuest).onGameLoad()
endevent