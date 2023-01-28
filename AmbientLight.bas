#Include ".\include\Xors3d.bi"

' *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*
' Xors3D basic sample: 'Ambient Light'
' Original source from Xors3D Team (C)
' Converted in 2012 by Guevara-chan.
' *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*

 xGraphics3d(1024, 768, 32, 0, 1)

 Dim  As Integer  world0  = xGetDefaultWorld()
 Dim  As Integer  camera0 = xCreateCamera()
 Dim  As Integer  cube0   = xCreateCube()
 xPositionEntity(cube0, 0, 0, 5)
 xAmbientLight(255, 0, 0)

 Dim  As Integer  world1  = xCreateWorld()
 xSetActiveWorld(world1)
 Dim  As Integer  camera1 = xCreateCamera()
 Dim  As Integer  cube1   = xCreateCube()
 xPositionEntity(cube1, 0, 0, 5)
 xAmbientLight(255, 255, 0, world0)

 xSetActiveWorld(world0)
 xAmbientLight(0, 0, 255, world1)

Dim As Integer worldNum = 0
While (xKeyHit(KEY_ESCAPE) Or xWinMessage("WM_CLOSE"))=FALSE
	
	xTurnEntity(cube0,  0.1,  0.1,  0.1)
	xTurnEntity(cube1, -0.1, -0.1, -0.1)
	
	If xKeyHit( KEY_SPACE) Then
		worldNum = 1 - worldNum
		If worldNum = 0 Then
			xSetActiveWorld(world0)
		Else
			xSetActiveWorld(world1)
		EndIf
	EndIf
	
	xRenderWorld()
	xText(10, 10, "Press <Space> to toggle world")
	xText(10, 25, "World  " + Str(worldNum))
	If worldNum=0 Then 
		xText(10, 40, "Yellow")
	Else
		xText(10, 40, " Blue ")
	End If
	xFlip()
Wend

