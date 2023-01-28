#Include ".\include\Xors3d.bi"


' *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*
' Xors3D basic sample: 'Overlay3D'
' Original source from Xors3D Team (C)
' Converted in 2012 by Guevara-chan.
' *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*




Declare Sub Garbage(num As integer)
Declare Sub CameraControl()
Declare Function CurveValue(newvalue  As Single , oldvalue  As Single , increments As integer) As Single

xGraphics3d(1024, 768, 32, 0, 1)

xMoveMouse(xGraphicsWidth() / 2, xGraphicsHeight() / 2)
 Dim Shared As Single  mousespeed         = 0.5
 Dim Shared As Single  camerasmoothness   = 8
 Dim Shared As Single  camxa   = 0
 Dim Shared As Single  camya   = 0

 Dim Shared As Integer  camera 
 camera = xCreateCamera()
 
 xCameraClsColor(camera, 64, 64, 64)
 Dim As Integer  light = xCreateLight()

 Dim Shared As Integer  cube 
 cube = xCreateCube(camera)
 xRotateEntity(cube, 30.0, 15.0, 0.0)
 xScaleEntity(cube, 0.25, 0.25, 0.25)
 xPositionEntity(cube, -2.0, 1.35, 5.0)
 xEntityColor(cube, 255, 128, 0)

Garbage(40)

 Dim Shared As Integer  drawOverlay = 1

While xKeyHit( KEY_ESCAPE)=FALSE
	
	If xKeyHit(57) Then
		drawOverlay = 1 - drawOverlay
	EndIf
	
	xTurnEntity(cube, 0.1, -0.1, 0.1)
	CameraControl()
	
	xRenderWorld()
	
	xColor(128, 0, 255)
	xRect(35, 35, 210, 210, 1)
	
	If drawOverlay Then
		xCameraClsMode(camera,  FALSE ,  TRUE )
		xShowEntity(cube)
		xRenderEntity(camera, cube)
		xCameraClsMode(camera,  TRUE ,  TRUE )
		xHideEntity(cube)
	EndIf
	
	xColor(255, 255, 255)
	
	xText(10, xGraphicsHeight() - 60, "WASD to move camera")
	xText(10, xGraphicsHeight() - 40, "Mouse to rotate camera")
	xText(950, 740, Str(xTrisRendered()))
	
	xFlip()
Wend

End

#Define Rnd_(MinVal, MaxVal) (( (Rnd(1)*((MaxVal - MinVal) * 1000.0)) + MinVal * 1000.0) / 1000.0)

Sub Garbage(num As integer)
	Dim As Integer  i  
	
	For i = 1 To num
		Dim As Integer  r   = Rnd_(128, 255)
		Dim As Integer  g   = Rnd_(128, 255)
		Dim As Integer  b   = 383 - r
		Dim As Integer  obj = xCreateCube()
		xPositionEntity(obj, Rnd_(-25.0, 25.0), Rnd_(-25.0, 25.0), Rnd_(25.0, 45.0))
		xEntityColor(obj, r, g, b)
		xScaleEntity(obj, Rnd_(0.75, 1.5), Rnd_(0.75, 1.5), Rnd_(0.75, 1.5))
	Next
End Sub


Dim Shared  As Single  mxs 
Dim Shared  As Single  mys 
Sub  CameraControl()
	If xKeyDown( KEY_W)  Then  xMoveEntity(camera,  0,  0,  1.0) 
	If xKeyDown( KEY_S)  Then  xMoveEntity(camera,  0,  0, -1.0) 
	If xKeyDown( KEY_A)  Then  xMoveEntity(camera, -1.0,  0,  0) 
	If xKeyDown( KEY_D)  Then  xMoveEntity(camera,  1.0,  0,  0) 
	mxs  = CurveValue(xMouseXSpeed() * mousespeed, mxs, camerasmoothness)
	mys  = CurveValue(xMouseYSpeed() * mousespeed, mys, camerasmoothness)
   camxa   = camxa - mxs
	camya   = camya + mys
	If camxa < 0    Then  camxa = 360
	If camxa > 360  Then  camxa = 0
	If camya < -89  Then  camya = -89 
	If camya >  89  Then  camya =  89 
	Locate 2,1:Print camya,camxa
	xMoveMouse(xGraphicsWidth() / 2, xGraphicsHeight() / 2)
	xRotateEntity(camera, camya, camxa, 0.0)
End Sub

Function  CurveValue(newvalue As Single, oldvalue As Single, increments As Integer) As Single
	If increments >  1  Then  oldvalue   = oldvalue   - (oldvalue   - newvalue  ) / increments 
	If increments <= 1  Then  oldvalue   = newvalue   
	Return oldvalue   
End Function
