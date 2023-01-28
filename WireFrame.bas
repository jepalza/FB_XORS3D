#Include ".\include\Xors3d.bi"


' for camera mouse look
Function CurveValue(newvalue As single, oldvalue As single, increments As Integer) As Single
	If increments >  1 Then
		oldvalue = oldvalue - (oldvalue - newvalue) / increments
	EndIf
	If increments <= 1 Then
		oldvalue = newvalue
	EndIf
	Return oldvalue
End Function

' initialize graphics mode
xGraphics3D(800, 600, 32, FALSE , TRUE )

' create camera
Var cam=xCreateCamera() 
xPositionEntity(cam, 0, 10, -20)
xRotateEntity(cam, 10, 0, 0)

' load teapot mesh
Var teapot = xLoadMesh("./media/meshes/teapot.b3d")
xPositionEntity(teapot, 0, 0, 5)
xScaleMesh(teapot, 0.3, 0.3, 0.3)

' create post effect polygon
Var poly = xCreatePostEffectPoly(cam, 1)

' create textures
Var tex = xCreateTexture(800, 600)
Var tex2 = xCreateTexture(800, 600) 

' load post effect shader
Var postEffect = xLoadFXFile("./media/shaders/WireFrame_postEffect.fx")

xSetEntityEffect(poly, postEffect)
xSetEffectTechnique(poly, "Diffuse")
xSetEffectMatrixSemantic(poly, "MatWorldViewProj", WORLDVIEWPROJ)
xSetEffectTexture(poly, "tDiffuse", tex)
xSetEffectTexture(poly, "tEmissive", tex2)

' for mouse look
xMoveMouse(xGraphicsWidth() / 2, xGraphicsHeight() / 2)

Dim As Single mousespeed       = 0.5 
Dim As Single camerasmoothness = 4.5

' main loop
While xKeyHit(1)=0

	'enable wireframe
	xWireFrame(TRUE )

	' camera control
	If xKeyDown(KEY_W) then xMoveEntity(cam,  0,  0,  1)
	If xKeyDown(KEY_S) Then xMoveEntity(cam,  0,  0, -1)
	If xKeyDown(KEY_A) Then xMoveEntity(cam, -1,  0,  0)
	If xKeyDown(KEY_D) Then xMoveEntity(cam,  1,  0,  0)
	
	Dim As Single mxs = CurveValue(xMouseXSpeed() * mousespeed, mxs, camerasmoothness)
	Dim As Single mys = CurveValue(xMouseYSpeed() * mousespeed, mys, camerasmoothness)
	
	Dim As integer Fix_ = cInt(mxs) mod 360 + (mxs - cInt(mxs))
	
	Dim As Single camxa = camxa - Fix_
	Dim As Single camya = camya + mys
	
	If camya < -89 Then camya = -89 
	If camya >  89 Then camya =  89 
	
	xMoveMouse(xGraphicsWidth() / 2, xGraphicsHeight() / 2)
	xRotateEntity(cam, camya, camxa, 0.0)

	' turn teaport
	xTurnEntity(teapot, 0,1,0)
	
	' render scene
	xEntityColor(teapot, 0, 255, 0)
	xRenderWorld()
	' strech BB to texture
	xStretchBackBuffer(tex, 0, 0, 800, 600, 0)
	
	' isable wireframe
	xCls()
	xWireFrame(FALSE)
	' render world
	xEntityColor(teapot, 200, 0, 0)
	xRenderWorld()
	' strech BB to texture
	xStretchBackBuffer(tex2, 0, 0, 800, 600, 0)
	
	' render post effect
	xRenderPostEffect(poly)
	xColor(255,0,0)

	' draw text
	xText(40,30,"FPS: "+Str(xGetFPS()))
	xFlip()
	
	Sleep 10
	
Wend

