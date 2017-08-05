--[[ epicImageGetter.lua
A simple script to retrieve metadata from DSCOVR EPIC API Metadata.

Author: Philip Linden
--]]
function Initialize()
    sAPIdata= SELF:GetOption('epicData')
    count = 0
    for word in string.gmatch(sAPIdata,'"image"') do
       count = count + 1
    end
    print(count..' images found')
end

function Update()
    sAPIdata= SELF:GetOption('epicData')
    count = 0
    for word in string.gmatch(sAPIdata,'"image"') do
       count = count + 1
    end
    print(count..' images found')

    local json = {}
    json = dofile(SKIN:MakePathAbsolute('json.lua'))
    --tParsedJSON= json.parse(sAPIdata)
    print(json)
    return(tParsedJSON)
end
