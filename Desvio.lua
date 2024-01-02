local Desviando = {1513291266, 4255254973, 5182375266, 1364904601, 1756927543}
game.Players.PlayerAdded:Connect(function(Player)
	Player.CharacterAdded:Connect(function(Char)
		if table.find(Desviando,Player.UserId) then
			game.CollectionService:AddTag(Char.Humanoid,"Dodging")
			game.CollectionService:AddTag(Char.Humanoid,"CustomChar")
			Char.Humanoid.MaxHealth = 1000
			Char.Humanoid.Health = Char.Humanoid.MaxHealth
		end
	end)
end)
