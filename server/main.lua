ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)

--[[TriggerEvent('es:addGroupCommand', Config.SetDimensionCommand, 'superadmin', function(source, args, user)
    local id = args[1]
    local dimension = tonumber(args[2])
    local xPlayer = ESX.GetPlayerFromId(id)

    if args == nil then
        TriggerClientEvent('esx:showNotification', source, _U('argsNil'))
    elseif args[1] == nil then
        TriggerClientEvent('esx:showNotification', source, _U('argsNil'))
    elseif args[2] == nil then 
        TriggerClientEvent('esx:showNotification', source, _U('argsNil'))
    end

    if xPlayer == nil then
        TriggerClientEvent('esx:showNotification', source, _U('noPlayer'))
    else
        local vehiculo = GetVehiclePedIsIn(GetPlayerPed(id), false)
        if vehiculo ~= 0 then
            SetEntityRoutingBucket(vehiculo, dimension)
            SetPlayerRoutingBucket(id, dimension)
            TriggerClientEvent('esx:showNotification', id, _U('dimensionHasSet')..dimension)
            TaskWarpPedIntoVehicle(GetPlayerPed(id), vehiculo, -1)
        else
            SetPlayerRoutingBucket(id, dimension)
            TriggerClientEvent('esx:showNotification', id, _U('dimensionHasSet')..dimension)
        end
        
    end
end)]]

RegisterCommand(Config.SetDimensionCommand, function(source, args)
    local id = args[1]
    local dimension = tonumber(args[2])
    local xPlayer = ESX.GetPlayerFromId(id)

    if xPlayer.getGroup() == 'superadmin' then
    if args == nil then
        TriggerClientEvent('esx:showNotification', source, _U('argsNil'))
    elseif args[1] == nil then
        TriggerClientEvent('esx:showNotification', source, _U('argsNil'))
    elseif args[2] == nil then 
        TriggerClientEvent('esx:showNotification', source, _U('argsNil'))
    end

    if xPlayer == nil then
        TriggerClientEvent('esx:showNotification', source, _U('noPlayer'))
    else
        local vehiculo = GetVehiclePedIsIn(GetPlayerPed(id), false)
        if vehiculo ~= 0 then
            SetEntityRoutingBucket(vehiculo, dimension)
            SetPlayerRoutingBucket(id, dimension)
            TriggerClientEvent('esx:showNotification', id, _U('dimensionHasSet')..dimension)
            TaskWarpPedIntoVehicle(GetPlayerPed(id), vehiculo, -1)
        else
            SetPlayerRoutingBucket(id, dimension)
            TriggerClientEvent('esx:showNotification', id, _U('dimensionHasSet')..dimension)
        end
        
    end
    else
        TriggerClientEvent('esx:showNotification', source,'No tienes permisos para usar esto')
    end

end, false)

RegisterCommand(Config.SetDefaultDimension, function(source)
    

    local vehiculo = GetVehiclePedIsIn(GetPlayerPed(source), false)
        if vehiculo ~= 0 then
            SetEntityRoutingBucket(vehiculo, 0)
            SetPlayerRoutingBucket(source, 0)
            TriggerClientEvent('esx:showNotification', source, _U('dimensionHasSet')..0)
            TaskWarpPedIntoVehicle(GetPlayerPed(source), vehiculo, -1)
        else
            SetPlayerRoutingBucket(source, 0)
            TriggerClientEvent('esx:showNotification', source, _U('dimensionHasSet')..0)
        end
end, false)

RegisterCommand(Config.ShowDimensionCommand, function(source)
    
    TriggerClientEvent('esx:showNotification', source, _U('actualDimension')..GetPlayerRoutingBucket(source))
end, false)