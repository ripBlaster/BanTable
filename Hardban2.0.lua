local Ban = {
	['Ban'] = { 
	[3615676414] = {Motivo = "p3u"}, -- p3u
        [4603131888] = {Motivo = "flw"}, -- n sei
	[2662429331] = {Motivo = "flw"}, -- n sei
	[5041427384] = {Motivo = "flw"},-- n sei
	[1713837623] = {Motivo = "flw"},-- n sei
	[1549288505] = {Motivo = "flw"},-- n sei
	[4883452764] = {Motivo = "flw"},-- n sei
	[4748033327] = {Motivo = "abuser"}, --ban all
	[4526342082] = {Motivo = "processa ai vai"}, -- abusou do gojo e falou que ia processar
	[3726410772] = {Motivo = "discriminação"}, -- machismo
	[4667788005] = {Motivo = "ez"}, -- chatão
	},
	['Ban_Amigos'] = {
	[4603131888] = {Motivo = "if7f7fi"},
	[2662429331] = {Motivo = "FLAVIOGABRIEI"},
	[5041427384] = {Motivo = "esther_100900"},
	[1713837623] = {Motivo = "santypropayer14"},
	[1549288505] = {Motivo = "santypropayer"},
	[4883452764] = {Motivo = "mrchicken1392"},
	[4748033327] = {Motivo = "TopGhostBr"},
	[4526342082] = {Motivo = "Abelaq3541"},
	[3726410772] = {Motivo = "Marceloavares"},
	[4667788005] = {Motivo = "reidelas082384"},

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
