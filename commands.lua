SLASH_SQUEEK_EXPLAIN1 = "/squeekywheels"
SlashCmdList["SQUEEK_EXPLAIN"] = function()
	print("SqueekyWheels commands list:")

	print("/squeek {Buff Name}")
	print("Adds the named buff to the watch list, for example: /squeek Battle Shout")

	print("/oil")
	print("Empties the watch list.")
end

SLASH_SQUEEK_ADD_TO_WATCH_LIST1 = "/squeek"
SlashCmdList["SQUEEK_ADD_TO_WATCH_LIST"] = function(buffName)
	if buffName then
		table.insert(squeekyWheelsWatchList, buffName)

		print("Added "..GetSpellLink(buffName).." to SqueekyWheels watch list.")
	end
end

SLASH_SQUEEK_RESET_WATCH_LIST1 = "/oil"
SlashCmdList["SQUEEK_RESET_WATCH_LIST"] = function()
	squeekyWheelsWatchList = {}

	print("SqueekyWheels watch list has been emptied.")
end