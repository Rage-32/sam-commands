command.new("getmoney")
	:SetPermission("getmoney")

	:Help(language.get("getmoney"))
	:AddArg("player", {
        single_target = true, 
    })

	:OnExecute (function(ply, targets)
		for i = 1, #targets do
            local target = targets[i]
			sam.player.send_message(ply, target:Name() .. " has ".. DarkRP.formatMoney(target:getDarkRPVar("money")), {
			})
		end
	end)
:End()
