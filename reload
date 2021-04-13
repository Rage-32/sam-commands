command.new("reload")
	:SetPermission("reload")

	:Help(language.get("reload_help"))

	:OnExecute (function(ply)
	RunConsoleCommand('changelevel', game.GetMap())
	
			if sam.is_command_silent then return end
		sam.player.send_message(nil, "{A} reloaded the server", {
			A = ply
		})
	end)
:End()
