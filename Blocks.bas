#Include ".\include\Xors3d.bi"
' *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*
' Xors3D extra sample: 'Blocks'
' Original source from Xors3D Team (C)
' Converted in 2012 by Guevara-chan.
' *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*

 #Define blocksVert  10
 #Define blocksHor   blocksVert * 2
 #Define blockScale  1.0

 Dim Shared As Single   blockZPos  =  blocksHor * 2.5
 Dim Shared As Integer  g_state    = 1
 Dim Shared As Integer  g_mode     = 0
 Dim Shared As Integer  g_dirMov   = 1
 Dim Shared As Integer  g_dirRot   = 1
 Dim Shared As Single   g_subScale = 0.0
 Dim Shared As Integer  g_texNum   = 0
 Dim Shared As Integer  g_uvShift0 = 0
 Dim Shared As Integer  g_uvShift1 = 0
 Dim Shared As Integer  g_activeSide   = 0
 Dim Shared As Integer  g_activeTex    = 0

Type  TBlock
	As Integer entity  
	As Integer state  
	As Single angle  
End Type

Type  TTexture
	As Integer tex  
End Type

 Dim Shared As TBlock   blocks( blocksHor,  blocksVert)
 Dim Shared As TTexture Textures(5) ' 5 JPG demo
 Dim Shared As TBlock   Blockz(1024 )

 xCreateLog( LOG_HTML,  LOG_INFO, "Blocks.html")

 xAppTitle("Blocks")
 xGraphics3d(1280, 720, 32, 0, 1)

 xSetFont(xLoadFont("Tahoma", 8))

 Dim Shared As Integer  camera 
 camera = xCreateCamera()
 xCameraClsColor(camera, 32, 64, 128)

 Dim Shared As Integer  light 
 light = xCreateLight()
 xTurnEntity(light, 60, 0, 0)

 Dim Shared As Integer  initBlock, blockPiv ' Dissected.

Function  CreateInitialBlock() As Integer
	Dim As TTexture t0, t1
	Dim As Single   shader = xLoadFXFile(".\Media\Shaders\blocks_hw_instancing.fx")
	Dim As Integer  block  = xCreateCube()

	'FirstElement(Textures())
	t0.tex = Textures(0).tex
	
	'NextElement(Textures())
	t1.tex = Textures(1).tex
	
	xScaleMesh(block, 1.0, 1.0, 0.1)
	xEntityTexture(block, t0.tex, 0, 0)
	xEntityTexture(block, t1.tex, 0, 1)
	xSetEntityEffect(block, shader)
	xSetEffectTechnique(block, "Instancing")
	xHideEntity(block)
	
	Return block
End Function

Function  LoadOneTexture(path As String) As Integer
	Dim As Integer tex = xLoadTexture(path)
	If (tex <> 0) Then 
		Textures(g_texNum).tex=tex
		g_texNum = g_texNum + 1
	EndIf
	If tex Then Print path
	Return tex
End Function

Function  LoadTextures(path As String,ext As String = "jpg") As Integer
	Dim As Integer result  = 1
	Dim As String  formedPath   = ""
	Dim As Integer index   = 0
	xSetLogLevel(LOG_NO)
	While result<>0
		formedPath = path
		If (index < 10) Then
			formedPath = formedPath + "0"
		EndIf
		formedPath = formedPath + Str(index) + "." + ext
		result = LoadOneTexture(formedPath)
  		index = index + 1
   Wend
	xSetLogLevel( LOG_INFO)
End Function


Function  CreateBlocks() As Integer
	Dim As Integer  i  , j  

	For i = 0 To  blocksHor - 1
		For j = 0 To  blocksVert - 1
      	'blocks(i, j) = Blockz(0)
			blocks(i, j).state = 0
			blocks(i, j).angle = 0.0
			blocks(i, j).entity = xCreateInstance(initBlock, blockPiv)
			xScaleEntity(blocks(i, j).entity,  blockScale,  blockScale,  blockScale)
			xPositionEntity(blocks(i, j).entity, i * 2.0 -  blocksHor + 1.0, j * 2.0 -  blocksVert + 1.0, 0.0)
			' packing the block id and the number of blocks in the column to the diffuse color of the entity
			xEntityColor(blocks(i, j).entity, i, j,  blocksVert)
		Next
	Next
End Function

Const PI As Double = 3.1415926535897932
Function Radian(a As Single) As Single
	Return a * PI / 180 
End Function

