function printIp ( thePlayer )
	outputChatBox ( "IP: " .. getPlayerIP ( thePlayer ), thePlayer )
end
addCommandHandler ( "ip", printIp )




----------------------- teleport -----------------------

createBlip ( 2507.3 , -1724.61 , 0 , 52 )

function teleport()
Teleport1 = createMarker ( 2507.3, -1724.61, 12.5468, "cylinder", 2, 0, 0, 255, 255, getRootElement() )

function MarkerHit( hitElement, matchingDimension, interior )
    setElementPosition ( hitElement, 460, -88.23, 1000 )
	setElementDimension ( hitElement, 0 )
	setElementInterior ( hitElement, 4 )
	setElementRotation(hitElement, 0, 0, 90)

end
addEventHandler( "onMarkerHit", Teleport1, MarkerHit )

end
addEventHandler ( "onResourceStart", getRootElement (), teleport )


function teleport()
Teleport2 = createMarker ( 460, -88.8, 998.6, "cylinder", 1, 0, 255, 255, 255, getRootElement() )
setElementDimension ( Teleport2, 0 )
setElementInterior ( Teleport2, 4 )

function MarkerHit( hitElement, matchingDimension )
    setElementPosition ( hitElement, 2507.3, -1724.61, 12.5468 )
	setElementDimension ( hitElement, 0 )
	setElementInterior ( hitElement, 0 )
	setElementRotation(hitElement, 0, 0, 0)
end
addEventHandler( "onMarkerHit", Teleport2, MarkerHit )

end
addEventHandler ( "onResourceStart", getRootElement (), teleport )
