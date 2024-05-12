local Ban = {
	['Ban'] = { 
	[2662429331] = {Motivo = "flw"},
	[5041427384] = {Motivo = "flw"},
	[1713837623] = {Motivo = "flw"},
	[1549288505] = {Motivo = "flw"},
	[4748033327] = {Motivo = "flw"},
	},
	['Ban_Amigos'] = {
	[2662429331] = {Nick = "FLAVIOGABRIEI"},
	[5041427384] = {Nick = "esther_100900"},
	[1713837623] = {Nick = "santypropayer14"},
	[1549288505] = {Nick = "santypropayer"},
	[4748033327] = {Nick = "TopGhostBr"},
	},

}

local PlayerService = game:GetService("Players")

PlayerService.PlayerAdded:Connect(function(Player)
	if Ban.Ban[Player.UserId] then
		Player:Kick("Você foi banido por um Desevolvedor, Motivo: "..tostring(Ban.Ban[Player.UserId].Motivo))
	end

	while wait(10) do
		if Ban.Ban[Player.UserId] then
			Player:Kick("Você foi banido por um Desevolvedor, Motivo: "..tostring(Ban.Ban[Player.UserId].Motivo))
		end
	end
		if Player:IsFriendsWith(Ban.Ban_Amigos[Player.UserId]) then
			Player:Kick("Você entrou na BlackList, pois um de seus amigos entrou no HardBan, Nick: "..tostring(Ban.Ban_Amigos[Player.UserId].Nick "tomou Hardban, Verifique sua lista de Amizade e tente novamente"))
		end
end)