Function  UpdateBlocksByRow(firstIteration   As Integer = 0,triggerYaw   As Single = 90.0,speed   As Single = 1.0,subScale   As Single = 0.5,dirMov   As Integer = 1,dirRot   As Integer = 1) As Integer
	Dim As Integer  i  , j  , jj  
	Dim As Integer  minJ  , maxJ  , deltaJ  
	Dim As Integer  isFinished   = 1
	If (dirMov = 1) Then
		minJ = 0
		maxJ =  blocksVert - 1
		deltaJ = 1
	Else
		dirMov = -1
		minJ =  blocksVert - 1
		maxJ = 0
		deltaJ = -1
	EndIf
	If (dirRot <> 1) Then
		dirRot = 0
	EndIf
	For jj = 0 To  blocksVert - 1
		If (dirMov = 1) Then
			j = jj
		Else
			j =  blocksVert - 1 - jj
		EndIf
		If (j = minJ) Then
			If (firstIteration = 1) Then
				isFinished = 0
				For i = 0 To  blocksHor - 1
					blocks(i, j).state = 1
				Next
			EndIf
		EndIf
		For i = 0 To  blocksHor - 1
			If (blocks(i, j).state = 1) Then
				isFinished = 0
				If (blocks(i, j).angle >= 180.0) Then
					blocks(i, j).angle = 0.0
					blocks(i, j).state = 0
				Else
					xTurnEntity(blocks(i, j).entity, speed * dirRot, speed * (1 - dirRot), 0.0)
					Dim As Single  shift   = Sin(Radian(xEntityYaw(blocks(i, j).entity))) * (1 - dirRot)
					shift = shift + Sin(Radian(xEntityPitch(blocks(i, j).entity))) * dirRot
					shift = shift * 2.5
					xPositionEntity(blocks(i, j).entity, xEntityX(blocks(i, j).entity), xEntityY(blocks(i, j).entity), shift)
					Dim As Single  scale   =  blockScale / (Abs(shift) * subScale + 1.0)
					xScaleEntity(blocks(i, j).entity, scale, scale, scale)
					blocks(i, j).angle = blocks(i, j).angle + Abs(speed)
				EndIf
				If (blocks(i, j).angle >= triggerYaw) Then
					If (j * dirMov < maxJ * dirMov) Then
						blocks(i, j + deltaJ).state = 1
					EndIf
				EndIf
			EndIf
		Next
	Next
	Return isFinished
End Function

Function  UpdateBlocksByColumn(firstIteration   As Integer = 0,triggerYaw   As Single = 90.0,speed   As Single = 1.0,subScale   As Single = 0.5,dirMov   As Integer = 1,dirRot   As Integer = 1) As Integer
	Dim As Integer  i  , j  , jj  
	Dim As Integer  minJ  , maxJ  , deltaJ  
	Dim As Integer  isFinished   = 1
	If (dirMov = 1) Then
		minJ = 0
		maxJ =  blocksHor - 1
		deltaJ = 1
	Else
		dirMov = -1
		minJ =  blocksHor - 1
		maxJ = 0
		deltaJ = -1
	EndIf
	If (dirRot <> 1) Then
		dirRot = 0
	EndIf
	For jj = 0 To  blocksHor - 1
		If (dirMov = 1) Then
			j = jj
		Else
			j =  blocksHor - 1 - jj
		EndIf
		If (j = minJ) Then
			If (firstIteration = 1) Then
				isFinished = 0
				For i = 0 To  blocksVert - 1
					blocks(j, i).state = 1
				Next
			EndIf
		EndIf
		For i = 0 To  blocksVert - 1
		If (blocks(j, i).state = 1) Then
				isFinished = 0
				If (blocks(j, i).angle >= 180.0) Then
					blocks(j, i).angle = 0.0
					blocks(j, i).state = 0
				Else
					xTurnEntity(blocks(j, i).entity, speed * dirRot, speed * (1 - dirRot), 0.0)
					Dim As Single  shift   = Sin(Radian(xEntityYaw(blocks(j, i).entity))) * (1 - dirRot)
					Dim As Single  Aux   = Sin(Radian(xEntityPitch(blocks(j, i).entity))) * DirRot
					shift = (Aux + shift) * 2.5
					xPositionEntity(blocks(j, i).entity, xEntityX(blocks(j, i).entity), xEntityY(blocks(j, i).entity), shift)
          Dim As Single  scale   =  blockScale / (Abs(shift) * subScale + 1.0)
         	xScaleEntity(blocks(j, i).entity, scale, scale, scale)
					blocks(j, i).angle = blocks(j, i).angle + Abs(speed)
				EndIf
				If (blocks(j, i).angle >= triggerYaw) Then
					If (j * dirMov < maxJ * dirMov) Then
						blocks(j + deltaJ, i).state = 1
					EndIf
				EndIf
			EndIf
		Next
	Next
	Return isFinished
End Function

