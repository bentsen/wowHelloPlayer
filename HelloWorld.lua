SLASH_HELLO1 = "/helloworld"
SLASH_HELLO2 = "/hellow"

local function showGreeting(name)
    local greeting = "Hello, " ..name .."!"
    message(greeting)
end

local function HelloWorldHandler(name)
    local userAddedName = string.len(name) > 0

    if(userAddedName) then
        showGreeting(name)
    else
        local playerName = UnitName("player")
        showGreeting(playerName)
    end
end

SlashCmdList["HELLO"] = HelloWorldHandler

