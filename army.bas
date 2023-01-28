'*******************************************************************
'*                                                                 *
'* Xors3D Engine. Army sample, (c) 2009 Xors3D Team                *
'* www: http://xors3d.com                                          *
'* e-mail: support@xors3d.com                                      *
'*                                                                 *
'*******************************************************************

' Include header file
#Include ".\include\Xors3d.bi"


' for camera mouse look
Function CurveValue( newvalue As Single, oldvalue As Single, increments As Integer) As single
  If increments >  1 Then oldvalue = oldvalue - (oldvalue - newvalue) / increments
  If increments <= 1 Then oldvalue = newvalue 
  Return oldvalue
End Function

' setup maximum supported AntiAlias Type
xSetAntiAliasType( xGetMaxAntiAlias() )

' set application window caption
xAppTitle( "Army sample" )

' initialize graphics mode
xGraphics3D( 800, 600, 32, FALSE ,  TRUE )

' initialize fastimage font + image
Var font = xLoadFont(".\media\army\font.txt",24)
xSetFont(font)
Var demo = xLoadImage(".\media\army\test.png")


xSetEngineSetting("LoadMesh::RelativePaths", "false")

Randomize Timer

' hide mouse pointer
'xHidePointer()

' enable antialiasing
xAntiAlias( TRUE  )

' create camera
Var camera = xCreateCamera()

' position camera
xPositionEntity( camera, 0, 2, -5 )



' -------------------------
' if shaders are supported (their version is greater than or equal to 1.1)
' set this to true to use software skinning
Var forceSoftware = FALSE 

' then use them for hardware skinning, else use software skinning
If xGetMaxVertexShaderVersion() > -1 And forceSoftware = FALSE Then
  xSetSkinningMethod( SKIN_HARDWARE )
Else
  xSetSkinningMethod( SKIN_SOFTWARE )
EndIf

' if we use hardware skinning
Dim As Integer shader
If xGetMaxVertexShaderVersion() > -1 And forceSoftware = FALSE Then
  ' load shader
  shader = xLoadFXFile(".\media\army\skinning.fx")
EndIf
' --------------------------



' create units
Dim units(300) As Integer
Var unitCnt = 0
Var lastx = 0
Var lasty = 0
Dim As Integer animIndle
Dim As Integer animRun
Dim As Integer animAttack
Dim As Integer speed
Dim As Integer seq
dim As integer x,y
For y = 0 To 0
  For x = 0 To 9
    If y * 10 + x = 0 then
      ' loading skinned mesh
      units(0) = xLoadAnimMesh(".\media\army\hazar.b3d")
      ' extract animation sequences
      xExtractAnimSeq(units(0), 2, 4)
      animIndle = 1
      xExtractAnimSeq(units(0), 20, 59)
      animRun = 2
      xExtractAnimSeq(units(0), 99, 129)
      animAttack = 3
    ElseIf y * 10 + x = 1 Then
      ' loading skinned mesh
      units(1) = xLoadAnimMesh(".\media\army\kuznec.b3d")
      ' extract animation sequences
      xExtractAnimSeq(units(1), 2, 4)
      animIndle = 1
      xExtractAnimSeq(units(1), 20, 59)
      animRun = 2
      xExtractAnimSeq(units(1), 99, 129)
      animAttack = 3
    Else
      units(y * 10 + x) = xCopyEntity(units(Rnd(1)))
    EndIf
    
    xRotateEntity( units(y * 10 + x), 0, 180, 0 )
    xPositionEntity( units(y * 10 + x), x * 2 - 9, 0, y * 2 )
    Dim As Single speed = 1.0
    Dim As Single seq   = Rnd(1)+1
    If seq = 1 then speed = 0.1 
    xAnimate( units(y * 10 + x), 1, speed, seq )
    ' if we use hardware skinning
    If xGetMaxVertexShaderVersion() > -1 And forceSoftware = FALSE Then
      ' assign it to mesh
      xSetEntityEffect( units(y * 10 + x), shader )
      ' setup constant name for bones matrices
      xSetBonesArrayName( units(y * 10 + x), "bonesMatrixArray" )
      ' setup technique
      xSetEffectTechnique( units(y * 10 + x), "Skinned" )
    EndIf
    unitCnt += 1
    lastx = x
    lasty = y
  Next
Next

' for mouse look
xMoveMouse( xGraphicsWidth() / 2, xGraphicsHeight() / 2 )
Dim As Single mousespeed       = 0.5
Dim As Single camerasmoothness = 4.5

' main program loop
While xKeyDown(KEY_ESCAPE)=FALSE
  
  ' camera control
  If xKeyDown(KEY_W) then xMoveEntity( camera,  0,  0,  0.5 ) 
  If xKeyDown(KEY_S) Then xMoveEntity( camera,  0,  0, -0.5 ) 
  If xKeyDown(KEY_A) Then xMoveEntity( camera, -0.5,  0,  0 ) 
  If xKeyDown(KEY_D) Then xMoveEntity( camera,  0.5,  0,  0 )
   
  Dim As Single mxs = CurveValue(xMouseXSpeed() * mousespeed, mxs, camerasmoothness)
  Dim As Single mys = CurveValue(xMouseYSpeed() * mousespeed, mys, camerasmoothness)
  
  Dim As Single camxa = ( camxa - mxs ) mod 360 
  Dim As Single camya = camya + mys
  
  If camya < -89 Then camya = -89 
  If camya >  89 Then camya =  89 
  
  xMoveMouse( xGraphicsWidth() / 2, xGraphicsHeight() / 2 )
  xRotateEntity( camera, camya, camxa, 0.0 )
  
  ' add a new unit
  If xKeyHit(KEY_SPACE)=TRUE Then
    unitCnt += 1
    lastx += 1
    If lastx > 9 Then lastx = 0 : lasty += 1 
    units(lasty * 10 + lastx) = xCopyEntity(units(Rnd(1)))
    xRotateEntity( units(lasty * 10 + lastx), 0, 180, 0 )
    xPositionEntity( units(lasty * 10 + lastx), lastx * 2 - 9, 0, lasty * 2 )
    speed = 1.0
    seq   = Rnd(2)+1
    If seq = 1 then speed = 0.1 
    xAnimate( units(lasty * 10 + lastx), 1, speed, seq )
    ' if we use hardware skinning
    If xGetMaxVertexShaderVersion() > -1 And forceSoftware = FALSE Then
      ' assign it to mesh
      xSetEntityEffect( units(lasty * 10 + lastx), shader )
      ' setup constant name for bones matrices
      xSetBonesArrayName( units(lasty * 10 + lastx), "bonesMatrixArray" )
      ' setup technique
      xSetEffectTechnique( units(lasty * 10 + lastx), "Skinned" )
    EndIf
  EndIf
  
  ' update animations
  xUpdateWorld()
  
  ' render scene
  xRenderWorld()
  
  ' draw text
  Dim As String fps=Str(xGetFPS())
  Dim As String tri=Str(xTrisRendered())
  Dim As String unt=Str(unitCnt)

    'xPSystemSetBlend(,BLEND_ALPHA)
    xText(10,10,"fps: "+fps +" tris: "+tri +"  units: "+unt +"   SPACE - Add new unit")
    xDrawImage(demo,550,350)
  
  ' switch back buffer
  xFlip()
Wend

