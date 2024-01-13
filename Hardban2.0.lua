local Ban = {
	['Ban'] = { 
	[4603131888] = {Motivo = "flw"},
	[2662429331] = {Motivo = "flw"},
	[5041427384] = {Motivo = "flw"},
	[1713837623] = {Motivo = "flw"},
	[1549288505] = {Motivo = "flw"},
	[4883452764] = {Motivo = "flw"},
	[4748033327] = {Motivo = "flw"},
	[4526342082] = {Motivo = "flw"},
	[3726410772] = {Motivo = "flw"},
	[4667788005] = {Motivo = "flw"},
	},
	['Ban_Amigos'] = {
	[4603131888] = {Nick = "if7f7fi"},
	[2662429331] = {Nick = "FLAVIOGABRIEI"},
	[5041427384] = {Nick = "esther_100900"},
	[1713837623] = {Nick = "santypropayer14"},
	[1549288505] = {Nick = "santypropayer"},
	[4883452764] = {Nick = "mrchicken1392"},
	[4748033327] = {Nick = "TopGhostBr"},
	[4526342082] = {Nick = "Abelaq3541"},
	[3726410772] = {Nick = "Marceloavares"},
	[4667788005] = {Nick = "reidelas082384"},

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
