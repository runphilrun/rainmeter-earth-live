  function Initialize()
    sAPIdata= SELF:GetOption('epicData')
end

function Update()
    sAPIurl= SELF:GetOption('apiURL')
    sAPIdata= SELF:GetOption('epicData')
    count = 0
    for word in string.gmatch(sAPIdata,'"image"') do
       count = count + 1
    end
    print(count..' images found')
    return(count)
end
