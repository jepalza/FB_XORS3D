#Include ".\include\Xors3d.bi"

' *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*
' Xors3D legacy sample: 'Forest'
' Original source from Xors3D Team (C)
' Converted in 2012 by Guevara-chan.
' *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*




Declare function CurveValue(newvalue As single , oldvalue As Single , increments As integer) As Single
Declare Sub UpdateParticles()
Declare Sub CreateParticle(x As Integer , y As Integer , z As Integer , texture As Integer)
Declare Function CreateSkyBox(skyPath As string ) As integer

' for particles
Type  TParticle
	As Integer entity
	As Single speed  
	As Single alpha_  
End Type

Dim Shared As TParticle Particles(128)

' setup maximum supported AntiAlias Type
xSetAntiAliasType(0) 'xGetMaxAntiAlias()

' set application window caption
xAppTitle("Forest sample")

' initialize graphics mode
xGraphics3D(800, 600, 32,  FALSE ,  FALSE )
xCreateDSS(1024, 1024)

' set texture filtring
xSetTextureFiltering( TF_ANISOTROPICX16)

' hide mouse pointer
xHidePointer()

' enable antialiasing
xAntiAlias( True)

' force abolute path for textures
xSetEngineSetting("LoadMesh::RelativePaths", "false")

' create camera
Var camera = xCreateCamera()
xCameraRange(camera, 0.1, 1000)
xCameraEnableShadows(camera)
Var cameraDist = 50

'create a terrain
Var terrain = xLoadTerrain("./media/textures/height_map.bmp")
xTerrainShading(terrain,  True)
xScaleEntity(terrain, 10, 70, 10)
' load grass texture
Var grass = xLoadTexture("./media/textures/gras_diffuse_1a.jpg")
xScaleTexture(grass, 0.01, 0.01)
xEntityTexture(terrain, grass, 0, 0)

' create forest
Var bereza = xLoadMesh("./media/meshes/bereza2.b3d")
Var shader = xLoadFXFile("./media/shaders/shaderinstancing.fx")
xSetEntityEffect(bereza, shader)
xSetEffectTechnique(bereza, "Instancing")
Var amount = 300
For i As integer= 0 To amount
	Var copy = xCreateInstance(bereza)
	Var x   =  Rnd(1)*(2000)
	Var z   =  Rnd(1)*(2000)
	Var y   = 0
	y = xTerrainY(terrain, x  , y  , z  ) - 1
	xPositionEntity(copy, x, y, z)
	xRotateEntity(copy, (Rnd(1)*(6) - 3) / 10.0, Rnd(1)*(90), (Rnd(1)*(6) - 3) / 10.0)
	xScaleEntity(copy, 20, 20, 20)
Next

' for mouse look
xMoveMouse(xGraphicsWidth() / 2, xGraphicsHeight() / 2)
Var mousespeed         = 0.5 
Var camerasmoothness   = 4.5

' create light
Var light = xCreateLight()
xRotateEntity(light, 45, 0, 0)

' create skybox
Var skybox = xLoadMesh("./media/meshes/skydome.b3d")
xEntityFX(skybox, 1)
xScaleEntity(skybox, 0.5, 0.5, 0.5)
xEntityColor(skybox, 255, 255, 255)
xEntityOrder(skybox, 1)

' warrior
Var warrior = xLoadAnimMesh("./media/meshes/kuznec.b3d")
xEntityColor(warrior, 255, 255, 255)
Var x =  1000
Var z =  1000
Var y = 0 
y=xTerrainY(terrain, x, y, z)
xPositionEntity(warrior, x, y, z)
xScaleEntity(warrior, 5, 5, 5)
xExtractAnimSeq(warrior, 14, 18)
Var animIdle = 1
xExtractAnimSeq(warrior, 20, 59)
Var animRun = 2
var currAnim = animIdle
Var lastAnim = 0
xAnimate(warrior, 2, 0.1, currAnim)

