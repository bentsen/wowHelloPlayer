SLAH_HELLO1 = "/helloworld"
SLASH_HELLO2 = "/hellow"

local function HelloWorldHandler(name)
local userAddedName = string.len(name) > 0

    if(userAddedName) then
        message("Hello, " ..name .."!")
    else
        local playerName = UnitName("player")
        message("Hello, " ..playerName .."!")
    end
end

SlashCmdList["HELLO"] = HelloWorldHandler

