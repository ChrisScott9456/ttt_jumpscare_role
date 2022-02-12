if SERVER then
	AddCSLuaFile()
	resource.AddFile("materials/vgui/ttt/dynamic/roles/icon_spookster.vmt")
end

function ROLE:PreInitialize()
	self.color = Color(40, 30, 30, 255)

	self.abbr = "spooks"
	self.survivebonus = 1                   	-- points for surviving longer
	self.preventFindCredits = true	        	-- can't take credits from bodies
	self.preventKillCredits = true          	-- does not get awarded credits for kills
	self.preventWin = true                  	-- cannot win
	self.score.killsMultiplier = 0          	-- gets points for killing enemies
	self.score.teamKillsMultiplier = -16     	-- loses points for killing teammates

	self.defaultTeam = TEAM_NONE 				-- starts as Neutral Team
	self.defaultEquipment = SPECIAL_EQUIPMENT

	self.conVarData = {
		pct = 0.17, 							-- necessary: percentage of getting this role selected (per player)
		maximum = 1, 							-- maximum amount of roles in a round
		minPlayers = 6, 						-- minimum amount of players until this role is able to get selected
		credits = 2, 							-- the starting credits of a specific role
		togglable = true, 						-- option to toggle a role for a client if possible (F1 menu)
		random = 20,							-- what percentage chance the role will show up each round
		shopFallback = SHOP_FALLBACK_TRAITOR	-- the fallback shop for the role to use
	}
end

function ROLE:Initialize()
	
end

if SERVER then

end
