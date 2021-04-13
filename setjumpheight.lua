command.new("setjumpheight")
	:SetPermission("setjumpheight")

	:Help(language.get("setjumpheight"))
	:AddArg("player", {
        single_target = true, 
    })
	:AddArg("number", {
        optional = true, -- makes it optional!
        default = 600, -- add a default amount if there was no input!
        hint = "amount", -- ummmm?
        min = 0, -- input < 100 then the input gonna be 100
        max = 500000000, -- input > 200 then the input gonna be 200
        round = true, -- numbers like 1.5, 1.4, 1.2 gets rounded
    })

	:OnExecute (function(ply, targets, amount)
        for i = 1, #targets do
            local target = targets[i]
			target:SetJumpPower( amount )
			sam.player.send_message(nil, "{A} set {T}'s jumpheight to {V}", {
				A = ply, T = targets, V = amount
			})
		end

	end)
:End()
