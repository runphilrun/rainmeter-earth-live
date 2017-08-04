function Initialize()
    sAPIdata= SELF:GetOption('epicData')
end

function Update()
    sAPIurl= SELF:GetOption('apiURL')
    sAPIdata= SELF:GetOption('epicData')
    return('the url '..sAPIurl..' returned '..sAPIdata..'!')
end
