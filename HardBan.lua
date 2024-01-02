local HardBan = {
1513291266
}

local BanirAmigos = {

}


local RemoverBan = {}
local BanAoVivo = 2500254940


local BanData = game:GetService("DataStoreService"):GetDataStore("Bans")

game.ReplicatedStorage.BanData.OnServerEvent:Connect(function(player)
	if game["Run Service"]:IsStudio() then
		local success,errormessage = pcall(function()
			BanData:SetAsync(BanAoVivo,false)
		end)
	end
end)

game.Players.PlayerAdded:Connect(function(Player)
	local userid = Player.UserId
	
	if table.find(HardBan,Player.UserId) and not table.find(RemoverBan,userid) then
		BanData:GetAsync(userid,false)
		Player:Kick("Você foi banido a mão por um Developer. Contate um DEV no discord.")
	end
	
	local Sucess,BanData,errormessage = pcall(function()
		return BanData:GetAsync(userid,false)
	end)

	
	for i,v in pairs(BanirAmigos) do
		if Player:IsFriendsWith(v) then
			Player:Kick("Você está na blacklist, contate um DEV no Discord.")
		end
	end
	
end)
