local PlayerService = game:GetService("Players")

PlayerService.PlayerAdded:Connect(function(Player)
	Player.Chatted:Connect(function(Mensagem)
		if Mensagem == "/basegang" then
			if Player.UserId == 1513291266 then
				local BaseClone = game.ReplicatedStorage.BaseSecret:Clone()
				local SafeZoneClone = game.ReplicatedStorage.SafeZoneGang:Clone()
				BaseClone.Parent = workspace
				SafeZoneClone.Parent = workspace
				local Disfarce = game.Workspace["Disfarçe"]
				Disfarce.Parent = game.ReplicatedStorage
				local BlindagemClone = game.ReplicatedStorage.Blindagem:Clone()
				BlindagemClone.Parent = workspace
				print("Base dos bainhas está no mapa!")
				end
			end
		end)
end)
