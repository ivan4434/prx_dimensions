ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

TriggerEvent('chat:addSuggestion', '/'..Config.SetDimensionCommand, _U('commandSuggest'), {
    { name="id", help=_U('playerID') },
    { name="Dimension", help=_U('dimension') }
})

TriggerEvent('chat:addSuggestion', '/'..Config.SetDefaultDimension, _U('autofixSuggest'), nil)

TriggerEvent('chat:addSuggestion', '/'..Config.ShowDimensionCommand, _U('showSuggest'), nil)