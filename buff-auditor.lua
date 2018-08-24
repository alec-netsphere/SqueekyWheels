local buffs = {}
local expected = 1
local actual = 0

local addToBuffs = function(name, rank, icon, count, debuffType, duration, expirationTime,         unitCaster, isStealable, shouldConsolidate, spellId)
    if not name then
        return false
    end
    
    buffs[name] = {
        rank = rank,
        icon = icon,
        count = count,
        debuffType = debuffType,
        duration = duration,
        expirationTime = expirationTime,
        unitCaster = unitCaster,
        isStealable = isStealable,
        shouldConsolidate = shouldConsolidate,
        spellId = spellId
    }
    
    actual = actual + 1
    
    return true
end

squeekyWheels.auditBuffs = function()
	while true do
		local response = addToBuffs(UnitBuff("player", expected))
		
		if not response then
			break
		end
		
		expected = expected + 1
	end

    return buffs
end