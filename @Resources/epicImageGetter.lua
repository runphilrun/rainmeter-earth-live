--[[ epicImageGetter.lua
A simple script to retrieve metadata from DSCOVR EPIC API Metadata.

Author: Philip Linden
--]]
function Initialize()

end

function Update()
    local jsonParser = dofile(SKIN:GetVariable('@')..'json.lua')
    sAPIjson= SELF:GetOption('jsonString')
    count = 0
    for word in string.gmatch(sAPIjson,'"image"') do
       count = count + 1
    end
    print(count..' images found')

    --local json = require "json"
    tParsedJSON= jsonParser.parse(sAPIjson)
    print(tParsedJSON)
    return(tParsedJSON)
    --]]
end
