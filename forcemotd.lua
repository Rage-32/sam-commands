command.new("forcemotd")
	:SetPermission("forcemod")
	:Aliases("fm")

	:Help(language.get("get info of a user"))
	:AddArg("player", {
        single_target = true, 
    })

	:OnExecute (function(ply, targets)
		for i = 1, #targets do
            local target = targets[i]
			target:ConCommand( "sam motd" )
			sam.player.send_message(ply, "{A} force opened MoTd on {T}", {
				A = ply, T = target
			})
		end
	end)
:End()
