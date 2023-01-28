#Include ".\include\Xors3d.bi"


' *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*
' Xors3D basic sample: 'Graphic Modes'
' Original source from Xors3D Team (C)
' Converted in 2012 by Guevara-chan.
' *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*


Declare Function AppRunning() As Integer
Declare Function UpdateApp() As Integer
Declare Function GetAllModes() As Integer
Declare Function ListAllModes() As Integer

xCreateLog()

 Dim Shared As Integer  g_appRuns =  TRUE 

Type  tGfxMode
	As Integer item  
	As Integer width_  
	As Integer height  
	As Integer depth  
	As String gfxMode  
	As Integer desktop  
End Type

 Dim Shared As tGfxMode gfxList(xCountGfxModes())

xGraphics3d(800, 600, 0,  False,  True)
xSetFont(xLoadFont("Tahoma", 10))
GetAllModes()

Var time_ = timer
Var yy = 1
While AppRunning()
	If (Timer - time_) > 500 Then
		yy = yy + 1
		If yy > 50 Then
			yy = 1
		EndIf
		time_ = Timer
	EndIf
	xCls()
	UpdateApp()
	ListAllModes()
	xFlip()
Wend
End

Function  AppRunning() As Integer
	Return g_appRuns
End Function

Function  UpdateApp() As Integer
	If (xKeyHit(KEY_ESCAPE) Or xWinMessage("WM_CLOSE"))=TRUE Then
		g_appRuns =  FALSE 
	EndIf
End Function

Function  GetAllModes() As Integer
	For i As Integer= 0 To xCountGfxModes()-1
		gfxList(i).width_= xGfxModeWidth(i)
		gfxList(i).height= xGfxModeHeight(i)
		GfxList(i).depth = xGfxModeDepth(i)
		If (GfxList(i).width_ = xGfxModeWidth(-1)) And (GfxList(i).height = xGfxModeHeight(-1)) And (GfxList(i).depth = xGfxModeDepth(-1)) Then
			GfxList(i).desktop = 1
		Else
			GfxList(i).desktop = 0
		EndIf
		GfxList(i).gfxMode = Str(GfxList(i).width_) + " x " + Str(GfxList(i).height) + " x " + Str(GfxList(i).depth) + "bpp"
	Next
End Function

Function  ListAllModes() As Integer
	Dim As Integer  i = 0	
	Dim As Integer  x = 10
	Dim As Integer  xS = 10
	Dim As Integer  y = 50
	Dim As Integer  yS = 50
	Dim As Integer  xStep = 200
	Dim As Integer  yStep = 20
	Dim As Integer  heightCap = fix((xGraphicsHeight() - yS) / yStep)
	
	For i As Integer=0 To xCountGfxModes()-1
		x = xS + Fix(i / heightCap) * xStep
		y = yS + (i mod heightCap) * yStep
		xColor(24, 26, 28)
		xRect(x, y + 1, xStep * 0.9, yStep - 1,  True)
		If (GfxList(i).desktop = 1) Then
			xColor(255, 128, 32)
			xText(x + 2, y + 2, ">")
		EndIf
		xColor(196, 196, 196)
		xText(x + 15, y + 2, Str(i+1) + ". ")
		xText(x + 45, y + 2, GfxList(i).gfxMode)
		'i = i + 1
	Next 
End Function

