local verifyBuff = function(buffs, watchName)
    local buffVerified = false
	local checkTime = GetTime()
	
	local buffLink = GetSpellLink(watchName)
	
    for buffName, buff in pairs(buffs) do
        if buffName == watchName then
            buffVerified = true
			
            local secondsRemaining = buff.expirationTime - checkTime
			local srString = string.format("%i", secondsRemaining)

            if secondsRemaining < 60 then
                print(buffLink.." has only "..squeekyWheels.warning(srString.." seconds remaining").."...")
            else
                --print(buffLink.." is "..squeekyWheels.success("fine")..".")
            end
            
            break
        end
    end
        
	if not buffVerified then
		print(buffLink.." is "..squeekyWheels.danger("NOT in effect").."! Recast it!")
	end
end

squeekyWheels.main = function()
    local buffs = squeekyWheels.auditBuffs()
	
	for ix, watchName in ipairs(squeekyWheelsWatchList) do
        verifyBuff(buffs, watchName)
    end
	
	C_Timer.After(45, squeekyWheels.main)
end

squeekyWheels.main()