' shadows
xInitShadows(1024, 0, 0)

' set shadows params
Var enableShadows = 1
xEntityCastShadows(terrain, light,  False)
xLightEnableShadows(light, 1)
xSetShadowParams(2, 0.6,  True, 300)
xLightShadowEpsilons(light, 0.0001, 0.20)

' fire
Var koster = xLoadAnimMesh("./Media/Meshes/koster.b3d")
xEntityColor(koster, 255, 255, 255)
xScaleEntity(koster, 0.07, 0.07, 0.07)
x = 1010
z = 1000
y = xTerrainY(terrain, x, y, z)
xPositionEntity(koster, x, y, z)
Var flameEmiter = koster 'xFindChild(koster, "flame")
Var flame = xLoadTexture("./Media/Textures/fire.jpg", 1 + 2)
xTextureBlend(flame, 5)

' main program loop
Dim As Integer lastMoveZ
Dim As Integer MoveZ,movex
Dim As Integer move
Dim As Single camya, camxa, mxs, mys, fix_
Dim As Single px,py,pz
Dim As Single terra_y

Dim As Integer lastCreated

While xKeyDown( KEY_ESCAPE)=FALSE

	' warrior control
	lastAnim = currAnim
	currAnim = animIdle
	lastMoveZ = movez
	movez = 0
	If xKeyDown( KEY_W) Then
		xMoveEntity(warrior,  0,  0,  1)
		currAnim = animRun
		movez =  1
	EndIf
	If xKeyDown( KEY_S) Then
		If lastMoveZ = 0 Or lastMoveZ = 1 Then
			move = -1
		ElseIf lastMoveZ = -1 Then
			move = 1
		EndIf
		xMoveEntity(warrior,  0,  0,  1)
		currAnim = animRun
		movez = -1
	EndIf
	
	' camera look
	If xMouseDown(2) Then
		cameraDist = cameraDist + (xMouseYSpeed() * mousespeed)
		If cameraDist < 10  Then  cameraDist = 10 
		If cameraDist > 100  Then  cameraDist = 100 
		xMoveMouse(xGraphicsWidth() / 2, xGraphicsHeight() / 2)
	Else
		mxs   = CurveValue(xMouseXSpeed() * mousespeed, mxs, camerasmoothness)
		mys   = CurveValue(xMouseYSpeed() * mousespeed, mys, camerasmoothness)
		Fix_  = Int(mxs) Mod 360 + (mxs - Int(mxs))
	   camxa   = camxa - Fix_
	   camya   = camya + mys
		If camya < 0  Then  camya = 0 
		If camya > 45  Then  camya = 45 
		cameraDist = cameraDist + (xMouseZSpeed() * 3)
		xMoveMouse(xGraphicsWidth() / 2, xGraphicsHeight() / 2)
		xRotateEntity(camera, camya, camxa, 0.0)
		If cameraDist < 10  Then  cameraDist = 10 
		If cameraDist > 100  Then  cameraDist = 100 
	EndIf
	
	'setting the warrior above the terrain
	x = xEntityX(warrior)
	y = xEntityY(warrior)
	z = xEntityZ(warrior)
	terra_y   = xTerrainY(terrain, x, y, z)
	xPositionEntity(warrior, x, terra_y, z)
	xPositionEntity(camera, xEntityX(warrior), xEntityY(warrior) + 10, xEntityZ(warrior))
	If movez <> 0 Or movex <> 0 Then
		If movez = -1 Then
			xRotateEntity(warrior, 0, xEntityYaw(camera) + 180, 0)
		Else
			xRotateEntity(warrior, 0, xEntityYaw(camera), 0)
		EndIf
	EndIf
	xMoveEntity(camera, 0, 0, -cameraDist)
	
	' position skybox
	xPositionEntity(skybox, xEntityX(camera), xEntityY(camera), xEntityZ(camera))
	
	' switch animation
	If currAnim <> LastAnim Then
		If currAnim = animRun Then
			xAnimate(warrior, 1, 1.7, currAnim, 10)
		ElseIf currAnim = animIdle Then
			xAnimate(warrior, 2, 0.1, currAnim, 1)
		EndIf
	EndIf
	
	' update flame
	If Timer*100 > lastCreated Then
		px   = xEntityX(flameEmiter,  True) + (Rnd(1)*(2) - 1) / 10.0
		py   = xEntityY(flameEmiter,  True)
		pz   = xEntityZ(flameEmiter,  True) + (Rnd(1)*(2) - 1) / 10.0
		CreateParticle(px, py, pz, flame)
		lastCreated = Timer*100 + 25
	EndIf
	UpdateParticles()
	
	' switch shadows on/off
	If xKeyHit( KEY_Q)  Then  enableShadows = 1 - enableShadows 
	
	' update animations
	xUpdateWorld()
	
	' render scene
	xRenderWorld(1.0, enableShadows)
	
	' draw text
	xColor(255,255,0)
	xText(10, 10, "TrisRendered: " + Str(xTrisRendered()))
	xText(10, 30, "FPS: " + Str(xGetFPS()))
	xText(10, 50, "DIP calls: " + Str(xDIPCounter()))
	Var shadowsState   = "enabled"
	If enableShadows = 0  Then  shadowsState = "disabled" 
	xText(10, 70, "Q - enable.disable shadows (" + shadowsState + " now)")
	
	' switch back buffer
	xFlip()
	
