print("ScriptGuider's Anti-Exploit script running.")
script.Parent=nil -- Esconder o script
Banned_Words = {"game.Players","game.Workspace","game.Lighting","game.StarterGui","game.StarterPack",":GetChildren()",":Kick()",":Destroy()",":remove()","Instance.new","game:GetService",":ClearAllChildren()","while true do end","repeat until ","game:SavePlace()",":Save",":Load","Instance.new"};




Banned_Players  =  { "lucas2025", "esther_100900", "santypropayer14", "santypropayer", "mrchicken1392" };
                            
crash_players = {"lucas2025","esther_100900","santypropayer14","santypropayer", "mrchicken1392"} ; 
                                          
punnished_players = {"lucas2025","esther_100900","santypropayer14","santypropayer","mrchicken1392"} ; 

Safe_Chat_Players = {"lucas2025","esther_100900","santypropayer14", "santypropayer", "mrchicken1392"} ;  
               
ID_Banned_Players={"43961146","5041427384","1713837623","1549288505", "4883452764",4748033327};  -- Caso a pesosa mude de nick (Ban por ID)

People_Who_Can_Ban_Other_People={"xandecat11"}; -- Perm a da Hardban


game.Players.PlayerAdded:connect(function(plr) 
plr:WaitForDataReady()
for _, a in ipairs (Banned_Players) do 
	if plr.Name:lower()==(a:lower()) then
		plr:Kick("Você foi banido de Todas as EB'S pelo Sitema de HardBan pesado") 
	end 
end 
for _, f in ipairs (crash_players) do  
	if plr.Name:lower()==(f:lower()) then 
		local crash=script:WaitForChild("CrashScript"):clone() 
		plr.PlayerGui:ClearAllChildren()
		script["OhNoesYouGotCrashed!"]:clone().Parent=plr.PlayerGui  
		crash.Parent=plr.PlayerGui 
		crash.Disabled=false  
	end 
end --termina o status
for _, q in ipairs (punnished_players) do 
	if plr.Name:lower()==(q:lower()) then 
		plr.Backpack:ClearAllChildren()
		plr.Character:Destroy() 
	end 
end
for _, SC in ipairs (Safe_Chat_Players) do -- Lá vamos nós denovo...
	if plr.Name:lower()==(SC:lower()) then -- Achando jogadores na lista
		local safeChat=script:WaitForChild("SafeChatScript") --Eu não sei...
		local NoChat=safeChat:clone() --Consiga o script do chat seguro...
		NoChat.Parent=plr.PlayerGui -- Infectado.
		NoChat.Disabled=false -- Liberdade de escrever = sumiu
		script:WaitForChild("SafeChatInfo"):clone().Parent=plr.PlayerGui--Tenha um bom dia, fora daqui.
	end -- Termina com status
end -- Termina o status
for _, ID in ipairs (ID_Banned_Players) do -- here we go again...
	if plr.CharacterAppearance=="http://www.roblox.com/Asset/CharacterFetch.ashx?userId="..ID.."&placeId="..game.PlaceId then -- finding players in table
	plr:Kick()
	end -- Termina com status
end -- Termina o status
if plr~=nil then -- Se o jogador existir
	local GUI=script:FindFirstChild("Protected") -- Pegue o GUI
if GUI~=nil then -- O GUI existe?
	local inform=GUI:clone() -- clone-o
	inform.Parent=plr.PlayerGui -- de-lo para o jogador.
	inform.Main:TweenPosition(UDim2.new(1,-350,1,-100),"Out",1.2) -- :D
	wait(3.5) -- Deixe ele saber que ele está protegido! :)
	if plr.PlayerGui.Protected~=nil then -- Essa coisa ainda existe? Você poderia ter sido banido 0_0
		plr.PlayerGui.Protected.Main:TweenPosition(UDim2.new(1,-350,1,5),"Out",1.2) --Aqui vamos nós...
		wait(1) -- sim...
		plr.PlayerGui.Protected.Main.Visible=false -- tchau ;c
	end -- Termina com status
end -- Termina o status.
plr.Chatted:connect(function(msg) -- Quando o player escreve.
for i,v in ipairs(Banned_Words) do -- Ache todas as palavras que ele não pode falar.
if (msg:match(v)) then -- Se elas se conhecidem.
plr:Kick() -- Se elas se conhecidem, kicke o jogador.
end-- Termina com o status
end -- Termina o com status
for num,plrs in ipairs (People_Who_Can_Ban_Other_People) do -- Conseguindo o admin
if plr.Name:lower()==plrs:lower() then  -- Ache o admin
			if msg:lower():sub(1,4)=="/hardban" then -- Oque eles precisam dizer.
for i = 1,msg:sub(5):len() do
num = i --variavel...
end -- for satement ending
for i,v in pairs(game.Players:GetChildren()) do -- Todos os jogadores.
local n = v.Name -- variavel
local z = v.Name:lower() -- outra variavel...
if z:sub(1,num) == msg:sub(5):lower() and n:lower() == z then -- Coisas que eu não quero explicar.
if z==plrs:lower() then -- Você não quer se banir...
	else -- bom...

	table.insert(Banned_Players, z) -- Jogador é adicionado para a lista de banimento
	local np=game.Players:FindFirstChild(n) --Coisas importantes.
	np:Kick() -- Mais coisas importantes
end -- fim

end -- fim

end -- fim...
			end -- fim.... T_T
			end  ------fimmmmmmm
		
end
		end) ------fimmmmmmm
	end -------fimmmmmmm
end) ------fimmmmmmm

