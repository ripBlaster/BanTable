local CamoEvent = Instance.new("RemoteEvent") CamoEvent.Name = "CamoEvent" CamoEvent.Parent = game.ReplicatedStorage
local Players = game:GetService("Players")
local GetNameFromUserIdAsync = Players.GetNameFromUserIdAsync

local Perm = {"xandecat11", "ronaldofenomeno20111","NuelNoCra", "Secbucheta65788", "NicolasArrua58", "MarcoAntonioTelesRi", "ed3vsrs5", "Ragnarok_xxxxxxx", "Gui_TgF", "idddksk5", "ExTnoX", "hfbdin"}

local function randomUser()
	local randomId = math.random(1, 2000000000)
	local success, res = pcall(GetNameFromUserIdAsync, Players, randomId)

	if success then
		return res
	else
		return randomUser()
	end
end

local function MudarTextos(Player,Nome,Status)
	
	Player.Character.Nome.NomeTexto.Text = tostring(Nome)
	Player.Character.Team.TeamTexto.Text = tostring(Player.Team)
	
	local function MudarValores(Arg)
		Arg.TextStrokeColor3 = Color3.fromRGB(0,0,0)
		Arg.TextColor3 = Player.Team.TeamColor.Color
	end
	
	if Status == "Camo" then
		
		MudarValores(Player.Character.Nome.NomeTexto)
		MudarValores(Player.Character.Team.TeamTexto)
		Player.Character.Team.TeamTexto.Text = Player.Team.Name
		MudarValores(Player.Character.Patente.PatenteTexto)
		Player.Character.Patente.PatenteTexto.Text = Player.leaderstats.Patente.Value
		
		

		
		
	end
		
		
	
	
	
end

local function CreateCamoBool(Player)
	if not Player:FindFirstChild("Camo") then
		local Bool = Instance.new("StringValue")
		Bool.Name = "Camo"
		Bool.Value = randomUser()
		Bool.Parent = Player

		MudarTextos(Player,Bool.Value,"Camo")

	end
end



CamoEvent.OnServerEvent:Connect(function(Player,Status)
	if not table.find(Perm,Player.Name) then
		return
	end
	if Status == "Enable" then
		CreateCamoBool(Player)
	elseif Status == "Disable" then
		MudarTextos(Player,Player.Name)
		local Camo = Player:FindFirstChild("Camo")
		if Camo then
			game.Debris:AddItem(Camo,0)
		end
		return
	elseif Status == "RandomName" then
		local Camo = Player:FindFirstChild("Camo")
		if Camo then
			local Name = randomUser()
			Camo.Value = tostring(Name)
			MudarTextos(Player,Name,"Camo")
		end
	end
end)

game.Players.PlayerAdded:Connect(function(Player)
	if table.find(Perm,Player.Name) then
		Player.PlayerGui:WaitForChild("Camo").Enabled = true
	end
	local Connection = Player.CharacterAdded:Connect(function(Char)
		if table.find(Perm,Player.Name) then
			
			local function CreateConnection (Arg)
				local WaitConnection = Arg:GetPropertyChangedSignal("Text"):Connect(function()
					local Camo = Player:FindFirstChild("Camo")
					if Camo then
						MudarTextos(Player,Camo.Value,"Camo")
					end
				end)
				task.wait(4,function()
					WaitConnection:Disconnect()
				end)

			end
			
			local Connection1 = CreateConnection(Char:WaitForChild("Nome").NomeTexto)
			local Connection2 = CreateConnection(Char:WaitForChild("Patente").PatenteTexto)
			local Connection3 = CreateConnection(Char:WaitForChild("Team").TeamTexto)
			
		
		end
	end)
	if not table.find(Perm,Player.Name) then
		Connection:Disconnect()
	end
end)
