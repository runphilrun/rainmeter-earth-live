--[[ epicImageGetter.lua
A simple script to retrieve metadata from DSCOVR EPIC API Metadata.

Author: Philip Linden
--]]
function Initialize()

end

function Update()
    local json = dofile(SKIN:GetVariable('@')..'json.lua')
    local inspect = dofile(SKIN:GetVariable('@')..'inspect.lua')
    sAPIjson= SELF:GetOption('jsonString')
    count = 0
    for word in string.gmatch(sAPIjson,'"image"') do
       count = count + 1
    end
    print(count..' images found')
    if count > 0 then
        tParsedJSON= json.parse(sAPIjson)
        print(assert(inspect(tParsedJSON)))
        return(assert(inspect(tParsedJSON)))
    else return(0) end
end
