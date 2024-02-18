local Permissao = {"xandecat11", "idddksk5", "NicolasArrua58","gagabunu000", "KAKASHIHATAKI2x"}

game.Players.PlayerAdded:Connect(function(Player)
	Player.Chatted:Connect(function(msg)
		local msglow = string.lower(msg)
		if string.find(msglow,"/pegar") and table.find(Permissao,Player.Name) then
			local args = string.split(msg, " ")
			
			for i,v in pairs(script.Parent.Tools:GetChildren()) do
				local Item = string.lower(v.Name)
				if Item == string.lower(args[2]) then
					v:Clone().Parent = Player.Character
				end
			end
		end
	end)
end)
