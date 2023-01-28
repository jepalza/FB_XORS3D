#Include ".\include\Xors3d.bi"

' *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*
' Xors3D basic sample: 'Camera Viewport'
' Original source from Xors3D Team (C)
' Converted in 2012 by Guevara-chan.
' *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*

Declare Sub Garbage(n As Integer)

xCreateLog()

xGraphics3D(1024,768, 32, 0, 1)
xSetBuffer(xBackBuffer())

' Create first camera
Dim As Integer  cam1 = xCreateCamera()

' Set the first camera's viewport so that it fills the top half of the  camera
Dim As Integer  w = xGraphicsWidth()
Dim As Integer  h = xGraphicsHeight()/1.777
xCameraViewport(cam1, 0, (xGraphicsHeight() - h)/2, w, h)
xCameraViewport(cam1, 1025, 769, 1024, 768)

Dim As Integer  light = xCreateLight()
xRotateEntity(light,90,0,0)

Garbage(100)

Var back = xCreateCube()
xEntityColor(back, 255, 0, 0)
xFlipMesh(back)
xScaleEntity(back, 500, 500, 500)

While (xKeyHit(KEY_ESCAPE) Or xWinMessage("WM_CLOSE"))=FALSE
	xCls()
	If xKeyDown( 205 )= TRUE   Then  xTurnEntity(cam1,0,-1,0)    
	If xKeyDown( 203 )= TRUE   Then  xTurnEntity(cam1,0,1,0)    
	If xKeyDown( 208 )= TRUE   Then  xMoveEntity(cam1,0,0,-0.05) 
	If xKeyDown( 200 )= TRUE   Then  xMoveEntity(cam1,0,0,0.05)  
	
	xRenderWorld()
	
	xText(10, 10, "Use cursor keys to move first camera")
	
	xFlip()
	
Wend

End

#Define Rnd_(MinVal, MaxVal) (( (Rnd(1)*((MaxVal - MinVal) * 1000.0)) + MinVal * 1000.0) / 1000.0)

sub  Garbage(n As integer)
	For i As Integer = 1 To n
		Var cube = xCreateCube()
		xPositionEntity(cube, Rnd_(-20.0, 20.0), Rnd_(-20.0, 20.0), Rnd_(-20.0, 20.0))
		xTurnEntity(cube, Rnd(1)*360, Rnd(1)*360, Rnd(1)*360)
		xEntityColor(cube, Rnd_(127, 255), Rnd_(127, 255), Rnd_(127, 255))
	Next
End Sub
