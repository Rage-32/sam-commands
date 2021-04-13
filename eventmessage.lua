command.new("eventmessage")
	:SetPermission("eventmessage")
	:Aliases("em", "announce")
        :GetRestArgs(true)

	:Help(language.get("event message help stuff"))
	:AddArg("text", {
        optional = false, 
        default = 50,
        hint = "name", 
    })

	:OnExecute (function(ply, text)
		sam.player.send_message(nil, "[EVENT MESSAGE] " .. text)
	end)
:End()
