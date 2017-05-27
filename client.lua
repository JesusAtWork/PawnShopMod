ºlocal px,py,pz = getElementPosition
function drawhud()
GUIEditor = {
    gridlist = {},
    window = {},
    label = {}
}
addEventHandler("onClientResourceStart", resourceRoot,
    function()
        GUIEditor.window[1] = guiCreateWindow(0.40, 0.22, 0.26, 0.56, "objetos", true)
        guiWindowSetSizable(GUIEditor.window[1], false)

        GUIEditor.label[1] = guiCreateLabel(0.30, 0.11, 0.38, 0.08, "Rick Harrison", true, GUIEditor.window[1])
        guiLabelSetHorizontalAlign(GUIEditor.label[1], "center", false)
        GUIEditor.gridlist[1] = guiCreateGridList(18, 74, 171, 241, false, GUIEditor.window[1])
        guiGridListAddColumn(GUIEditor.gridlist[1], "nombre", 0.5)
        guiGridListAddColumn(GUIEditor.gridlist[1], "precio", 0.5)


        GUIEditor.window[2] = guiCreateWindow(0.03, 0.77, 0.30, 0.21, "Ahora", true)
        guiWindowSetSizable(GUIEditor.window[2], false)


        GUIEditor.label[2] = guiCreateLabel(80, 519, 0, 0, "%9999", false)


        GUIEditor.label[3] = guiCreateLabel(0.05, 0.86, 0.26, 0.08, "$9999", true)
        guiSetFont(GUIEditor.label[3], "sa-gothic")
        guiLabelSetHorizontalAlign(GUIEditor.label[3], "center", false)
        guiLabelSetVerticalAlign(GUIEditor.label[3], "center")
    end
)

end
end

addcommandhandler

local sound = playSound3D("sounds/mgroan"..randnum..".ogg", Zx, Zy, Zz, false)
setSoundMaxDistance(sound, 20)
