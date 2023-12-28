warn('DEX V2 WORSE')
warn('LOADING DEX')
local dex = game:GetObjects('rbxassetid://15777444980')[1]
warn('FINISHED')
wait(3)
warn('EXECUTING DEX LAG MAY BE EXPERIENCED')
wait(3)
dex.Name = game:GetService("HttpService"):GenerateGUID(false)
dex.Parent = game:GetService("CoreGui")

-- dont have core gui access you outta luck

-- please people using core gui use game:GetService('CoreGui')

-- people are setting instances names to coregui making for a easy detection

for i,v in pairs(dex:GetDescendants())do if v:IsA("LuaSourceContainer") then 
		--v.Enabled = true;
		-- gonna use sandbox loader cause its way better and this method sucks
		v.Enabled = true
		coroutine.wrap(function()
			task.spawn(setfenv(loadstring(v.Source, '='..v:GetFullName()),setmetatable({script = v},{__index = getfenv()})))
		end)()
	end;
end;
