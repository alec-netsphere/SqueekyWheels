SLASH_SQUEEK_EXPLAIN1 = "/squeek"
SlashCmdList["SQUEEK_EXPLAIN"] = function(self)
    print("SqueekyWheels commands list:")
    print()
    print("/squeek {Buff Name}")
    print("Adds the named buff to the watch list, for example: /squeek Battle Shout")
    print()
    print("/oil")
    print("Empties the watch list.")
end

SLASH_SQUEEK_ADD_TO_WATCH_LIST1 = "/squeek"
SlashCmdList["SQUEEK_ADD_TO_WATCH_LIST"] = function(self, buffName)
    table.insert(squeekyWheelsWatchList, buffName)
    
    print("Added '"..buffName.."' to SqueekyWheels watch list.")
end

SLASH_SQUEEK_RESET_WATCH_LIST1 = "/oil"
SlashCmdList["SQUEEK_RESET_WATCH_LIST"] = function(self)
    squeekyWheelsWatchList = {}
    
    print("SqueekyWheels watch list has been emptied.")
end