Wend




' for FLAME particles
Sub  UpdateParticles()
	Dim As TParticle Ptr Particle
	For i As Integer= 0 to 128
		Particle = @Particles(i)
		If Particle->entity Then
			xTranslateEntity(particle->entity, 0.0, particle->speed, 0.0)
			particle->Alpha_ = particle->Alpha_ - 0.05
			xEntityAlpha(particle->entity, particle->Alpha_)
			If particle->Alpha_ < 0.001 Then
				xFreeEntity(particle->entity)
				'free(Particles(i))
				Particles(i).entity=0
			EndIf
		EndIf
	Next
End Sub

Sub  CreateParticle(x As integer , y As Integer , z As Integer , texture As Integer) 
	Dim As TParticle Ptr NewParticle
	NewParticle = @Particles(0)
   newParticle->entity = xCreateSprite()
	xEntityTexture(newParticle->entity, texture)
	xEntityFX(newParticle->entity, 1)
	xEntityBlend(newParticle->entity, 3)
	xPositionEntity(newParticle->entity, x, y, z)
	xScaleSprite(newParticle->entity, Rnd(1)*(5) + 2, Rnd(1)*(5) + 2)
	newParticle->speed  = (Rnd(1)*(3) + 2) / 10.0
	newParticle->Alpha_ = 1.0
End sub




' for camera mouse look
Function    CurveValue(newvalue As single , oldvalue As Single , increments As integer) As Single
	If increments >  1  Then  oldvalue   = oldvalue   - (oldvalue   - newvalue  ) / increments 
	If increments <= 1  Then  oldvalue   = newvalue   
	Return oldvalue   
End Function

