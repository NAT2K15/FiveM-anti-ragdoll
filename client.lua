local ped;
Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(1)
        if(ped) then
            if IsPedArmed(ped, 6) or IsPlayerFreeAiming(ped) then
                DisableControlAction(0, 22, true)
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(200)
        ped = PlayerPedId()
    end
end)
