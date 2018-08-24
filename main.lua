local verifyBuff = function(watchName)
    local buffVerified = false

    for buffName, buff in pairs(buffs) do
        if buffName == watchName then
            buffVerified = true
            
            local secondsRemaining = buff.expirationTime - GetTime()
            
            if (secondsRemaining < 60) then
                print(warning(buffName.." only has "..secondsRemaining.." seconds remaining..."))
            else
                print(success(buffName.." is fine."))
            end
            
            break
        end
    end
    
    return buffVerified
end

squeekyWheels.main = function()
    local buffs = auditBuffs()
    
	for ix, watchName in ipairs(squeekyWheelsWatchList) do
        local buffVerified = verifyBuff(watchName)
        
        if not buffVerified then
            print(danger(watchName.." is NOT in effect!"))
        end
    end
	
	C_Timer.After(30, squeekyWheels.main)
end

squeekyWheels.main()