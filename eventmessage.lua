command.new("eventmessage")
	:SetPermission("eventmessage")
	:Aliases("em", "announce")

	:Help(language.get("event message help stuff"))
	:AddArg("text", {
        optional = false, -- makes it optional!
        default = 50, -- add a default amount if there was no input!
        hint = "name", -- ummmm?
    })

	:OnExecute (function(ply, text)
		sam.player.send_message(nil, "[EVENT MESSAGE] " .. text)
	end)
:End()
