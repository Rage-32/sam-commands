-- Command for our permanent sweps derma addon

command.new("pmenu")
	:SetPermission("pmenu")

	:Help(language.get("pmenu_help"))

	:OnExecute (function(ply)
		ply:ConCommand("perm_swep_menu")
	
			if sam.is_command_silent then return end
	end)
:End()
