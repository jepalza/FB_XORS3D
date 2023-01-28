#Include ".\include\Xors3d.bi"



' *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*
' Xors3D basic sample: 'Aspect Ratio'
' Original source from Xors3D Team (C)
' Converted in 2012 by Guevara-chan.
' *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*




Declare function CreateCheckerTexture(size As Integer) As integer

xCreateLog()

xGraphicsAspectRatio(16.0 / 9.0)
xGraphics3D(1024,768, 32, 0, 1)
xGraphicsBorderColor(48, 64, 32)
xGraphicsBorderColor(255, 0, 0)
xSetBuffer(xBackBuffer())

Dim As Integer  cam1 = xCreateCamera()
xcameraclscolor(cam1, 32, 48, 64)
xCameraViewport(cam1, 0, 0, xGraphicsWidth(), xGraphicsHeight() Shl 1)
Dim As Integer  cam2 = xCreateCamera()
xcameraclscolor(cam2, 64, 48, 32)
xCameraViewport(cam2, xGraphicsWidth() shl 1, 0, xGraphicsWidth() Shl 1, xGraphicsHeight())
xCameraViewport(cam2, 0, xGraphicsHeight() shl 1, xGraphicsWidth(), xGraphicsHeight() Shl 1)
xRotateEntity(cam2, 180, 0, 0)

Dim As Integer  light = xCreateLight()
xRotateEntity(light, 90, 0, 0)

Dim As Integer  tex = CreateCheckerTexture(256)
Var cube1 = xCreateCube()
xRotateEntity(cube1, 45, 45, 0)
xEntityColor(cube1, 255, 127, 64)
xPositionEntity(cube1, 0, 0, 4)
xEntityTexture(cube1, tex)

Dim As Integer  cube2 = xCreateCube()
xRotateEntity(cube2, 45, 45, 0)
xEntityColor(cube2, 64, 127, 255)
xPositionEntity(cube2, 0, 0, -4)
xEntityTexture(cube2, tex)

xViewport(0, 0, xGraphicsWidth() shl 1, xGraphicsHeight() Shl 1)

While (xKeyHit(KEY_ESCAPE) Or xWinMessage("WM_CLOSE"))=FALSE
	xTurnEntity(cube1, 0.05, 0.05, 0.05)
	xTurnEntity(cube2, -0.05, 0.05, -0.05)
	If xKeyDown( 205 )=  TRUE Then  xTurnEntity(cam1,0,-1,0)    : xTurnEntity(cam2, 0, -1, 0)    
	If xKeyDown( 203 )=  TRUE Then  xTurnEntity(cam1,0,1,0)     : xTurnEntity(cam2, 0, 1, 0)     
	If xKeyDown( 208 )=  TRUE Then  xMoveEntity(cam1,0,0,-0.05) : xMoveEntity(cam2, 0, 0, 0.05)  
	If xKeyDown( 200 )=  TRUE Then  xMoveEntity(cam1,0,0,0.05)  : xMoveEntity(cam2, 0, 0, -0.05) 
	
	If xKeyHit( KEY_F1)  Then  xGraphicsAspectRatio(5.0 / 4.0)   
	If xKeyHit( KEY_F2)  Then  xGraphicsAspectRatio(4.0 / 3.0)   
	If xKeyHit( KEY_F3)  Then  xGraphicsAspectRatio(16.0 / 10.0) 
	If xKeyHit( KEY_F4)  Then  xGraphicsAspectRatio(16.0 / 9.0)  
	If xKeyHit( KEY_F5)  Then  xGraphicsAspectRatio(13.0 / 7.0)  
	
	xRenderWorld()
	
	xText(10, 50 , "Real aspect ratio of monitor " + Str(xVideoAspectRatioStr()) )
	xText(10, 100, "F1 for 5:4")
	xText(10, 120, "F2 for 4:3")
	xText(10, 140, "F3 for 16:10")
	xText(10, 160, "F4 for 16:9")
	xText(10, 180, "F5 for 13:7 (something insane)")
	xRect(0, 0, 1024, 768)
	xRect(2, 2, 1020, 764)
	
	xLine(0, 0, xGraphicsWidth(), xGraphicsHeight())
	xLine(0, xGraphicsHeight(), xGraphicsWidth(),0 )
	
	xFlip()
	
Wend


Function  CreateCheckerTexture(size As integer) As Integer
	Dim As Integer  lTex = xCreateTexture(size, size)
	xSetBuffer(xTextureBuffer(lTex))
	xColor(222, 222, 222)
	xRect(0, 0, size, size, 1)
	xColor(255, 255, 255)
	xRect(0, 0, size / 2, size / 2, 1)
	xRect(size / 2, size / 2, size / 2, size / 2, 1)
	xSetBuffer(xBackBuffer())
	Return lTex
End Function

