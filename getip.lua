---
-- Purely used for alt detection. Please don't use this maliciously.
---

command.new("getip")
	:SetPermission("getip")

	:Help(language.get("getip_help"))
	:DisableNotify(true)
	:MenuHide(true)
	:AddArg("player", {
        single_target = true, 
  --      cant_target_self = true, 
    })

	:OnExecute (function(ply, targets)
		for i = 1, #targets do
            local target = targets[i]
			sam.player.send_message(ply, target:Name() .. ": " .. target:IPAddress())
		end
	
			if sam.is_command_silent then return end
	end)
:End()
