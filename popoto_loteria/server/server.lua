ESX								= nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Compra de boletos
RegisterNetEvent('popoto_loteria:darBoletos_d4xn')
AddEventHandler('popoto_loteria:darBoletos_d4xn', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local coords = xPlayer.getCoords(true)
    if #(coords-vector3(219.80, -859.85, 29.20)) <= 3 then
        if xPlayer.getMoney() >= 12 then

            xPlayer.addInventoryItem('boleto_euromillon', 1)
            xPlayer.removeMoney(12)

        elseif xPlayer.getMoney() < 12 then

            TriggerClientEvent('esx:showNotification', _source, '~r~No ~w~tienes dinero!')
        end
    end
end)

ESX.RegisterUsableItem('boleto_euromillon', function(source)
    local winner = math.random(0, 100000)
    local number = math.random(0, 100000)
    local winner2 = math.random(0, 1000)
    local number2 = math.random(0, 1000)
    local luck = math.random(0, 100)
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('boleto_euromillon', 1)

    if winner == number then
		TriggerClientEvent('esx:showNotification', source,"TE HA TOCADO EL GORDO FELICIDADES HAS GANADO 1.000.000$ !!!")
        xPlayer.addMoney(1000000) -- 1/1,000,000 posibilidades

    elseif winner2 == number2 then
		TriggerClientEvent('esx:showNotification', source,"TE HA TOCADO EL SEGUNDO PREMIO HAS GANADO 10.000$")
        xPlayer.addMoney(10000)

    else
        if luck >= 25 then
            if luck >= 50 then
                if luck >= 80 then
                    if luck >= 95 then
						TriggerClientEvent('esx:showNotification', source,"Te han tocado 150$ ! ")
                        xPlayer.addMoney(150)
                    else
						TriggerClientEvent('esx:showNotification', source,"Te han tocado 50$ ! ")
                        xPlayer.addMoney(50)
                    end
                else
					TriggerClientEvent('esx:showNotification', source,"Te han tocado 12$ ! ")
                    xPlayer.addMoney(12)
                end
            else
				TriggerClientEvent('esx:showNotification', source,"Te han tocado 6$ ! ")
                xPlayer.addMoney(6)
            end
        else
			TriggerClientEvent('esx:showNotification', source,"No te ha tocado nada")
        end
    end
end)



print ("HECHO POR P0p0toʰᵃᵗᵉᵧₒᵤ#0001")
print ("HECHO POR P0p0toʰᵃᵗᵉᵧₒᵤ#0001")
print ("HECHO POR P0p0toʰᵃᵗᵉᵧₒᵤ#0001")
print ("HECHO POR P0p0toʰᵃᵗᵉᵧₒᵤ#0001")
print ("HECHO POR P0p0toʰᵃᵗᵉᵧₒᵤ#0001")
print ("HECHO POR P0p0toʰᵃᵗᵉᵧₒᵤ#0001")