Function  UpdateBlocks() As Integer
	If (g_state = 1) Then
		Dim As Integer  i  
		Dim As Integer  rndTex  

		Dim As TTexture t = Textures(0)
		g_mode    = Rnd(1)*3
		If (g_mode > 1) Then
			g_mode = g_mode mod 2
			g_subScale = 0.5
		Else
			g_subScale = 0.0
		EndIf
		g_dirMov  = Rnd(1)
		g_dirRot  = Rnd(1)
		g_activeSide = 1 - g_activeSide
		
    	Do Until rndTex <> g_activeTex
			rndTex = Rnd(1)*(g_texNum - 1)
    	Loop
		
		g_activeTex = rndTex
		For i = 0 To g_activeTex - 1
		   t = Textures(i)
		Next
		
    	xEntityTexture(initBlock, t.tex, 0, g_activeSide)
    	
		If (g_activeSide = 0) Then
			g_uvShift0 = g_uvShift1
			If (g_dirRot = 0) Then
			Else
				g_uvShift0 = 1 - g_uvShift0
			EndIf
		Else
			g_uvShift1 = g_uvShift0
			If (g_dirRot = 0) Then
			Else
				g_uvShift1 = 1 - g_uvShift1
			EndIf
		EndIf
		xSetEffectVector(initBlock, "uvShift", g_uvShift0, g_uvShift1, 0.0, 0.0)
	EndIf
	Select Case g_mode
		Case 0
			g_state = UpdateBlocksByColumn(g_state, 25.0, 2.0, g_subScale, g_dirMov, g_dirRot)
		Case 1
			g_state = UpdateBlocksByRow(g_state, 25.0, 2.0, g_subScale, g_dirMov, g_dirRot)
	End Select
End Function


Function  UpdateBlockBoard() As Integer
	Dim As Single  mX   = (xMouseX() - xGraphicsWidth() * 0.5) * 0.02
	Dim As Single  mY   = -(xMouseY() - xGraphicsHeight() * 0.5) * 0.02
   xRotateEntity(blockPiv, mY, mX, 0)
End Function

Function    FixPitch(pitch   As Single,roll   As Single) As Single
	If (roll >= 180) Then
		pitch = 180 - pitch
	EndIf
	If (pitch < 0) Then
		pitch = pitch + 360
	EndIf
	Return pitch
End Function

Function    FixYaw(yaw   As Single) As Single
	If (yaw < 0) Then
		yaw = 360 + yaw
	EndIf
	Return yaw
End Function

Function  Clamp(value   As Single) As Integer
	If value > 1.0  Then  value = 1.0   ' EndIf
	If value < -1.0  Then  value = -1.0 ' EndIf
	Return value
End Function

Function  Saturate(value   As Single) As Integer
	If value > 1.0  Then  value = 1.0 ' EndIf
	If value < 0.0  Then  value = 0.0 ' EndIf
	Return value
End Function

Function  UpdateCamera(cam   As Integer) As Integer
End Function

Function  UpdateControl() As Integer
	UpdateCamera(camera)
End Function

Function  UpdateFrame() As Integer
	UpdateBlocks()
	UpdateBlockBoard()
End Function

Function  DrawTexButtons() As Integer
	Dim As Single  xOffset   = xGraphicsWidth() * 0.5
	Dim As Single  yOffset   = xGraphicsHeight() * 0.95
	Dim As Single  rad   = 20.0
	Dim As Integer  i  
	
	For i = 0 To g_texNum - 1
		Dim As Single  x   = (i * 2.0 - g_texNum + 1.5) * rad + xOffset
		If (i = g_activeTex) Then
			xColor(200, 50, 25, 200)
			xRect(x - rad - 2, yOffset - rad - 2, rad + 4, rad + 4, 1)
		EndIf
		xColor(50, 100, 200, 200)
		xRect(x - rad, yOffset - rad, rad, rad, 1)
	Next
End Function

Function  PrintInfo(x   As Integer = 10,y   As Integer = 10) As Integer
	xColor(0, 0, 0, 128)
	xRect(x, y, 245 + x, 95 + y, True)
	xColor(255, 255, 255, 64)
	xRect(x, y, 245 + x, 95 + y, False)
	xColor(96, 152, 255, 255)
	xText(10 + x + 120, 10 + y, "Blocks", 1)
	xText(10 + x, 25 + y, "Triangles: " + Str(xTrisRendered()))
	xText(10 + x, 40 + y, "DIP calls: " + Str(xDIPCounter()))
	xText(10 + x, 55 + y, "FPS: " + Str(xGetFPS()))
	xText(10 + x, 70 + y, "Blocks: " + Str( blocksHor *  blocksVert))
	xText(10 + x, 85 + y, "Use <MOUSE> to rotate the board")
End Function

Function    CurveValue(newvalue   As Single,oldvalue   As Single,increments As single) As Single
	If increments >  1  Then  oldvalue   = oldvalue   - (oldvalue   - newvalue  ) / increments ' EndIf
	If increments <= 1  Then  oldvalue   = newvalue   ' EndIf
	Return oldvalue   
End Function

LoadTextures(".\Media\Textures\abstract\a")
blockPiv = xCreatePivot()
initBlock = CreateInitialBlock()
CreateBlocks()
xPositionEntity(blockPiv, 0.0, 0.0, blockZPos)

While (xKeyHit(KEY_ESCAPE) Or xWinMessage("WM_CLOSE"))=FALSE
	
	UpdateControl()
	UpdateFrame()
	
	xRenderWorld()
	PrintInfo()
	DrawTexButtons()
	xFlip()
Wend

