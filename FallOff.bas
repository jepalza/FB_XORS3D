#Include ".\include\Xors3d.bi"

' *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*
' Xors3D shading sample: 'FallOff'
' Original source from MoKa (Maxim Miheyev)
' Converted in 2012 by Guevara-chan.
' *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*


'====================================
Declare Sub UpdateInput()
Declare Sub UpdateCamera(Camera As Integer  ,ViewSensivity As single ,MoveSensivity As single )
'====================================


'====================================
' Window
xGraphics3D(800,600,32,0,1)
xSetTextureFiltering( TF_ANISOTROPIC)
'====================================


'====================================
' Font
Var Font=xLoadFont("Tahoma",10)
xSetFont(Font)
'====================================


'====================================
' Variables
 Dim Shared As Integer  mXSp  ,mYSp  
 Dim Shared As Integer  IKdQ  ,IKdW  ,IKdE  ,IKdA  ,IKdS  ,IKdD  
'====================================


'====================================
' Camera
Dim Shared As integer gCamera
gCamera=xCreateCamera()
xCameraZoom(gCamera,0.8)
xCameraClsColor(gCamera,50,50,50)
xRotateEntity(gCamera,20,45,0)
xMoveEntity(gCamera,0,10,-100)
'====================================


'====================================
' Shader
Dim As Single  tShader  =xLoadFXFile(".\Media\Materials\fallOff.fx")
'====================================


'====================================
' Model
Dim As Integer  tModel  =xLoadMesh(".\Media\Extra_media\Teapot.b3d")

Dim As Integer  tTextureDiffuse  =xLoadTexture(".\Media\Extra_media\Rockwall_Diffuse.jpg")

xSetEntityEffect(tModel,tShader)
xSetEffectTechnique(tModel,"Normal")
xSetEffectMatrixSemantic(tModel,"MatWorldViewProj", WORLDVIEWPROJ)
xSetEffectMatrixSemantic(tModel,"MatWorld", WORLD)
'		Shader Varriables
xSetEffectVector(tModel,	"FallOffClr",1,0.5,0.0)
xSetEffectFloat(tModel,		"FallOffInt",1)
xSetEffectTexture(tModel,	"tDiffuse",tTextureDiffuse)
'====================================



'====================================
' Main Cycle
xMoveMouse(400,300)

While 1 ' forever

		UpdateInput()
		UpdateCamera(gCamera,0.1,1)
		
		'====================================
		xTurnEntity(tModel,0,0.1,0)
		'====================================
		
		If xKeyHit( KEY_ESCAPE)=TRUE  Then End

	xSetEffectVector(tModel,"PosCam",xEntityX(gCamera),xEntityY(gCamera),xEntityZ(gCamera))
	xSetEffectFloat (tModel,"FallOffSoft",(Sin(timer*0.3)+1.2)*3)
	
	xRenderWorld()
	
	xText(10,10,"TrisRendered: "+Str(xTrisRendered()))
	xText(10,25,"FPS: "+Str(xGetFPS()))
	
	xFlip()
Wend
'====================================



'====================================
' Functions
Sub  UpdateInput()
	xMoveMouse(400,300)
	mXSp=xMouseXSpeed() : mYSp=xMouseYSpeed()
	IKdQ=xKeyDown( KEY_Q) : IKdW=xKeyDown( KEY_W)
	IKdE=xKeyDown( KEY_E) : IKdA=xKeyDown( KEY_A)
	IKdS=xKeyDown( KEY_S) : IKdD=xKeyDown( KEY_D)
End Sub


Sub UpdateCamera(Camera As Integer,ViewSensivity As single,MoveSensivity As single)
	Dim As single CamP = xEntityPitch(gCamera)+mYSp*ViewSensivity
	If Abs(CamP)>80 Then CamP=80*Sgn(CamP)
	xTurnEntity(Camera,0,-mXSp*ViewSensivity,0)
	xRotateEntity(Camera,CamP,xEntityYaw(gCamera),0)
	xMoveEntity(Camera,(IKdD-IKdA)*MoveSensivity,(IKdE-IKdQ)*MoveSensivity,(IKdW-IKdS)*MoveSensivity)
End Sub
