local colours = {
    danger = "ff0000",
    warning = "ffff00",
    info = "0000ff",
    success = "00ff00"
}

local colourise = function (colour, text)
    return "|cff"..colour..text.."|r"
end

squeekyWheels.danger = function (text)
    return colourise(colours.danger, text)
end
    
squeekyWheels.warning = function (text)
    return colourise(colours.warning, text)
end
    
squeekyWheels.info = function (text)
    return colourise(colours.info, text)
end
    
squeekyWheels.success = function (text)
    return colourise(colours.success, text)
end