' Function for sky box creating
Function  CreateSkyBox(skyPath   As string) As Integer 
	Var skybox = xCreateMesh()
	' Left
	Var texture = xLoadTexture(skyPath + "sky_left.jpg", 49)
	Var brush = xCreateBrush()
	xBrushTexture(brush, texture)
	Var surface = xCreateSurface(skybox, brush)
	Var v0 = xAddVertex(surface, -1.0,  1.0, -1.0, 0.0, 0.0)
	Var v1 = xAddVertex(surface, -1.0,  1.0,  1.0, 1.0, 0.0)
	Var v2 = xAddVertex(surface, -1.0, -1.0, -1.0, 0.0, 1.0)
	Var v3 = xAddVertex(surface, -1.0, -1.0,  1.0, 1.0, 1.0)
	xAddTriangle(surface, v2, v1, v0)
	xAddTriangle(surface, v1, v2, v3)
	' Front
	texture = xLoadTexture(skyPath + "sky_front.jpg", 49)
	brush = xCreateBrush()
	xBrushTexture(brush, texture)
	surface = xCreateSurface(skybox, brush)
	v0 = xAddVertex(surface, -1.0,  1.0, 1.0, 0.0, 0.0)
	v1 = xAddVertex(surface,  1.0,  1.0, 1.0, 1.0, 0.0)
	v2 = xAddVertex(surface, -1.0, -1.0, 1.0, 0.0, 1.0)
	v3 = xAddVertex(surface,  1.0, -1.0, 1.0, 1.0, 1.0)
	xAddTriangle(surface, v2, v1, v0)
	xAddTriangle(surface, v1, v2, v3)
	' Right
	texture = xLoadTexture(skyPath + "sky_right.jpg", 49)
	brush = xCreateBrush()
	xBrushTexture(brush, texture)
	surface = xCreateSurface(skybox, brush)
	v0 = xAddVertex(surface, 1.0,  1.0,  1.0, 0.0, 0.0)
	v1 = xAddVertex(surface, 1.0,  1.0, -1.0, 1.0, 0.0)
	v2 = xAddVertex(surface, 1.0, -1.0,  1.0, 0.0, 1.0)
	v3 = xAddVertex(surface, 1.0, -1.0, -1.0, 1.0, 1.0)
	xAddTriangle(surface, v2, v1, v0)
	xAddTriangle(surface, v1, v2, v3)
	' Back
	texture = xLoadTexture(skyPath + "sky_back.jpg", 49)
	brush = xCreateBrush()
	xBrushTexture(brush, texture)
	surface = xCreateSurface(skybox, brush)
	v0 = xAddVertex(surface,  1.0,  1.0, -1.0, 0.0, 0.0)
	v1 = xAddVertex(surface, -1.0,  1.0, -1.0, 1.0, 0.0)
	v2 = xAddVertex(surface,  1.0, -1.0, -1.0, 0.0, 1.0)
	v3 = xAddVertex(surface, -1.0, -1.0, -1.0, 1.0, 1.0)
	xAddTriangle(surface, v2, v1, v0)
	xAddTriangle(surface, v1, v2, v3)
	' Bottom
	texture = xLoadTexture(skyPath + "sky_down.jpg", 49)
	brush = xCreateBrush()
	xBrushTexture(brush, texture)
	surface = xCreateSurface(skybox, brush)
	v0 = xAddVertex(surface, -1.0, -1.0,  1.0, 0.0, 0.0)
	v1 = xAddVertex(surface,  1.0, -1.0,  1.0, 1.0, 0.0)
	v2 = xAddVertex(surface, -1.0, -1.0, -1.0, 0.0, 1.0)
	v3 = xAddVertex(surface,  1.0, -1.0, -1.0, 1.0, 1.0)
	xAddTriangle(surface, v2, v1, v0)
	xAddTriangle(surface, v1, v2, v3)
	' Top
	texture = xLoadTexture(skyPath + "sky_up.jpg", 49)
	brush = xCreateBrush()
	xBrushTexture(brush, texture)
	surface = xCreateSurface(skybox, brush)
	v0 = xAddVertex(surface, -1.0, 1.0,  1.0, 0.0, 0.0)
	v1 = xAddVertex(surface, -1.0, 1.0, -1.0, 1.0, 0.0)
	v2 = xAddVertex(surface,  1.0, 1.0,  1.0, 0.0, 1.0)
	v3 = xAddVertex(surface,  1.0, 1.0, -1.0, 1.0, 1.0)
	xAddTriangle(surface, v2, v1, v0)
	xAddTriangle(surface, v1, v2, v3)
	' set FX flags
	xEntityFX(skybox, 1)
	xFlipMesh(skybox)
	xUpdateNormals(skybox)
	' return skybox handle
	Return skybox
End Function

