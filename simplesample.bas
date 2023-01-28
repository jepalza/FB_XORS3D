#Include ".\include\Xors3d.bi"

	' resx, resy, bpp, fullscreen, truebuffer
	xGraphics3D(800, 600, 32, FALSE, TRUE) 
	
	Dim As Integer camera = xCreateCamera()
	Dim As Integer light  = xCreateLight()
	xRotateEntity(light, 90, 0, 0)
	Dim As Integer cube   = xCreateCube()
	xcameraclscolor(camera, 32, 48, 64)
	xPositionEntity(cube, 0.0, 0.0, 10.0)
	xColor (200, 200, 0, 255)
	
	While (xKeyHit(KEY_ESCAPE) Or xWinMessage("WM_CLOSE"))=FALSE
     xTurnEntity(cube, 0.1, 0.1, 0.1)
     xRenderWorld()
     xText(10, 10, "Hello 3D World!")
     xText(10, 30, "FPS: " + Str( xGetFPS() ) )
     xLine(0,xGraphicsHeight(), xGraphicsWidth(),0 )
	  xRect(4, 4, xGraphicsWidth()-8, xGraphicsHeight()-8)
     xFlip()
	Wend
