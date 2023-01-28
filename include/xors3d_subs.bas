	
	 ' all function are "StdCall"																	  
																		 
  Declare Function xCreateLine3D									Alias "_xCreateLine3D"														(ByVal fromX As Single, ByVal fromY As Single, ByVal fromZ As Single, ByVal toX As Single, ByVal toY As Single, ByVal toZ As Single, ByVal red As Integer = 255, ByVal green As Integer = 255, ByVal blue As Integer = 255, ByVal alpha2 As Integer = 255, ByVal useZBuffer As Integer = 1) As Integer
  Declare Sub		 xLine3DOrigin									Alias "_xLine3DOrigin"														(ByVal line3d As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal isGlobal As Integer = 0)
  Declare Sub		 xLine3DAddNode								Alias "_xLine3DAddNode"														(ByVal line3d As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal isGlobal As Integer = 0)
  Declare Sub		 xLine3DColor									Alias "_xLine3DColor"														(ByVal line3d As Integer, ByVal red As Integer, ByVal green As Integer, ByVal blue As Integer, ByVal alpha2 As Integer)
  Declare Sub		 xLine3DUseZBuffer							Alias "_xLine3DUseZBuffer"													(ByVal line3d As Integer, ByVal state As Integer)
  Declare Function xLine3DOriginX								Alias "_xLine3DOriginX"														(ByVal line3d As Integer, ByVal isGlobal As Integer = 0) As Single
  Declare Function xLine3DOriginY								Alias "_xLine3DOriginY"														(ByVal line3d As Integer, ByVal isGlobal As Integer = 0) As Single
  Declare Function xLine3DOriginZ								Alias "_xLine3DOriginZ"														(ByVal line3d As Integer, ByVal isGlobal As Integer = 0) As Single
  Declare Function xLine3DNodesCount							Alias "_xLine3DNodesCount"													(ByVal line3d As Integer) As Integer
  Declare Sub		 xLine3DNodePosition							Alias "_xLine3DNodePosition"												(ByVal line3d As Integer, ByVal index As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal isGlobal As Integer = 0)
  Declare Function xLine3DNodeX									Alias "_xLine3DNodeX"														(ByVal line3d As Integer, ByVal index As Integer, ByVal isGlobal As Integer = 0) As Single
  Declare Function xLine3DNodeY									Alias "_xLine3DNodeY"														(ByVal line3d As Integer, ByVal index As Integer, ByVal isGlobal As Integer = 0) As Single
  Declare Function xLine3DNodeZ									Alias "_xLine3DNodeZ"														(ByVal line3d As Integer, ByVal index As Integer, ByVal isGlobal As Integer = 0) As Single
  Declare Function xLine3DRed										Alias "_xLine3DRed"															(ByVal line3d As Integer) As Integer
  Declare Function xLine3DGreen									Alias "_xLine3DGreen"														(ByVal line3d As Integer) As Integer
  Declare Function xLine3DBlue									Alias "_xLine3DBlue"															(ByVal line3d As Integer) As Integer
  Declare Function xLine3DAlpha									Alias "_xLine3DAlpha"														(ByVal line3d As Integer) As Integer
  Declare Function xGetLine3DUseZBuffer						Alias "_xGetLine3DUseZBuffer"												(ByVal line3d As Integer) As Integer
  Declare Sub		 xDeleteLine3DNode							Alias "_xDeleteLine3DNode"													(ByVal line3d As Integer, ByVal index As Integer)
  Declare Sub		 xClearLine3D									Alias "_xClearLine3D"														(ByVal line3d As Integer)
  Declare Function xLoadBrush										Alias "_xLoadBrush"															(ByVal path As Zstring ptr, ByVal flags As Integer = 9, ByVal xScale As Single = 1.0, ByVal yScale As Single = 1.0) As Integer
  Declare Function xCreateBrush									Alias "_xCreateBrush"														(ByVal red As Single = 255.0, ByVal green As Single = 255.0, ByVal blue As Single = 255.0) As Integer
  Declare Sub		 xFreeBrush										Alias "_xFreeBrush"															(ByVal brush As Integer)
  Declare Function xGetBrushTexture								Alias "_xGetBrushTexture"													(ByVal brush As Integer, ByVal index As Integer = 0) As Integer
  Declare Sub		 xBrushColor									Alias "_xBrushColor"															(ByVal brush As Integer, ByVal red As Integer, ByVal green As Integer, ByVal blue As Integer)
  Declare Sub		 xBrushAlpha									Alias "_xBrushAlpha"															(ByVal brush As Integer, ByVal alpha2 As Single)
  Declare Sub		 xBrushShininess								Alias "_xBrushShininess"													(ByVal brush As Integer, ByVal shininess As Single)
  Declare Sub		 xBrushBlend									Alias "_xBrushBlend"															(ByVal brush As Integer, ByVal blend As Integer)
  Declare Sub		 xBrushFX										Alias "_xBrushFX"																(ByVal brush As Integer, ByVal FX As Integer)
  Declare Sub		 xBrushTexture									Alias "_xBrushTexture"														(ByVal brush As Integer, ByVal texture As Integer, ByVal frame As Integer = 0, ByVal index As Integer = 0)
  Declare Function xGetBrushName									Alias "_xGetBrushName"														(ByVal brush As Integer) As Zstring ptr
  Declare Sub		 xBrushName										Alias "_xBrushName"															(ByVal brush As Integer, ByVal nombre As Zstring ptr)
  Declare Function xGetBrushAlpha								Alias "_xGetBrushAlpha"														(ByVal brush As Integer) As Single
  Declare Function xGetBrushBlend								Alias "_xGetBrushBlend"														(ByVal brush As Integer) As Integer
  Declare Function xGetBrushRed									Alias "_xGetBrushRed"														(ByVal brush As Integer) As Integer
  Declare Function xGetBrushGreen								Alias "_xGetBrushGreen"														(ByVal brush As Integer) As Integer
  Declare Function xGetBrushBlue									Alias "_xGetBrushBlue"														(ByVal brush As Integer) As Integer
  Declare Function xGetBrushFX									Alias "_xGetBrushFX"															(ByVal brush As Integer) As Integer
  Declare Function xGetBrushShininess							Alias "_xGetBrushShininess"												(ByVal brush As Integer) As Single
  Declare Sub		 xCameraFogMode								Alias "_xCameraFogMode"														(ByVal camera As Integer, ByVal mode As Integer)
  Declare Sub		 xCameraFogColor								Alias "_xCameraFogColor"													(ByVal camera As Integer, ByVal red As Integer, ByVal green As Integer, ByVal blue As Integer)
  Declare Sub		 xCameraFogRange								Alias "_xCameraFogRange"													(ByVal camera As Integer, ByVal nearRange As Single, ByVal farRange As Single)
  Declare Sub		 xCameraClsColor								Alias "_xCameraClsColor"													(ByVal camera As Integer, ByVal red As Integer, ByVal green As Integer, ByVal blue As Integer, ByVal alpha2 As Integer = 255)
  Declare Sub		 xCameraProjMode								Alias "_xCameraProjMode"													(ByVal camera As Integer, ByVal mode As Integer)
  Declare Sub		 xCameraClsMode								Alias "_xCameraClsMode"														(ByVal camera As Integer, ByVal clearColor As Integer, ByVal clearZBuffer As Integer)
  Declare Function xSphereInFrustum								Alias "_xSphereInFrustum"													(ByVal camera As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal radii As Single) As Integer
  Declare Sub		 xCameraClipPlane								Alias "_xCameraClipPlane"													(ByVal camera As Integer, ByVal index As Integer, ByVal enabled As Integer, ByVal a As Single, ByVal b As Single, ByVal c As Single, ByVal d As Single)
  Declare Sub		 xCameraRange									Alias "_xCameraRange"														(ByVal camera As Integer, ByVal nearRange As Single, ByVal farRange As Single)
  Declare Sub		 xCameraViewport								Alias "_xCameraViewport"													(ByVal camera As Integer, ByVal x As Integer, ByVal y As Integer, ByVal width_ As Integer, ByVal height As Integer)
  Declare Sub		 xCameraCropViewport							Alias "_xCameraCropViewport"												(ByVal camera As Integer, ByVal x As Integer, ByVal y As Integer, ByVal width_ As Integer, ByVal height As Integer)
  Declare Function xCreateCamera									Alias "_xCreateCamera"														(ByVal parent As Integer = 0) As Integer
  Declare Sub		 xCameraProject								Alias "_xCameraProject"														(ByVal camera As Integer, ByVal x As Single , ByVal y As Single , ByVal z As Single)
  Declare Sub		 xCameraProject2D								Alias "_xCameraProject2D"													(ByVal camera As Integer, ByVal x As Integer, ByVal y As Integer, ByVal zDistance As Single)
  Declare Function xProjectedX									Alias "_xProjectedX"															() As Single
  Declare Function xProjectedY									Alias "_xProjectedY"															() As Single
  Declare Function xProjectedZ									Alias "_xProjectedZ"															() As Single
  Declare Function xGetViewMatrix								Alias "_xGetViewMatrix"														(ByVal camera As Integer) As Integer
  Declare Function xGetProjectionMatrix						Alias "_xGetProjectionMatrix"												(ByVal camera As Integer) As Integer
  Declare Sub		 xCameraZoom									Alias "_xCameraZoom"															(ByVal camera As Integer, ByVal zoom As Single)
  Declare Function xGetViewProjMatrix							Alias "_xGetViewProjMatrix"												(ByVal camera As Integer) As Integer
  Declare Sub		 xCollisions									Alias "_xCollisions"															(ByVal srcType As Integer, ByVal destType As Integer, ByVal collideMethod As Integer, ByVal response As Integer)
  Declare Sub		 xClearCollisions								Alias "_xClearCollisions"													()
  Declare Sub		 xResetEntity									Alias "_xResetEntity"														(ByVal entity As Integer)
  Declare Sub		 xEntityRadius									Alias "_xEntityRadius"														(ByVal entity As Integer, ByVal xRadius As Single, ByVal yRadius As Single = 0.0)
  Declare Sub		 xEntityBox										Alias "_xEntityBox"															(ByVal entity As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal width_ As Single, ByVal height As Single, ByVal depth As Single)
  Declare Sub		 xEntityType									Alias "_xEntityType"															(ByVal entity As Integer, ByVal typeID As Integer, ByVal recurse As Integer = 0)
  Declare Function xEntityCollided								Alias "_xEntityCollided"													(ByVal entity As Integer, ByVal typeID As Integer) As Integer
  Declare Function xCountCollisions								Alias "_xCountCollisions"													(ByVal entity As Integer) As Integer
  Declare Function xCollisionX									Alias "_xCollisionX"															(ByVal entity As Integer, ByVal index As Integer) As Single
  Declare Function xCollisionY									Alias "_xCollisionY"															(ByVal entity As Integer, ByVal index As Integer) As Single
  Declare Function xCollisionZ									Alias "_xCollisionZ"															(ByVal entity As Integer, ByVal index As Integer) As Single
  Declare Function xCollisionNX									Alias "_xCollisionNX"														(ByVal entity As Integer, ByVal index As Integer) As Single
  Declare Function xCollisionNY									Alias "_xCollisionNY"														(ByVal entity As Integer, ByVal index As Integer) As Single
  Declare Function xCollisionNZ									Alias "_xCollisionNZ"														(ByVal entity As Integer, ByVal index As Integer) As Single
  Declare Function xCollisionTime								Alias "_xCollisionTime"														(ByVal entity As Integer, ByVal index As Integer) As Single
  Declare Function xCollisionEntity								Alias "_xCollisionEntity"													(ByVal entity As Integer, ByVal index As Integer) As Integer
  Declare Function xCollisionSurface							Alias "_xCollisionSurface"													(ByVal entity As Integer, ByVal index As Integer) As Integer
  Declare Function xCollisionTriangle							Alias "_xCollisionTriangle"												(ByVal entity As Integer, ByVal index As Integer) As Integer
  Declare Function xGetEntityType								Alias "_xGetEntityType"														(ByVal entity As Integer) As Integer
  Declare Sub		 xRenderPostEffect							Alias "_xRenderPostEffect"													(ByVal poly As Integer)
  Declare Function xCreatePostEffectPoly						Alias "_xCreatePostEffectPoly"											(ByVal camera As Integer, ByVal mode As Integer) As Integer
  Declare Function xGetFunctionAddress							Alias "_xGetFunctionAddress"												(ByVal nombre As Zstring ptr) As Integer
  Declare Function xLoadFXFile									Alias "_xLoadFXFile"															(ByVal path As Zstring ptr) As Integer
  Declare Sub		 xFreeEffect									Alias "_xFreeEffect"															(ByVal effect As Integer)
  Declare Sub		 xSetEntityEffect								Alias "_xSetEntityEffect"													(ByVal entity As Integer , ByVal effect As Integer, ByVal index As Integer = -1)
  Declare Sub		 xSetSurfaceEffect							Alias "_xSetSurfaceEffect"													(ByVal surface As Integer, ByVal effect As Integer, ByVal index As Integer = -1)
  Declare Sub		 xSetBonesArrayName							Alias "_xSetBonesArrayName"												(ByVal entity As Integer , ByVal arrayName As Zstring ptr, ByVal layer As Integer = -1)
  Declare Sub		 xSurfaceBonesArrayName						Alias "_xSurfaceBonesArrayName"											(ByVal surface As Integer, ByVal arrayName As Zstring ptr, ByVal layer As Integer = -1)
  Declare Sub		 xSetEffectInt									Alias "_xSetEffectInt"														(ByVal entity As Integer , ByVal nombre As Zstring Ptr, ByVal value As Integer, ByVal layer As Integer = -1)
  Declare Sub		 xSurfaceEffectInt							Alias "_xSurfaceEffectInt"													(ByVal surface As Integer, ByVal nombre As Zstring ptr, ByVal value As Integer, ByVal layer As Integer = -1)
  Declare Sub		 xSetEffectFloat								Alias "_xSetEffectFloat"													(ByVal entity As Integer , ByVal nombre As Zstring Ptr, ByVal value As Single , ByVal layer As Integer = -1)
  Declare Sub		 xSurfaceEffectFloat							Alias "_xSurfaceEffectFloat"												(ByVal surface As Integer, ByVal nombre As Zstring ptr, ByVal value As Single , ByVal layer As Integer = -1)
  Declare Sub		 xSetEffectBool								Alias "_xSetEffectBool"														(ByVal entity As Integer , ByVal nombre As Zstring Ptr, ByVal value As Integer, ByVal layer As Integer = -1)
  Declare Sub		 xSurfaceEffectBool							Alias "_xSurfaceEffectBool"												(ByVal surface As Integer, ByVal nombre As Zstring ptr, ByVal value As Integer, ByVal layer As Integer = -1)
  Declare Sub		 xSetEffectVector								Alias "_xSetEffectVector"													(ByVal entity As Integer , ByVal nombre As Zstring Ptr, ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal w As Single = 0.0, ByVal layer As Integer = -1)
  Declare Sub		 xSurfaceEffectVector						Alias "_xSurfaceEffectVector"												(ByVal surface As Integer, ByVal nombre As Zstring ptr, ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal w As Single = 0.0, ByVal layer As Integer = -1)
  Declare Sub		 xSetEffectVectorArray						Alias "_xSetEffectVectorArray"											(ByVal entity As Integer , ByVal nombre As Zstring Ptr, ByVal value As Integer, ByVal count As Integer, ByVal layer As Integer = -1)
  Declare Sub		 xSurfaceEffectVectorArray					Alias "_xSurfaceEffectVectorArray"										(ByVal surface As Integer, ByVal nombre As Zstring ptr, ByVal value As Integer, ByVal count As Integer, ByVal layer As Integer = -1)
  Declare Sub		 xSurfaceEffectMatrixArray					Alias "_xSurfaceEffectMatrixArray"										(ByVal surface As Integer, ByVal nombre As Zstring ptr, ByVal value As Integer, ByVal count As Integer, ByVal layer As Integer = -1)
  Declare Sub		 xSurfaceEffectFloatArray					Alias "_xSurfaceEffectFloatArray"										(ByVal surface As Integer, ByVal nombre As Zstring ptr, ByVal value As Integer, ByVal count As Integer, ByVal layer As Integer = -1)
  Declare Sub		 xSurfaceEffectIntArray						Alias "_xSurfaceEffectIntArray"											(ByVal surface As Integer, ByVal nombre As Zstring ptr, ByVal value As Integer, ByVal count As Integer, ByVal layer As Integer = -1)
  Declare Sub		 xSetEffectMatrixArray						Alias "_xSetEffectMatrixArray"											(ByVal entity As Integer , ByVal nombre As Zstring ptr, ByVal value As Integer, ByVal count As Integer, ByVal layer As Integer = -1)
  Declare Sub		 xSetEffectFloatArray						Alias "_xSetEffectFloatArray"												(ByVal entity As Integer , ByVal nombre As Zstring ptr, ByVal value As Integer, ByVal count As Integer, ByVal layer As Integer = -1)
  Declare Sub		 xSetEffectIntArray							Alias "_xSetEffectIntArray"												(ByVal entity As Integer , ByVal nombre As Zstring ptr, ByVal value As Integer, ByVal count As Integer, ByVal layer As Integer = -1)
  Declare Function xCreateBufferVectors						Alias "_xCreateBufferVectors"												(ByVal count As Integer) As Integer
  Declare Sub		 xBufferVectorsSetElement					Alias "_xBufferVectorsSetElement"										(ByVal buffer As Integer, ByVal number As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal w As Single)
  Declare Function xCreateBufferMatrix							Alias "_xCreateBufferMatrix"												(ByVal count As Integer) As Integer
  Declare Sub		 xBufferMatrixSetElement					Alias "_xBufferMatrixSetElement"											(ByVal buffer As Integer, ByVal number As Integer, ByVal matrix As Integer)
  Declare Function xBufferMatrixGetElement					Alias "_xBufferMatrixGetElement"											(ByVal buffer As Integer, ByVal number As Integer) As Integer
  Declare Function xCreateBufferFloats							Alias "_xCreateBufferFloats"												(ByVal count As Integer) As Integer
  Declare Sub		 xBufferFloatsSetElement					Alias "_xBufferFloatsSetElement"											(ByVal buffer As Integer, ByVal number As Integer, ByVal value As Single)
  Declare Function xBufferFloatsGetElement					Alias "_xBufferFloatsGetElement"											(ByVal buffer As Integer, ByVal number As Integer) As Single
  Declare Sub		 xBufferDelete									Alias "_xBufferDelete"														(ByVal buffer As Integer)
  Declare Sub		 xSetEffectMatrixWithElements				Alias "_xSetEffectMatrixWithElements"									(ByVal entity As Integer , ByVal nombre As Zstring ptr, ByVal m11 As Single, ByVal m12 As Single, ByVal m13 As Single, ByVal m14 As Single, ByVal m21 As Single, ByVal m22 As Single, ByVal m23 As Single, ByVal m24 As Single, ByVal m31 As Single, ByVal m32 As Single, ByVal m33 As Single, ByVal m34 As Single, ByVal m41 As Single, ByVal m42 As Single, ByVal m43 As Single, ByVal m44 As Single, ByVal layer As Integer = -1)
  Declare Sub		 xSetEffectMatrix								Alias "_xSetEffectMatrix"													(ByVal entity As Integer , ByVal nombre As Zstring ptr, ByVal matrix As Integer, ByVal layer As Integer = -1)
  Declare Sub		 xSurfaceEffectMatrix						Alias "_xSurfaceEffectMatrix"												(ByVal surface As Integer, ByVal nombre As Zstring ptr, ByVal matrix As Integer, ByVal layer As Integer = -1)
  Declare Sub		 xSurfaceEffectMatrixWithElements		Alias "_xSurfaceEffectMatrixWithElements"								(ByVal surface As Integer, ByVal nombre As Zstring ptr, ByVal m11 As Single, ByVal m12 As Single, ByVal m13 As Single, ByVal m14 As Single, ByVal m21 As Single, ByVal m22 As Single, ByVal m23 As Single, ByVal m24 As Single, ByVal m31 As Single, ByVal m32 As Single, ByVal m33 As Single, ByVal m34 As Single, ByVal m41 As Single, ByVal m42 As Single, ByVal m43 As Single, ByVal m44 As Single, ByVal layer As Integer = -1)
  Declare Sub		 xSetEffectEntityTexture					Alias "_xSetEffectEntityTexture"											(ByVal entity As Integer , ByVal nombre As Zstring ptr, ByVal index As Integer = 0, ByVal layer As Integer = -1)
  Declare Sub		 xSetEffectTexture							Alias "_xSetEffectTexture"													(ByVal entity As Integer , ByVal nombre As Zstring ptr, ByVal texture As Integer, ByVal frame As Integer = 0, ByVal layer As Integer = -1, ByVal isRecursive As Integer = 1)
  Declare Sub		 xSurfaceEffectTexture						Alias "_xSurfaceEffectTexture"											(ByVal surface As Integer, ByVal nombre As Zstring ptr, ByVal texture As Integer, ByVal frame As Integer = 0, ByVal layer As Integer = -1)
  Declare Sub		 xSurfaceEffectMatrixSemantic				Alias "_xSurfaceEffectMatrixSemantic"									(ByVal surface As Integer, ByVal nombre As Zstring ptr, ByVal value As Integer, ByVal layer As Integer = -1)
  Declare Sub		 xSetEffectMatrixSemantic					Alias "_xSetEffectMatrixSemantic"										(ByVal entity As Integer , ByVal nombre As Zstring ptr, ByVal value As Integer, ByVal layer As Integer = -1)
  Declare Sub		 xDeleteSurfaceConstant						Alias "_xDeleteSurfaceConstant"											(ByVal surface As Integer, ByVal nombre As Zstring ptr, ByVal layer As Integer = -1)
  Declare Sub		 xDeleteEffectConstant						Alias "_xDeleteEffectConstant"											(ByVal entity As Integer , ByVal nombre As Zstring ptr, ByVal layer As Integer = -1)
  Declare Sub		 xClearSurfaceConstants						Alias "_xClearSurfaceConstants"											(ByVal surface As Integer, ByVal layer As Integer = -1)
  Declare Sub		 xClearEffectConstants						Alias "_xClearEffectConstants"											(ByVal entity As Integer , ByVal layer As Integer = -1)
  Declare Sub		 xSetEffectTechnique							Alias "_xSetEffectTechnique"												(ByVal entity As Integer , ByVal nombre As Zstring ptr, ByVal layer As Integer = -1)
  Declare Sub		 xSurfaceTechnique							Alias "_xSurfaceTechnique"													(ByVal surface As Integer, ByVal nombre As Zstring ptr, ByVal layer As Integer = -1)
  Declare Function xValidateEffectTechnique					Alias "_xValidateEffectTechnique"										(ByVal effect As Integer , ByVal nombre As Zstring ptr) As Integer
  Declare Sub		 xSetEntityShaderLayer						Alias "_xSetEntityShaderLayer"											(ByVal entity As Integer , ByVal layer As Integer)
  Declare Sub		 xSetSurfaceShaderLayer						Alias "_xSetSurfaceShaderLayer"											(ByVal surface As Integer, ByVal layer As Integer)	 
  Declare Function xGetEntityShaderLayer						Alias "_xGetEntityShaderLayer"											(ByVal entity As Integer)	As Integer
  Declare Function xGetSurfaceShaderLayer						Alias "_xGetSurfaceShaderLayer"											(ByVal surface As Integer) As Integer
  Declare Sub		 xSetFXInt										Alias "_xSetFXInt"															(ByVal effect As Integer, ByVal nombre As Zstring ptr, ByVal value As Integer)
  Declare Sub		 xSetFXFloat									Alias "_xSetFXFloat"															(ByVal effect As Integer, ByVal nombre As Zstring ptr, ByVal value As Single)
  Declare Sub		 xSetFXBool										Alias "_xSetFXBool"															(ByVal effect As Integer, ByVal nombre As Zstring ptr, ByVal value As Integer)
  Declare Sub		 xSetFXVector									Alias "_xSetFXVector"														(ByVal effect As Integer, ByVal nombre As Zstring ptr, ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal w As Single = 0.0)
  Declare Sub		 xSetFXVectorArray							Alias "_xSetFXVectorArray"													(ByVal effect As Integer, ByVal nombre As Zstring ptr, ByVal value As Integer, ByVal count As Integer)
  Declare Sub		 xSetFXMatrixArray							Alias "_xSetFXMatrixArray"													(ByVal effect As Integer, ByVal nombre As Zstring ptr, ByVal value As Integer, ByVal count As Integer)
  Declare Sub		 xSetFXFloatArray								Alias "_xSetFXFloatArray"													(ByVal effect As Integer, ByVal nombre As Zstring ptr, ByVal value As Integer, ByVal count As Integer)
  Declare Sub		 xSetFXIntArray								Alias "_xSetFXIntArray"														(ByVal effect As Integer, ByVal nombre As Zstring ptr, ByVal value As Integer, ByVal count As Integer)
  Declare Sub		 xSetFXEntityMatrix							Alias "_xSetFXEntityMatrix"												(ByVal effect As Integer, ByVal nombre As Zstring ptr, ByVal matrix As Integer)
  Declare Sub		 xSetFXTexture									Alias "_xSetFXTexture"														(ByVal effect As Integer, ByVal nombre As Zstring ptr, ByVal texture As Integer, ByVal frame As Integer = 0)
  Declare Sub		 xSetFXMatrixSemantic						Alias "_xSetFXMatrixSemantic"												(ByVal effect As Integer, ByVal nombre As Zstring ptr, ByVal value As Integer)
  Declare Sub		 xDeleteFXConstant							Alias "_xDeleteFXConstant"													(ByVal effect As Integer, ByVal nombre As Zstring ptr)
  Declare Sub		 xSetFXTechnique								Alias "_xSetFXTechnique"													(ByVal effect As Integer, ByVal nombre As Zstring ptr)
  Declare Sub		 xClearFXConstants							Alias "_xClearFXConstants"													(ByVal effect As Integer)
  Declare Function xCreateEmitter								Alias "_xCreateEmitter"														(ByVal psystem As Integer, ByVal parent As Integer = 0) As Integer
  Declare Sub		 xEmitterEnable								Alias "_xEmitterEnable"														(ByVal emitter As Integer, ByVal state As Integer)
  Declare Function xEmitterEnabled								Alias "_xEmitterEnabled"													(ByVal emitter As Integer) As Integer
  Declare Function xEmitterGetPSystem							Alias "_xEmitterGetPSystem"												(ByVal emitter As Integer) As Integer
  Declare Function xEmitterAddParticle							Alias "_xEmitterAddParticle"												(ByVal emitter As Integer) As Integer
  Declare Sub		 xEmitterFreeParticle						Alias "_xEmitterFreeParticle"												(ByVal emitter As Integer, ByVal particle As Integer)
  Declare Function xEmitterValidateParticle					Alias "_xEmitterValidateParticle"										(ByVal emitter As Integer, ByVal particle As Integer) As Integer
  Declare Function xEmitterCountParticles						Alias "_xEmitterCountParticles"											(ByVal emitter As Integer) As Integer
  Declare Function xEmitterGetParticle							Alias "_xEmitterGetParticle"												(ByVal emitter As Integer, ByVal index As Integer) As Integer
  Declare Function xEmitterAlive									Alias "_xEmitterAlive"														(ByVal emitter As Integer) As Integer
  Declare Function xExtractAnimSeq								Alias "_xExtractAnimSeq"													(ByVal entity As Integer, ByVal firstFrame As Integer, ByVal lastFrame As Integer, ByVal sequence As Integer = 0) As Integer
  Declare Function xLoadAnimSeq									Alias "_xLoadAnimSeq"														(ByVal entity As Integer, ByVal path As Zstring ptr) As Integer
  Declare Sub		 xSetAnimSpeed									Alias "_xSetAnimSpeed"														(ByVal entity As Integer, ByVal speed As Single, ByVal rootBone As ZString Ptr = StrPtr(""))
  Declare Function xAnimSpeed										Alias "_xAnimSpeed"															(ByVal entity As Integer, ByVal rootBone As ZString Ptr = StrPtr("")) As Single
  Declare Function xAnimating										Alias "_xAnimating"															(ByVal entity As Integer, ByVal rootBone As ZString Ptr = StrPtr("")) As Integer
  Declare Function xAnimTime										Alias "_xAnimTime"															(ByVal entity As Integer, ByVal rootBone As ZString Ptr = StrPtr("")) As Single
  Declare Sub		 xAnimate										Alias "_xAnimate"																(ByVal entity As Integer, ByVal mode As Integer = 1, ByVal speed As Single = 1.0, ByVal sequence As Integer = 0, ByVal translate As Single = 0.0, ByVal rootBone As ZString Ptr = StrPtr(""))
  Declare Function xAnimSeq										Alias "_xAnimSeq"																(ByVal entity As Integer, ByVal rootBone As ZString Ptr = StrPtr("")) As Integer
  Declare Function xAnimLength									Alias "_xAnimLength"															(ByVal entity As Integer, ByVal rootBone As ZString Ptr = StrPtr("")) As Single
  Declare Sub		 xSetAnimTime									Alias "_xSetAnimTime"														(ByVal entity As Integer, ByVal time_ As Single, ByVal sequence As Integer, ByVal rootBone As ZString Ptr = StrPtr(""))
  Declare Sub		 xSetAnimFrame									Alias "_xSetAnimFrame"														(ByVal entity As Integer, ByVal frame As Single, ByVal sequence As Integer, ByVal rootBone As ZString Ptr = StrPtr(""))
  Declare Sub		 xEntityAutoFade								Alias "_xEntityAutoFade"													(ByVal entity As Integer, ByVal nearRange As Single, ByVal farRange As Single)
  Declare Sub		 xEntityOrder									Alias "_xEntityOrder"														(ByVal entity As Integer, ByVal order As Integer)
  Declare Sub		 xFreeEntity									Alias "_xFreeEntity"															(ByVal entity As Integer)
  Declare Function xCopyEntity									Alias "_xCopyEntity"															(ByVal entity As Integer, ByVal parent As Integer = 0, ByVal cloneBuffers As Integer = 0) As Integer
  Declare Sub		 xPaintEntity									Alias "_xPaintEntity"														(ByVal entity As Integer, ByVal brush As Integer)
  Declare Sub		 xEntityShininess								Alias "_xEntityShininess"													(ByVal entity As Integer, ByVal shininess As Single)
  Declare Sub		 xEntityPickMode								Alias "_xEntityPickMode"													(ByVal entity As Integer, ByVal mode As Integer, ByVal obscurer As Integer = 1, ByVal recursive As Integer = 1)
  Declare Sub		 xEntityTexture								Alias "_xEntityTexture"														(ByVal entity As Integer, ByVal texture As Integer, ByVal frame As Integer = 0, ByVal index As Integer = 0, ByVal isRecursive As Integer = 1)
  Declare Sub		 xEntityFX										Alias "_xEntityFX"															(ByVal entity As Integer, ByVal fx As Integer)
  Declare Function xGetParent										Alias "_xGetParent"															(ByVal entity As Integer) As Integer
  Declare Sub		 xSetFrustumSphere							Alias "_xSetFrustumSphere"													(ByVal entity As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal radii As Single)
  Declare Sub		 xCalculateFrustumVolume					Alias "_xCalculateFrustumVolume"											(ByVal entity As Integer)
  Declare Sub		 xEntityParent									Alias "_xEntityParent"														(ByVal entity As Integer, ByVal parent As Integer = 0, ByVal isGlobal As Integer = 1)
  Declare Sub		 xShowEntity									Alias "_xShowEntity"															(ByVal entity As Integer)
  Declare Sub		 xHideEntity									Alias "_xHideEntity"															(ByVal entity As Integer)
  Declare Sub		 xNameEntity									Alias "_xNameEntity"															(ByVal entity As Integer, ByVal nombre As Zstring ptr)
  Declare Sub		 xSetEntityQuaternion						Alias "_xSetEntityQuaternion"												(ByVal entity As Integer, ByVal quaternion As Integer)
  Declare Sub		 xSetEntityMatrix								Alias "_xSetEntityMatrix"													(ByVal entity As Integer, ByVal matrix As Integer)
  Declare Sub		 xEntityAlpha									Alias "_xEntityAlpha"														(ByVal entity As Integer, ByVal alpha2 As Single)
  Declare Sub		 xEntityColor									Alias "_xEntityColor"														(ByVal entity As Integer, ByVal red As Integer, ByVal green As Integer, ByVal blue As Integer)
  Declare Sub		 xEntitySpecularColor						Alias "_xEntitySpecularColor"												(ByVal entity As Integer, ByVal red As Integer, ByVal green As Integer, ByVal blue As Integer)
  Declare Sub		 xEntityAmbientColor							Alias "_xEntityAmbientColor"												(ByVal entity As Integer, ByVal red As Integer, ByVal green As Integer, ByVal blue As Integer)
  Declare Sub		 xEntityEmissiveColor						Alias "_xEntityEmissiveColor"												(ByVal entity As Integer, ByVal red As Integer, ByVal green As Integer, ByVal blue As Integer)
  Declare Sub		 xEntityBlend									Alias "_xEntityBlend"														(ByVal entity As Integer, ByVal mode As Integer)
  Declare Sub		 xEntityAlphaRef								Alias "_xEntityAlphaRef"													(ByVal entity As Integer, ByVal value As Integer)
  Declare Sub		 xEntityAlphaFunc								Alias "_xEntityAlphaFunc"													(ByVal entity As Integer, ByVal value As Integer)
  Declare Function xCreateInstance								Alias "_xCreateInstance"													(ByVal entity As Integer, ByVal parent As Integer = 0) As Integer
  Declare Sub		 xFreezeInstances								Alias "_xFreezeInstances"													(ByVal entity As Integer, ByVal enable As Integer = 1)
  Declare Function xInstancingAvaliable						Alias "_xInstancingAvaliable"												() As Integer
  Declare Function xGetEntityWorld								Alias "_xGetEntityWorld"													(ByVal entity As Integer) As Integer
  Declare Sub		 xSetEntityWorld								Alias "_xSetEntityWorld"													(ByVal entity As Integer, ByVal mundo As Integer)
  Declare Sub		 xScaleEntity									Alias "_xScaleEntity"														(ByVal entity As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal isGlobal As Integer = 0)
  Declare Sub		 xPositionEntity								Alias "_xPositionEntity"													(ByVal entity As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal isGlobal As Integer = 0)
  Declare Sub		 xMoveEntity									Alias "_xMoveEntity"															(ByVal entity As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal isGlobal As Integer = 0)
  Declare Sub		 xTranslateEntity								Alias "_xTranslateEntity"													(ByVal entity As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal isGlobal As Integer = 0)
  Declare Sub		 xRotateEntity									Alias "_xRotateEntity"														(ByVal entity As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal isGlobal As Integer = 0)
  Declare Sub		 xTurnEntity									Alias "_xTurnEntity"															(ByVal entity As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal isGlobal As Integer = 0)
  Declare Sub		 xPointEntity									Alias "_xPointEntity"														(ByVal entity1 As Integer,ByVal entity2 As Integer, ByVal roll As Single = 0.0)
  Declare Sub		 xAlignToVector								Alias "_xAlignToVector"														(ByVal entity As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal axis As Integer, ByVal factor As Single = 1.0)
  Declare Function xEntityDistance								Alias "_xEntityDistance"													(ByVal entity1 As Integer,ByVal entity2 As Integer) As Single
  Declare Function xGetMatElement								Alias "_xGetMatElement"														(ByVal entity As Integer, ByVal row As Integer, ByVal col As Integer) As Single
  Declare Function xEntityClass									Alias "_xEntityClass"														(ByVal entity As Integer) As Zstring ptr
  Declare Function xGetEntityBrush								Alias "_xGetEntityBrush"													(ByVal entity As Integer) As Integer
  Declare Function xEntityX										Alias "_xEntityX"																(ByVal entity As Integer, ByVal isGlobal As Integer = 0) As Single
  Declare Function xEntityY										Alias "_xEntityY"																(ByVal entity As Integer, ByVal isGlobal As Integer = 0) As Single
  Declare Function xEntityZ										Alias "_xEntityZ"																(ByVal entity As Integer, ByVal isGlobal As Integer = 0) As Single
  Declare Function xEntityVisible								Alias "_xEntityVisible"														(ByVal entity As Integer, ByVal destination As Integer) As Integer
  Declare Function xEntityScaleX									Alias "_xEntityScaleX"														(ByVal entity As Integer) As Single
  Declare Function xEntityScaleY									Alias "_xEntityScaleY"														(ByVal entity As Integer) As Single
  Declare Function xEntityScaleZ									Alias "_xEntityScaleZ"														(ByVal entity As Integer) As Single
  Declare Function xEntityRoll									Alias "_xEntityRoll"															(ByVal entity As Integer, ByVal isGlobal As Integer = 0) As Single
  Declare Function xEntityYaw										Alias "_xEntityYaw"															(ByVal entity As Integer, ByVal isGlobal As Integer = 0) As Single
  Declare Function xEntityPitch									Alias "_xEntityPitch"														(ByVal entity As Integer, ByVal isGlobal As Integer = 0) As Single
  Declare Function xEntityName									Alias "_xEntityName"															(ByVal entity As Integer) As Zstring ptr
  Declare Function xCountChildren								Alias "_xCountChildren"														(ByVal entity As Integer) As Integer
  Declare Function xGetChild										Alias "_xGetChild"															(ByVal entity As Integer, ByVal index	As Integer) As Integer
  Declare Function xEntityInView									Alias "_xEntityInView"														(ByVal entity As Integer, ByVal camera As Integer) As Integer
  Declare Function xFindChild										Alias "_xFindChild"															(ByVal entity As Integer, ByVal nombre As Zstring ptr) As Integer
  Declare Function xGetEntityMatrix								Alias "_xGetEntityMatrix"													(ByVal entity As Integer) As Integer
  Declare Function xGetEntityAlpha								Alias "_xGetEntityAlpha"													(ByVal entity As Integer) As Single
  Declare Function xGetAlphaRef									Alias "_xGetAlphaRef"														(ByVal entity As Integer) As Integer
  Declare Function xGetAlphaFunc									Alias "_xGetAlphaFunc"														(ByVal entity As Integer) As Integer
  Declare Function xEntityRed										Alias "_xEntityRed"															(ByVal entity As Integer) As Integer
  Declare Function xEntityGreen									Alias "_xEntityGreen"														(ByVal entity As Integer) As Integer
  Declare Function xEntityBlue									Alias "_xEntityBlue"															(ByVal entity As Integer) As Integer
  Declare Function xGetEntityShininess							Alias "_xGetEntityShininess"												(ByVal entity As Integer) As Single
  Declare Function xGetEntityBlend								Alias "_xGetEntityBlend"													(ByVal entity As Integer) As Integer
  Declare Function xGetEntityFX									Alias "_xGetEntityFX"														(ByVal entity As Integer) As Integer
  Declare Function xEntityHidden									Alias "_xEntityHidden"														(ByVal entity As Integer) As Integer
  Declare Function xEntitiesBBIntersect						Alias "_xEntitiesBBIntersect"												(ByVal entity1 As Integer,	 ByVal entity2 As Integer) As Integer
  Declare Function xMountPackFile								Alias "_xMountPackFile"														(ByVal path As Zstring ptr, ByVal mountpoint As ZString Ptr = StrPtr(""), ByVal password As ZString Ptr = StrPtr("")) As Integer
  Declare Sub		 xUnmountPackFile								Alias "_xUnmountPackFile"													(ByVal packfile As Integer)
  Declare Function xOpenFile										Alias "_xOpenFile"															(ByVal path As Zstring ptr) As Integer
  Declare Function xReadFile										Alias "_xReadFile"															(ByVal path As Zstring ptr) As Integer
  Declare Function xWriteFile										Alias "_xWriteFile"															(ByVal path As Zstring ptr) As Integer
  Declare Sub		 xCloseFile										Alias "_xCloseFile"															(ByVal file As Integer)
  Declare Function xFilePos										Alias "_xFilePos"																(ByVal file As Integer) As Integer
  Declare Sub		 xSeekFile										Alias "_xSeekFile"															(ByVal file As Integer, ByVal offset As Integer)
  Declare Function xFileType										Alias "_xFileType"															(ByVal path As Zstring ptr) As Integer
  Declare Function xFileSize										Alias "_xFileSize"															(ByVal path As Zstring ptr) As Integer
  Declare Function xFileCreationTime							Alias "_xFileCreationTime"													(ByVal path As Zstring ptr) As Integer
  Declare Function xFileCreationTimeStr						Alias "_xFileCreationTimeStr"												(ByVal path As Zstring ptr) As Zstring ptr
  Declare Function xFileModificationTime						Alias "_xFileModificationTime"											(ByVal path As Zstring ptr) As Integer
  Declare Function xFileModificationTimeStr					Alias "_xFileModificationTimeStr"										(ByVal path As Zstring ptr) As Zstring ptr
  Declare Function xReadDir										Alias "_xReadDir"																(ByVal path As Zstring ptr) As Integer
  Declare Sub		 xCloseDir										Alias "_xCloseDir"															(ByVal handle As Integer)
  Declare Function xNextFile										Alias "_xNextFile"															(ByVal handle As Integer) As Zstring ptr
  Declare Function xCurrentDir									Alias "_xCurrentDir"															() As Zstring ptr
  Declare Sub		 xChangeDir										Alias "_xChangeDir"															(ByVal path As Zstring ptr)
  Declare Function xCreateDir										Alias "_xCreateDir"															(ByVal path As Zstring ptr) As Integer
  Declare Function xDeleteDir										Alias "_xDeleteDir"															(ByVal path As Zstring ptr) As Integer
  Declare Function xCopyFile										Alias "_xCopyFile"															(ByVal pathSrc As Zstring ptr, ByVal pathDest As Zstring ptr) As Integer
  Declare Function xDeleteFile									Alias "_xDeleteFile"															(ByVal path As Zstring ptr) As Integer
  Declare Function xEof												Alias "_xEof"																	(ByVal file As Integer) As Integer
  Declare Function xReadByte										Alias "_xReadByte"															(ByVal file As Integer) As Integer
  Declare Function xReadShort										Alias "_xReadShort"															(ByVal file As Integer) As Integer
  Declare Function xReadInt										Alias "_xReadInt"																(ByVal file As Integer) As Integer
  Declare Function xReadFloat										Alias "_xReadFloat"															(ByVal file As Integer) As Single
  Declare Function xReadString									Alias "_xReadString"															(ByVal file As Integer) As Zstring ptr
  Declare Function xReadLine										Alias "_xReadLine"															(ByVal file As Integer, ByVal ls_flag As Integer = 0) As Zstring ptr
  Declare Sub		 xWriteByte										Alias "_xWriteByte"															(ByVal file As Integer, ByVal value As Integer)
  Declare Sub		 xWriteShort									Alias "_xWriteShort"															(ByVal file As Integer, ByVal value As Integer)
  Declare Sub		 xWriteInt										Alias "_xWriteInt"															(ByVal file As Integer, ByVal value As Integer)
  Declare Sub		 xWriteFloat									Alias "_xWriteFloat"															(ByVal file As Integer, ByVal value As Single)
  Declare Sub		 xWriteString									Alias "_xWriteString"														(ByVal file As Integer, ByVal value As Zstring ptr)
  Declare Sub		 xWriteLine										Alias "_xWriteLine"															(ByVal file As Integer, ByVal value As Zstring ptr, ByVal ls_flag As Integer = 0)
  Declare Function xLoadFont										Alias "_xLoadFont"															(ByVal nombre As Zstring ptr, ByVal height As Integer, ByVal bold As Integer = 0, ByVal italic As Integer = 0, ByVal underline As Integer = 0, ByVal fontface As zString ptr = StrPtr("")) As Integer
  Declare Sub		 xText											Alias "_xText"																	(ByVal x As Single, ByVal y As Single, ByVal textString As Zstring ptr, ByVal centerx As Integer = 0, ByVal centery As Integer = 0)
  Declare Sub		 xSetFont										Alias "_xSetFont"																(ByVal font As Integer)
  Declare Sub		 xFreeFont										Alias "_xFreeFont"															(ByVal font As Integer)
  Declare Function xFontWidth										Alias "_xFontWidth"															() As Integer
  Declare Function xFontHeight									Alias "_xFontHeight"															() As Integer
  Declare Function xStringWidth									Alias "_xStringWidth"														(ByVal textString As Zstring ptr) As Integer
  Declare Function xStringHeight									Alias "_xStringHeight"														(ByVal textString As Zstring ptr) As Integer
  Declare Function xWinMessage									Alias "_xWinMessage"															(ByVal message As Zstring ptr) As Integer
  Declare Function xGetMaxPixelShaderVersion					Alias "_xGetMaxPixelShaderVersion"										() As Integer
  Declare Sub		 xLine											Alias "_xLine"																	(ByVal x1 As Integer,ByVal y1 As Integer,ByVal x2 As Integer,		ByVal y2 As Integer)
  Declare Sub		 xRect											Alias "_xRect"																	(ByVal x As Integer, ByVal y As Integer, ByVal width_ As Integer, ByVal height As Integer, ByVal solid As Integer = 0)
  Declare Function xRectsOverlap									Alias "_xRectsOverlap"														(ByVal x1 As Integer,ByVal y1 As Integer,ByVal width1 As Integer, ByVal height1 As Integer, ByVal x2 As Integer, ByVal y2 As Integer, ByVal width2 As Integer, ByVal height2 As Integer) As Integer
  Declare Sub		 xViewport										Alias "_xViewport"															(ByVal x As Integer, ByVal y As Integer, ByVal width_ As Integer, ByVal height As Integer)
  Declare Sub		 xOval											Alias "_xOval"																	(ByVal x As Integer, ByVal y As Integer, ByVal width_ As Integer, ByVal height As Integer, ByVal solid As Integer = 0)
  Declare Sub		 xOrigin											Alias "_xOrigin"																(ByVal x As Integer, ByVal y As Integer)
  Declare Function xGetMaxVertexShaderVersion				Alias "_xGetMaxVertexShaderVersion"										() As Integer
  Declare Function xGetMaxAntiAlias								Alias "_xGetMaxAntiAlias"													() As Integer
  Declare Function xGetMaxTextureFiltering					Alias "_xGetMaxTextureFiltering"											() As Integer
  Declare Sub		 xSetAntiAliasType							Alias "_xSetAntiAliasType"													(ByVal typeID As Integer)
  Declare Sub		 xAppTitle										Alias "_xAppTitle"															(ByVal title As Zstring ptr)
  Declare Sub		 xSetWND											Alias "_xSetWND"																(ByVal window_ As Integer)
  Declare Sub		 xSetRenderWindow								Alias "_xSetRenderWindow"													(ByVal window_ As Integer)
  Declare Sub		 xSetTopWindow									Alias "_xSetTopWindow"														(ByVal window_ As Integer)
  Declare Sub		 xDestroyRenderWindow						Alias "_xDestroyRenderWindow"												()
  Declare Sub		 xFlip											Alias "_xFlip"																	()
  Declare Function xBackBuffer									Alias "_xBackBuffer"															() As Integer
  Declare Sub		 xLockBuffer									Alias "_xLockBuffer"															(ByVal buffer As Integer = 0)
  Declare Sub		 xUnlockBuffer									Alias "_xUnlockBuffer"														(ByVal buffer As Integer = 0)
  Declare Sub		 xWritePixelFast								Alias "_xWritePixelFast"													(ByVal x As Integer, ByVal y As Integer, ByVal argb As Integer, ByVal buffer As Integer = -1)
  Declare Function xReadPixelFast								Alias "_xReadPixelFast"														(ByVal x As Integer, ByVal y As Integer, ByVal buffer As Integer = -1) As Integer
  Declare Function xGetPixels										Alias "_xGetPixels"															(ByVal buffer As Integer = -1) As Integer
  Declare Sub		 xSaveBuffer									Alias "_xSaveBuffer"															(ByVal buffer As Integer, ByVal path As Zstring ptr)
  Declare Function xGetCurrentBuffer							Alias "_xGetCurrentBuffer"													() As Integer
  Declare Function xBufferWidth									Alias "_xBufferWidth"														(ByVal buffer As Integer = 0) As Integer
  Declare Function xBufferHeight									Alias "_xBufferHeight"														(ByVal buffer As Integer = 0) As Integer
  Declare Function xCatchTimestamp								Alias "_xCatchTimestamp"													() As Integer
  Declare Function xGetElapsedTime								Alias "_xGetElapsedTime"													(ByVal timeStamp As Integer) As Single
  Declare Sub		 xSetBuffer										Alias "_xSetBuffer"															(ByVal buffer As Integer = 0)
  Declare Sub		 xSetMRT											Alias "_xSetMRT"																(ByVal buffer As Integer, ByVal frame As Integer, ByVal index As Integer)
  Declare Sub		 xUnSetMRT										Alias "_xUnSetMRT"															()
  Declare Function xGetNumberRT									Alias "_xGetNumberRT"														() As Integer
  Declare Function xTextureBuffer								Alias "_xTextureBuffer"														(ByVal texture As Integer, ByVal frame As Integer = 0) As Integer
  Declare Sub		 xLoadBuffer									Alias "_xLoadBuffer"															(ByVal buffer As Integer, ByVal path As Zstring ptr)
  Declare Sub		 xWritePixel									Alias "_xWritePixel"															(ByVal x	 As Integer, ByVal y	 As Integer, ByVal argb As Integer, ByVal buffer As Integer = 0)
  Declare Sub		 xCopyPixel										Alias "_xCopyPixel"															(ByVal sx As Integer, ByVal sy As Integer, ByVal sourceBuffer As Integer, ByVal dx As Integer, ByVal dy As Integer, ByVal destinationBuffer As Integer)
  Declare Sub		 xCopyPixelFast								Alias "_xCopyPixelFast"														(ByVal sx As Integer, ByVal sy As Integer, ByVal sourceBuffer As Integer, ByVal dx As Integer, ByVal dy As Integer, ByVal destinationBuffer As Integer)
  Declare Sub		 xCopyRect										Alias "_xCopyRect"															(ByVal sx As Integer, ByVal sy As Integer, ByVal sw As Integer, ByVal sh As Integer, ByVal dx As Integer, ByVal dy As Integer, ByVal sourceBuffer As Integer, ByVal destinationBuffer As Integer)
  Declare Function xGraphicsBuffer								Alias "_xGraphicsBuffer"													() As Integer
  Declare Function xGetColor										Alias "_xGetColor"															(ByVal x As Integer, ByVal y As Integer) As Integer
  Declare Function xReadPixel										Alias "_xReadPixel"															(ByVal x As Integer, ByVal y As Integer, ByVal buffer As Integer = 0) As Integer
  Declare Function xGraphicsWidth								Alias "_xGraphicsWidth"														(ByVal isVirtual As Integer = 1) As Integer
  Declare Function xGraphicsHeight								Alias "_xGraphicsHeight"													(ByVal isVirtual As Integer = 1) As Integer
  Declare Function xGraphicsDepth								Alias "_xGraphicsDepth"														() As Integer
  Declare Function xColorAlpha									Alias "_xColorAlpha"															() As Integer
  Declare Function xColorRed										Alias "_xColorRed"															() As Integer
  Declare Function xColorGreen									Alias "_xColorGreen"															() As Integer
  Declare Function xColorBlue										Alias "_xColorBlue"															() As Integer
  Declare Sub		 xClearWorld									Alias "_xClearWorld"															(ByVal entities As Integer = 1, ByVal brushes As Integer = 1, ByVal textures As Integer = 1)
  Declare Sub		 xClsColor										Alias "_xClsColor"															(ByVal red As Integer, ByVal green As Integer, ByVal blue As Integer, ByVal alpha2 As Integer = 255)
  Declare Sub		 xColor											Alias "_xColor"																(ByVal red As Integer, ByVal green As Integer, ByVal blue As Integer, ByVal alpha2 As Integer = 255)
  Declare Sub		 xCls												Alias "_xCls"																	()
  Declare Sub		 xUpdateWorld									Alias "_xUpdateWorld"														(ByVal speed As Single = 1.0)
  Declare Sub		 xRenderEntity									Alias "_xRenderEntity"														(ByVal camera As Integer, ByVal entity As Integer, ByVal tween As Single = 1.0)
  Declare Sub		 xRenderWorld									Alias "_xRenderWorld"														(ByVal tween As Single = 1.0, ByVal renderShadows As Integer = 0)
  Declare Sub		 xSetAutoTB										Alias "_xSetAutoTB"															(ByVal flag As Integer)
  Declare Function xMaxClipPlanes								Alias "_xMaxClipPlanes"														() As Integer
  Declare Sub		 xWireframe										Alias "_xWireframe"															(ByVal state As Integer)
  Declare Sub		 xDither											Alias "_xDither"																(ByVal state As Integer)
  Declare Sub		 xSetSkinningMethod							Alias "_xSetSkinningMethod"												(ByVal skinMethod As Integer)
  Declare Function xTrisRendered									Alias "_xTrisRendered"														() As Integer
  Declare Function xDIPCounter									Alias "_xDIPCounter"															() As Integer
  Declare Function xSurfRendered									Alias "_xSurfRendered"														() As Integer
  Declare Function xEntityRendered								Alias "_xEntityRendered"													() As Integer
  Declare Sub		 xAmbientLight									Alias "_xAmbientLight"														(ByVal red As Integer, ByVal green As Integer, ByVal blue As Integer, ByVal mundo As Integer = 0)
  Declare Function xGetFPS											Alias "_xGetFPS"																() As Integer
  Declare Sub		 xAntiAlias										Alias "_xAntiAlias"															(ByVal state As Integer)
  Declare Sub		 xSetTextureFiltering						Alias "_xSetTextureFiltering"												(ByVal filter As Integer)
  Declare Sub		 xStretchRect									Alias "_xStretchRect"														(ByVal texture1 As Integer, ByVal x1 As Integer, ByVal y1 As Integer, ByVal width1 As Integer, ByVal height1 As Integer, ByVal texture2 As Integer, ByVal x2 As Integer, ByVal y2 As Integer, ByVal width2 As Integer, ByVal height2 As Integer, ByVal filter As Integer)
  Declare Sub		 xStretchBackBuffer							Alias "_xStretchBackBuffer"												(ByVal texture	 As Integer, ByVal x	 As Integer, ByVal y	 As Integer, ByVal width_ As Integer, ByVal height As Integer,	 ByVal filter As Integer)
  Declare Function xGetDevice										Alias "_xGetDevice"															() As Integer
  Declare Sub		 xReleaseGraphics								Alias "_xReleaseGraphics"													()
  Declare Sub		 xShowPointer									Alias "_xShowPointer"														()
  Declare Sub		 xHidePointer									Alias "_xHidePointer"														()
  Declare Sub		 xCreateDSS										Alias "_xCreateDSS"															(ByVal width_ As Integer, ByVal height As Integer)
  Declare Sub		 xDeleteDSS										Alias "_xDeleteDSS"															()
  Declare Sub		 xGridColor										Alias "_xGridColor"															(ByVal centerRed As Integer, ByVal centerGreen As Integer, ByVal centerBlue As Integer, ByVal gridRed As Integer, ByVal gridGreen As Integer, ByVal gridBlue As Integer)
  Declare Sub		 xDrawGrid										Alias "_xDrawGrid"															(ByVal x As Single, ByVal z As Single, ByVal gridSize As Integer, ByVal range As Integer)
  Declare Sub		 xDrawBBox										Alias "_xDrawBBox"															(ByVal draw_ As Integer, ByVal zOn As Integer, ByVal red As Integer, ByVal green As Integer, ByVal blue As Integer, ByVal alpha2 As Integer)
  Declare Sub		 xGraphics3D									Alias "_xGraphics3D"															(ByVal width_ As Integer = 1024, ByVal height As Integer = 768, ByVal depth As Integer = 0, ByVal mode As Integer = 0, ByVal vsync As Integer = 1)
  Declare Sub		 xGraphicsAspectRatio						Alias "_xGraphicsAspectRatio"												(ByVal aspectRatio As Single)
  Declare Sub		 xGraphicsBorderColor						Alias "_xGraphicsBorderColor"												(ByVal red As Integer, ByVal green As Integer, ByVal blue As Integer)
  Declare Function xGetRenderWindow								Alias "_xGetRenderWindow"													() As Integer
  Declare Sub		 xKey												Alias "_xKey"																	(ByVal key As Zstring ptr)
  Declare Sub		 xSetEngineSetting							Alias "_xSetEngineSetting"													(ByVal parameter As Zstring ptr, ByVal value As Zstring ptr)
  Declare Function xGetEngineSetting							Alias "_xGetEngineSetting"													(ByVal parameter As Zstring ptr) As Zstring ptr
  Declare Function xHWInstancingAvailable						Alias "_xHWInstancingAvailable"											() As Integer
  Declare Function xShaderInstancingAvailable				Alias "_xShaderInstancingAvailable"										() As Integer
  Declare Sub		 xSetShaderLayer								Alias "_xSetShaderLayer"													(ByVal layer As Integer)
  Declare Function xGetShaderLayer								Alias "_xGetShaderLayer"													() As Integer
  Declare Sub		 xDrawMovementGizmo							Alias "_xDrawMovementGizmo"												(ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal selectMask As Integer = 0)
  Declare Sub		 xDrawScaleGizmo								Alias "_xDrawScaleGizmo"													(ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal selectMask As Integer = 0, ByVal sx As Single = 1.0, ByVal sy As Single = 1.0, ByVal sz As Single = 1.0)
  Declare Sub		 xDrawRotationGizmo							Alias "_xDrawRotationGizmo"												(ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal selectMask As Integer = 0, ByVal pitch As Single = 0.0, ByVal yaw As Single = 0.0, ByVal roll As Single = 0.0)
  Declare Function xCheckMovementGizmo							Alias "_xCheckMovementGizmo"												(ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal camera As Integer, ByVal mx As Integer, ByVal my As Integer) As Integer
  Declare Function xCheckScaleGizmo								Alias "_xCheckScaleGizmo"													(ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal camera As Integer, ByVal mx As Integer, ByVal my As Integer) As Integer
  Declare Function xCheckRotationGizmo							Alias "_xCheckRotationGizmo"												(ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal camera As Integer, ByVal mx As Integer, ByVal my As Integer) As Integer
  Declare Sub		 xCaptureWorld									Alias "_xCaptureWorld"														()
  Declare Function xCountGfxModes								Alias "_xCountGfxModes"														() As Integer
  Declare Function xGfxModeWidth									Alias "_xGfxModeWidth"														(ByVal mode As Integer) As Integer
  Declare Function xGfxModeHeight								Alias "_xGfxModeHeight"														(ByVal mode As Integer) As Integer
  Declare Function xGfxModeDepth									Alias "_xGfxModeDepth"														(ByVal mode As Integer) As Integer
  Declare Function xGfxModeExists								Alias "_xGfxModeExists"														(ByVal width_ As Integer, ByVal height As Integer, ByVal depth As Integer) As Integer
  Declare Sub		 xAppWindowFrame								Alias "_xAppWindowFrame"													(ByVal state As Integer)
  Declare Function xMillisecs										Alias "_xMillisecs"															() As Integer
  Declare Function xDeltaTime										Alias "_xDeltaTime"															(ByVal fromInit As Integer = 0) As Integer
  Declare Function xDeltaValue									Alias "_xDeltaValue"															(ByVal value As Single, ByVal time As Integer = 0) As Single
  Declare Sub		 xAddDeviceLostCallback						Alias "_xAddDeviceLostCallback"											(ByVal func As Integer)
  Declare Sub		 xDeleteDeviceLostCallback					Alias "_xDeleteDeviceLostCallback"										(ByVal func As Integer)
  Declare Sub		 xDeinit											Alias "_xDeinit"																()
  Declare Sub		 xImageColor									Alias "_xImageColor"															(ByVal image As Integer, ByVal red As Integer, ByVal green As Integer, ByVal blue As Integer)
  Declare Sub		 xImageAlpha									Alias "_xImageAlpha"															(ByVal image As Integer, ByVal alpha2 As Single)
  Declare Function xImageBuffer									Alias "_xImageBuffer"														(ByVal image As Integer, ByVal frame As Integer = 0) As Integer
  Declare Function xCreateImage									Alias "_xCreateImage"														(ByVal width_ As Integer,ByVal height As Integer, ByVal frame As Integer = 1) As Integer
  Declare Sub		 xGrabImage										Alias "_xGrabImage"															(ByVal image As Integer, ByVal x As Integer, ByVal y As Integer, ByVal frame As Integer = 0)
  Declare Sub		 xFreeImage										Alias "_xFreeImage"															(ByVal image As Integer)
  Declare Function xLoadImage										Alias "_xLoadImage"															(ByVal path As Zstring ptr) As Integer
  Declare Function xLoadAnimImage								Alias "_xLoadAnimImage"														(ByVal path As Zstring ptr, ByVal width_ As Integer, ByVal height As Integer, ByVal startFrame As Integer, ByVal frames As Integer) As Integer
  Declare Sub		 xSaveImage										Alias "_xSaveImage"															(ByVal image As Integer, ByVal path As Zstring ptr, ByVal frame As Integer = 0)
  Declare Sub		 xDrawImage										Alias "_xDrawImage"															(ByVal image As Integer, ByVal x As Single, ByVal y As Single, ByVal frame As Integer = 0)
  Declare Sub		 xDrawImageRect								Alias "_xDrawImageRect"														(ByVal image As Integer, ByVal x As Single, ByVal y As Single, ByVal rectx As Single, ByVal recty As Single, ByVal rectWidth As Single, ByVal rectHeight As Single, ByVal frame As Integer = 0)
  Declare Sub		 xScaleImage									Alias "_xScaleImage"															(ByVal image As Integer, ByVal x As Single, ByVal y As Single)
  Declare Sub		 xResizeImage									Alias "_xResizeImage"														(ByVal image As Integer, ByVal width_ As Single, ByVal height As Single)
  Declare Sub		 xRotateImage									Alias "_xRotateImage"														(ByVal image As Integer, ByVal angle As Single)
  Declare Function xImageAngle									Alias "_xImageAngle"															(ByVal image As Integer) As Single
  Declare Function xImageWidth									Alias "_xImageWidth"															(ByVal image As Integer) As Integer
  Declare Function xImageHeight									Alias "_xImageHeight"														(ByVal image As Integer) As Integer
  Declare Function xImagesCollide								Alias "_xImagesCollide"														(ByVal image1 As Integer, ByVal x1 As Integer, ByVal y1 As Integer, ByVal frame1 As Integer, ByVal image2 As Integer, ByVal x2 As Integer, ByVal y2 As Integer, ByVal frame2 As Integer) As Integer
  Declare Function xImageRectCollide							Alias "_xImageRectCollide"													(ByVal image As Integer, ByVal x As Integer, ByVal y As Integer, ByVal frame As Integer, ByVal rectx As Integer, ByVal recty As Integer, ByVal rectWidth As Integer, ByVal rectHeight As Integer) As Integer
  Declare Function xImageRectOverlap							Alias "_xImageRectOverlap"													(ByVal image As Integer, ByVal x As Single, ByVal y As Single, ByVal rectx As Single, ByVal recty As Single, ByVal rectWidth As Single, ByVal rectHeight As Single) As Integer
  Declare Function xImageXHandle									Alias "_xImageXHandle"														(ByVal image As Integer) As Integer
  Declare Function xImageYHandle									Alias "_xImageYHandle"														(ByVal image As Integer) As Integer
  Declare Sub		 xHandleImage									Alias "_xHandleImage"														(ByVal image As Integer, ByVal x As Single, ByVal y As Single)
  Declare Sub		 xMidHandle										Alias "_xMidHandle"															(ByVal image As Integer)
  Declare Sub		 xAutoMidHandle								Alias "_xAutoMidHandle"														(ByVal state As Integer)
  Declare Sub		 xTileImage										Alias "_xTileImage"															(ByVal image As Integer, ByVal x As Single, ByVal y As Single, ByVal frame As Integer = 0)
  Declare Function xImagesOverlap								Alias "_xImagesOverlap"														(ByVal image1 As Integer, ByVal x1 As Single, ByVal y1 As Single, ByVal image2 As Integer, ByVal x2 As Single, ByVal y2 As Single) As Integer
  Declare Sub		 xMaskImage										Alias "_xMaskImage"															(ByVal image As Integer, ByVal red As Integer, ByVal green As Integer, ByVal blue As Integer)
  Declare Function xCopyImage										Alias "_xCopyImage"															(ByVal image As Integer) As Integer
  Declare Sub		 xDrawBlock										Alias "_xDrawBlock"															(ByVal image As Integer, ByVal x As Single, ByVal y As Single, ByVal frame As Integer = 0)
  Declare Sub		 xDrawBlockRect								Alias "_xDrawBlockRect"														(ByVal image As Integer, ByVal x As Single, ByVal y As Single, ByVal rectx As Single, ByVal recty As Single, ByVal rectWidth As Single, ByVal rectHeight As Single, ByVal frame As Integer = 0)
  Declare Function xImageActualWidth							Alias "_xImageActualWidth"													(ByVal image As Integer) As Integer
  Declare Function xImageActualHeight							Alias "_xImageActualHeight"												(ByVal image As Integer) As Integer
  Declare Sub		 xFlushKeys										Alias "_xFlushKeys"															()
  Declare Sub		 xFlushMouse									Alias "_xFlushMouse"															()
  Declare Function xKeyHit											Alias "_xKeyHit"																(ByVal key As Integer) As Integer
  Declare Function xKeyUp											Alias "_xKeyUp"																(ByVal key As Integer) As Integer
  Declare Sub		 xWaitKey										Alias "_xWaitKey"																()
  Declare Function xMouseHit										Alias "_xMouseHit"															(ByVal key As Integer) As Integer
  Declare Function xKeyDown										Alias "_xKeyDown"																(ByVal key As Integer) As Integer
  Declare Function xGetKey											Alias "_xGetKey"																() As Integer
  Declare Function xMouseDown										Alias "_xMouseDown"															(ByVal key As Integer) As Integer
  Declare Function xMouseUp										Alias "_xMouseUp"																(ByVal key As Integer) As Integer
  Declare Function xGetMouse										Alias "_xGetMouse"															() As Integer
  Declare Function xMouseX											Alias "_xMouseX"																() As Integer
  Declare Function xMouseY											Alias "_xMouseY"																() As Integer
  Declare Function xMouseZ											Alias "_xMouseZ"																() As Integer
  Declare Function xMouseXSpeed									Alias "_xMouseXSpeed"														() As Integer
  Declare Function xMouseYSpeed									Alias "_xMouseYSpeed"														() As Integer
  Declare Function xMouseZSpeed									Alias "_xMouseZSpeed"														() As Integer
  Declare Function xMouseSpeed									Alias "_xMouseSpeed"															() As Integer
  Declare Sub		 xMoveMouse										Alias "_xMoveMouse"															(ByVal x As Integer, ByVal y As Integer)
  Declare Function xJoyType										Alias "_xJoyType"																(ByVal portID As Integer = 0) As Integer
  Declare Function xJoyDown										Alias "_xJoyDown"																(ByVal key As Integer, ByVal portID As Integer = 0) As Integer
  Declare Function xJoyHit											Alias "_xJoyHit"																(ByVal key As Integer, ByVal portID As Integer = 0) As Integer
  Declare Function xGetJoy											Alias "_xGetJoy"																(ByVal portID As Integer = 0) As Integer
  Declare Sub		 xFlushJoy										Alias "_xFlushJoy"															()
  Declare Function xWaitJoy										Alias "_xWaitJoy"																(ByVal portID As Integer = 0) As Integer
  Declare Function xJoyX											Alias "_xJoyX"																	(ByVal portID As Integer = 0) As Single
  Declare Function xJoyY											Alias "_xJoyY"																	(ByVal portID As Integer = 0) As Single
  Declare Function xJoyZ											Alias "_xJoyZ"																	(ByVal portID As Integer = 0) As Single
  Declare Function xJoyU											Alias "_xJoyU"																	(ByVal portID As Integer = 0) As Single
  Declare Function xJoyV											Alias "_xJoyV"																	(ByVal portID As Integer = 0) As Single
  Declare Function xJoyPitch										Alias "_xJoyPitch"															(ByVal portID As Integer = 0) As Single
  Declare Function xJoyYaw											Alias "_xJoyYaw"																(ByVal portID As Integer = 0) As Single
  Declare Function xJoyRoll										Alias "_xJoyRoll"																(ByVal portID As Integer = 0) As Single
  Declare Function xJoyHat											Alias "_xJoyHat"																(ByVal portID As Integer = 0) As Single
  Declare Function xJoyXDir										Alias "_xJoyXDir"																(ByVal portID As Integer = 0) As Integer
  Declare Function xJoyYDir										Alias "_xJoyYDir"																(ByVal portID As Integer = 0) As Integer
  Declare Function xJoyZDir										Alias "_xJoyZDir"																(ByVal portID As Integer = 0) As Integer
  Declare Function xJoyUDir										Alias "_xJoyUDir"																(ByVal portID As Integer = 0) As Integer
  Declare Function xJoyVDir										Alias "_xJoyVDir"																(ByVal portID As Integer = 0) As Integer
  Declare Function xCountJoys										Alias "_xCountJoys"															() As Integer
  Declare Function xCreateLight									Alias "_xCreateLight"														(ByVal typeID As Integer = 1) As Integer
  Declare Sub		 xLightShadowEpsilons						Alias "_xLightShadowEpsilons"												(ByVal light As Integer, ByVal epsilon1 As Single, ByVal epsilon2 As Single)
  Declare Sub		 xLightEnableShadows							Alias "_xLightEnableShadows"												(ByVal light As Integer, ByVal state As Integer)
  Declare Function xLightShadowsEnabled						Alias "_xLightShadowsEnabled"												(ByVal light As Integer) As Integer
  Declare Sub		 xLightRange									Alias "_xLightRange"															(ByVal light As Integer, ByVal range As Single)
  Declare Sub		 xLightColor									Alias "_xLightColor"															(ByVal light As Integer, ByVal red As Integer, ByVal green As Integer, ByVal blue As Integer)
  Declare Sub		 xLightConeAngles								Alias "_xLightConeAngles"													(ByVal light As Integer, ByVal inner As Single, ByVal outer As Single)
  Declare Function xCreateLog										Alias "_xCreateLog"															(ByVal target As Integer = 1, ByVal level As Integer = 0, ByVal filename As ZString ptr = StrPtr("xors_log.html"), ByVal cssfilename As zString ptr= StrPtr("")) As Integer
  Declare Function xCloseLog										Alias "_xCloseLog"															() As Integer
  Declare Function xGetLogString									Alias "_xGetLogString"														() As Zstring ptr
  Declare Sub		 xClearLogString								Alias "_xClearLogString"													()
  Declare Sub		 xSetLogLevel									Alias "_xSetLogLevel"														(ByVal level  As Integer = 2)
  Declare Sub		 xSetLogTarget									Alias "_xSetLogTarget"														(ByVal target As Integer = 1)
  Declare Function xGetLogLevel									Alias "_xGetLogLevel"														() As Integer
  Declare Function xGetLogTarget									Alias "_xGetLogTarget"														() As Integer
  Declare Sub		 xLogInfo										Alias "_xLogInfo"																(ByVal message As Zstring ptr, ByVal func As ZString Ptr = StrPtr(""), ByVal file As ZString Ptr = StrPtr(""), ByVal line As Integer = -1)
  Declare Sub		 xLogMessage									Alias "_xLogMessage"															(ByVal message As Zstring ptr, ByVal func As ZString Ptr = StrPtr(""), ByVal file As ZString Ptr = StrPtr(""), ByVal line As Integer = -1)
  Declare Sub		 xLogWarning									Alias "_xLogWarning"															(ByVal message As Zstring ptr, ByVal func As ZString Ptr = StrPtr(""), ByVal file As ZString Ptr = StrPtr(""), ByVal line As Integer = -1)
  Declare Sub		 xLogError										Alias "_xLogError"															(ByVal message As Zstring ptr, ByVal func As ZString Ptr = StrPtr(""), ByVal file As ZString Ptr = StrPtr(""), ByVal line As Integer = -1)
  Declare Sub		 xLogFatal										Alias "_xLogFatal"															(ByVal message As Zstring ptr, ByVal func As ZString Ptr = StrPtr(""), ByVal file As ZString Ptr = StrPtr(""), ByVal line As Integer = -1)
  Declare Function xCreateMesh									Alias "_xCreateMesh"															(ByVal parent As Integer = 0) As Integer
  Declare Function xLoadMesh										Alias "_xLoadMesh"															(ByVal path As Zstring ptr, ByVal parent As Integer = 0) As Integer
  Declare Function xLoadMeshWithChild							Alias "_xLoadMeshWithChild"												(ByVal path As Zstring ptr, ByVal parent As Integer = 0) As Integer
  Declare Function xLoadAnimMesh									Alias "_xLoadAnimMesh"														(ByVal path As Zstring ptr, ByVal parent As Integer = 0) As Integer
  Declare Function xCreateCube									Alias "_xCreateCube"															(ByVal parent As Integer = 0) As Integer
  Declare Function xCreateSphere									Alias "_xCreateSphere"														(ByVal segments As Integer = 16, ByVal parent As Integer = 0) As Integer
  Declare Function xCreateCylinder								Alias "_xCreateCylinder"													(ByVal segments As Integer = 16, ByVal solid As Integer = 1, ByVal parent As Integer = 0) As Integer
  Declare Function xCreateTorus									Alias "_xCreateTorus"														(ByVal segments As Integer = 16, ByVal R As Single = 1.0, ByVal r_tube As Single = 0.025, ByVal parent As Integer = 0) As Integer
  Declare Function xCreateCone									Alias "_xCreateCone"															(ByVal segments As Integer = 16, ByVal solid As Integer = 1, ByVal parent As Integer = 0) As Integer
  Declare Function xCopyMesh										Alias "_xCopyMesh"															(ByVal entity As Integer, ByVal parent As Integer = 0) As Integer
  Declare Sub		 xAddMesh										Alias "_xAddMesh"																(ByVal source As Integer, ByVal destination As Integer)
  Declare Sub		 xFlipMesh										Alias "_xFlipMesh"															(ByVal entity As Integer)
  Declare Sub		 xPaintMesh										Alias "_xPaintMesh"															(ByVal entity As Integer, ByVal brush As Integer)
  Declare Sub		 xFitMesh										Alias "_xFitMesh"																(ByVal entity As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal width_ As Single, ByVal height As Single, ByVal depth As Single, ByVal uniform As Integer = 0)
  Declare Function xMeshWidth										Alias "_xMeshWidth"															(ByVal entity As Integer, ByVal recursive As Integer = 0) As Single
  Declare Function xMeshHeight									Alias "_xMeshHeight"															(ByVal entity As Integer, ByVal recursive As Integer = 0) As Single
  Declare Function xMeshDepth										Alias "_xMeshDepth"															(ByVal entity As Integer, ByVal recursive As Integer = 0) As Single
  Declare Sub		 xScaleMesh										Alias "_xScaleMesh"															(ByVal entity As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single)
  Declare Sub		 xRotateMesh									Alias "_xRotateMesh"															(ByVal entity As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single)
  Declare Sub		 xPositionMesh									Alias "_xPositionMesh"														(ByVal entity As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single)
  Declare Sub		 xUpdateNormals								Alias "_xUpdateNormals"														(ByVal entity As Integer)
  Declare Sub		 xUpdateN										Alias "_xUpdateN"																(ByVal entity As Integer)
  Declare Sub		 xUpdateTB										Alias "_xUpdateTB"															(ByVal entity As Integer)
  Declare Function xMeshesBBIntersect							Alias "_xMeshesBBIntersect"												(ByVal entity1 As Integer, ByVal entity2 As Integer) As Integer
  Declare Function xMeshesIntersect								Alias "_xMeshesIntersect"													(ByVal entity1 As Integer, ByVal entity2 As Integer) As Integer
  Declare Function xGetMeshVB										Alias "_xGetMeshVB"															(ByVal entity As Integer) As Integer
  Declare Function xGetMeshIB										Alias "_xGetMeshIB"															(ByVal entity As Integer) As Integer
  Declare Function xGetMeshVBSize								Alias "_xGetMeshVBSize"														(ByVal entity As Integer) As Integer
  Declare Function xGetMeshIBSize								Alias "_xGetMeshIBSize"														(ByVal entity As Integer) As Integer
  Declare Sub		 xDeleteMeshVB									Alias "_xDeleteMeshVB"														(ByVal entity As Integer)
  Declare Sub		 xDeleteMeshIB									Alias "_xDeleteMeshIB"														(ByVal entity As Integer)
  Declare Function xCountSurfaces								Alias "_xCountSurfaces"														(ByVal entity As Integer) As Integer
  Declare Function xGetSurface									Alias "_xGetSurface"															(ByVal entity As Integer, ByVal index As Integer) As Integer
  Declare Function xCreatePivot									Alias "_xCreatePivot"														(ByVal parent As Integer = 0) As Integer
  Declare Function xFindSurface									Alias "_xFindSurface"														(ByVal entity As Integer, ByVal brush As Integer) As Integer
  Declare Function xCreatePoly									Alias "_xCreatePoly"															(ByVal sides As Integer = 0, ByVal parent As Integer = 0) As Integer
  Declare Sub		 xMeshSingleSurface							Alias "_xMeshSingleSurface"												(ByVal entity As Integer)
  Declare Function xSaveMesh										Alias "_xSaveMesh"															(ByVal entity As Integer, ByVal path As Zstring ptr) As Integer
  Declare Sub		 xLightMesh										Alias "_xLightMesh"															(ByVal entity As Integer, ByVal red As Integer, ByVal green As Integer, ByVal blue As Integer, ByVal range As Single = 0.0, ByVal lightX As Single = 0.0, ByVal lightY As Single = 0.0, ByVal lightZ As Single = 0.0)
  Declare Sub		 xMeshPrimitiveType							Alias "_xMeshPrimitiveType"												(ByVal entity As Integer, ByVal ptype As Integer)
  Declare Sub		 xParticlePosition							Alias "_xParticlePosition"													(ByVal particle As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single)
  Declare Function xParticleX										Alias "_xParticleX"															(ByVal particle As Integer) As Single
  Declare Function xParticleY										Alias "_xParticleY"															(ByVal particle As Integer) As Single
  Declare Function xParticleZ										Alias "_xParticleZ"															(ByVal particle As Integer) As Single
  Declare Sub		 xParticleVeclocity							Alias "_xParticleVeclocity"												(ByVal particle As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single)
  Declare Function xParticleVX									Alias "_xParticleVX"															(ByVal particle As Integer) As Single
  Declare Function xParticleVY									Alias "_xParticleVY"															(ByVal particle As Integer) As Single
  Declare Function xParticleVZ									Alias "_xParticleVZ"															(ByVal particle As Integer) As Single
  Declare Sub		 xParticleRotation							Alias "_xParticleRotation"													(ByVal particle As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single)
  Declare Function xParticlePitch								Alias "_xParticlePitch"														(ByVal particle As Integer) As Single
  Declare Function xParticleYaw									Alias "_xParticleYaw"														(ByVal particle As Integer) As Single
  Declare Function xParticleRoll									Alias "_xParticleRoll"														(ByVal particle As Integer) As Single
  Declare Sub		 xParticleTorque								Alias "_xParticleTorque"													(ByVal particle As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single)
  Declare Function xParticleTPitch								Alias "_xParticleTPitch"													(ByVal particle As Integer) As Single
  Declare Function xParticleTYaw									Alias "_xParticleTYaw"														(ByVal particle As Integer) As Single
  Declare Function xParticleTRoll								Alias "_xParticleTRoll"														(ByVal particle As Integer) As Single
  Declare Sub		 xParticleSetAlpha							Alias "_xParticleSetAlpha"													(ByVal particle As Integer, ByVal alpha2 As Single)
  Declare Function xParticleGetAlpha							Alias "_xParticleGetAlpha"													(ByVal particle As Integer) As Single
  Declare Sub		 xParticleColor								Alias "_xParticleColor"														(ByVal particle As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single)
  Declare Function xParticleRed									Alias "_xParticleRed"														(ByVal particle As Integer) As Single
  Declare Function xParticleGreen								Alias "_xParticleGreen"														(ByVal particle As Integer) As Single
  Declare Function xParticleBlue									Alias "_xParticleBlue"														(ByVal particle As Integer) As Single
  Declare Sub		 xParticleScale								Alias "_xParticleScale"														(ByVal particle As Integer, ByVal x As Single, ByVal y As Single)
  Declare Function xParticleSX									Alias "_xParticleSX"															(ByVal particle As Integer) As Single
  Declare Function xParticleSY									Alias "_xParticleSY"															(ByVal particle As Integer) As Single
  Declare Sub		 xParticleScaleSpeed							Alias "_xParticleScaleSpeed"												(ByVal particle As Integer, ByVal x As Single, ByVal y As Single)
  Declare Function xParticleScaleSpeedX						Alias "_xParticleScaleSpeedX"												(ByVal particle As Integer) As Single
  Declare Function xParticleScaleSpeedY						Alias "_xParticleScaleSpeedY"												(ByVal particle As Integer) As Single
  Declare Sub		 xEntityAddDummyShape						Alias "_xEntityAddDummyShape"												(ByVal entity As Integer)
  Declare Sub		 xEntityAddBoxShape							Alias "_xEntityAddBoxShape"												(ByVal entity As Integer, ByVal mass As Single, ByVal width_ As Single = 0.0, ByVal height As Single = 0.0, ByVal depth As Single = 0.0)
  Declare Sub		 xEntityAddSphereShape						Alias "_xEntityAddSphereShape"											(ByVal entity As Integer, ByVal mass As Single, ByVal radius As Single = 0.0)
  Declare Sub		 xEntityAddCapsuleShape						Alias "_xEntityAddCapsuleShape"											(ByVal entity As Integer, ByVal mass As Single, ByVal radius As Single = 0.0, ByVal height As Single = 0.0)
  Declare Sub		 xEntityAddConeShape							Alias "_xEntityAddConeShape"												(ByVal entity As Integer, ByVal mass As Single, ByVal radius As Single = 0.0, ByVal height As Single = 0.0)
  Declare Sub		 xEntityAddCylinderShape					Alias "_xEntityAddCylinderShape"											(ByVal entity As Integer, ByVal mass As Single, ByVal width_ As Single = 0.0, ByVal height As Single = 0.0, ByVal depth As Single = 0.0)
  Declare Sub		 xEntityAddTriMeshShape						Alias "_xEntityAddTriMeshShape"											(ByVal entity As Integer)
  Declare Sub		 xEntityAddTriMeshShapeProxy				Alias "_xEntityAddTriMeshShapeProxy"									(ByVal entity As Integer, ByVal proxy As Integer)
  Declare Sub		 xEntityAddConvexShape						Alias "_xEntityAddConvexShape"											(ByVal entity As Integer, ByVal mass  As Single)
  Declare Sub		 xEntityAddConvexShapeProxy				Alias "_xEntityAddConvexShapeProxy"										(ByVal entity As Integer, ByVal proxy As Integer, ByVal mass As Single)
  Declare Sub		 xEntityAddConcaveShape						Alias "_xEntityAddConcaveShape"											(ByVal entity As Integer, ByVal mass  As Single)
  Declare Sub		 xEntityAddConcaveShapeProxy				Alias "_xEntityAddConcaveShapeProxy"									(ByVal entity As Integer, ByVal proxy As Integer, ByVal mass As Single)
  Declare Sub		 xEntityAddTerrainShape						Alias "_xEntityAddTerrainShape"											(ByVal entity As Integer)
  Declare Sub		 xEntityAttachBody							Alias "_xEntityAttachBody"													(ByVal entity As Integer, ByVal body As Integer)
  Declare Function xEntityDetachBody							Alias "_xEntityDetachBody"													(ByVal entity As Integer) As Integer
  Declare Sub		 xFreeEntityBody								Alias "_xFreeEntityBody"													(ByVal entity As Integer)
  Declare Sub		 xEntityAddCompoundShape					Alias "_xEntityAddCompoundShape"											(ByVal entity As Integer, ByVal mass	As Single)
  Declare Function xEntityCompoundAddBox						Alias "_xEntityCompoundAddBox"											(ByVal entity As Integer, ByVal width_ As Single, ByVal height As Single, ByVal depth As Single) As Integer
  Declare Function xEntityCompoundAddSphere					Alias "_xEntityCompoundAddSphere"										(ByVal entity As Integer, ByVal radius As Single) As Integer
  Declare Function xEntityCompoundAddCapsule					Alias "_xEntityCompoundAddCapsule"										(ByVal entity As Integer, ByVal radius As Single, ByVal height As Single) As Integer
  Declare Function xEntityCompoundAddCone						Alias "_xEntityCompoundAddCone"											(ByVal entity As Integer, ByVal radius As Single, ByVal height As Single) As Integer
  Declare Function xEntityCompoundAddCylinder				Alias "_xEntityCompoundAddCylinder"										(ByVal entity As Integer, ByVal radius As Single, ByVal height As Single) As Integer
  Declare Function xEntityCompoundCountChildren				Alias "_xEntityCompoundCountChildren"									(ByVal entity As Integer) As Integer
  Declare Sub		 xEntityCompoundRemoveChild				Alias "_xEntityCompoundRemoveChild"										(ByVal entity As Integer, ByVal index As Integer)
  Declare Sub		 xEntityCompoundChildSetPosition			Alias "_xEntityCompoundChildSetPosition"								(ByVal entity As Integer, ByVal index As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single)
  Declare Function xEntityCompoundChildGetX					Alias "_xEntityCompoundChildGetX"										(ByVal entity As Integer, ByVal index As Integer) As Single
  Declare Function xEntityCompoundChildGetY					Alias "_xEntityCompoundChildGetY"										(ByVal entity As Integer, ByVal index As Integer) As Single
  Declare Function xEntityCompoundChildGetZ					Alias "_xEntityCompoundChildGetZ"										(ByVal entity As Integer, ByVal index As Integer) As Single
  Declare Sub		 xEntityCompoundChildSetRotation			Alias "_xEntityCompoundChildSetRotation"								(ByVal entity As Integer, ByVal index As Integer, ByVal pitch As Single, ByVal yaw As Single, ByVal roll As Single)
  Declare Function xEntityCompoundChildGetPitch				Alias "_xEntityCompoundChildGetPitch"									(ByVal entity As Integer, ByVal index As Integer) As Single
  Declare Function xEntityCompoundChildGetYaw				Alias "_xEntityCompoundChildGetYaw"										(ByVal entity As Integer, ByVal index As Integer) As Single
  Declare Function xEntityCompoundChildGetRoll				Alias "_xEntityCompoundChildGetRoll"									(ByVal entity As Integer, ByVal index As Integer) As Single
  Declare Function xCreateHingeJoint							Alias "_xCreateHingeJoint"													(ByVal firstBody As Integer, ByVal secondBody As Integer, ByVal pivotX As Single, ByVal pivotY As Single, ByVal pivotZ As Single, ByVal axisX As Single, ByVal axisY As Single, ByVal axisZ As Single, ByVal isGlobal As Integer = 0) As Integer
  Declare Function xCreateBallJoint								Alias "_xCreateBallJoint"													(ByVal firstBody As Integer, ByVal secondBody As Integer, ByVal pivotX As Single, ByVal pivotY As Single, ByVal pivotZ As Single, ByVal isGlobal As Integer = 0) As Integer
  Declare Function xCreateD6Joint								Alias "_xCreateD6Joint"														(ByVal firstBody As Integer, ByVal secondBody As Integer, ByVal pivot1X As Single, ByVal pivot1Y As Single, ByVal pivot1Z As Single, ByVal pivot2X As Single, ByVal pivot2Y As Single, ByVal pivot2Z As Single, ByVal isGlobal1 As Integer = 0, ByVal isGlobal2 As Integer = 0) As Integer
  Declare Function xCreateD6SpringJoint						Alias "_xCreateD6SpringJoint"												(ByVal firstBody As Integer, ByVal secondBody As Integer, ByVal pivot1X As Single, ByVal pivot1Y As Single, ByVal pivot1Z As Single, ByVal pivot2X As Single, ByVal pivot2Y As Single, ByVal pivot2Z As Single, ByVal isGlobal1 As Integer = 0, ByVal isGlobal2 As Integer = 0) As Integer
  Declare Function xJointHingeGetAngle							Alias "_xJointHingeGetAngle"												(ByVal joint As Integer) As Single
  Declare Function xJointD6GetPitchAngle						Alias "_xJointD6GetPitchAngle"											(ByVal joint As Integer) As Single
  Declare Function xJointD6GetYawAngle							Alias "_xJointD6GetYawAngle"												(ByVal joint As Integer) As Single
  Declare Function xJointD6GetRollAngle						Alias "_xJointD6GetRollAngle"												(ByVal joint As Integer) As Single
  Declare Function xJointD6GetAngle								Alias "_xJointD6GetAngle"													(ByVal joint As Integer, ByVal axis	 As Integer = 0) As Single
  Declare Sub		 xJointDisableCollisions					Alias "_xJointDisableCollisions"											(ByVal joint As Integer, ByVal state As Integer)
  Declare Sub		 xJointEnable									Alias "_xJointEnable"														(ByVal joint As Integer, ByVal state As Integer)
  Declare Function xJointIsEnabled								Alias "_xJointIsEnabled"													(ByVal joint As Integer) As Integer
  Declare Function xJointGetImpulse								Alias "_xJointGetImpulse"													(ByVal joint As Integer) As Single
  Declare Sub		 xFreeJoint										Alias "_xFreeJoint"															(ByVal joint As Integer)
  Declare Sub		 xJointBallSetPivot							Alias "_xJointBallSetPivot"												(ByVal joint As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal isGlobal As Integer = 0)
  Declare Function xJointBallGetPivotX							Alias "_xJointBallGetPivotX"												(ByVal joint As Integer, ByVal isGlobal As Integer = 0) As Single
  Declare Function xJointBallGetPivotY							Alias "_xJointBallGetPivotY"												(ByVal joint As Integer, ByVal isGlobal As Integer = 0) As Single
  Declare Function xJointBallGetPivotZ							Alias "_xJointBallGetPivotZ"												(ByVal joint As Integer, ByVal isGlobal As Integer = 0) As Single
  Declare Sub		 xJointD6SetLimits							Alias "_xJointD6SetLimits"													(ByVal joint As Integer, ByVal axis As Integer, ByVal lower As Single, ByVal upper As Single)
  Declare Sub		 xJointD6SetLowerLinearLimits				Alias "_xJointD6SetLowerLinearLimits"									(ByVal joint As Integer, ByVal lowerX As Single, ByVal lowerY As Single, ByVal lowerZ As Single)
  Declare Sub		 xJointD6SetUpperLinearLimits				Alias "_xJointD6SetUpperLinearLimits"									(ByVal joint As Integer, ByVal upperX As Single, ByVal upperY As Single, ByVal upperZ As Single)
  Declare Sub		 xJointD6SetLowerAngularLimits			Alias "_xJointD6SetLowerAngularLimits"									(ByVal joint As Integer, ByVal lowerX As Single, ByVal lowerY As Single, ByVal lowerZ As Single)
  Declare Sub		 xJointD6SetUpperAngularLimits			Alias "_xJointD6SetUpperAngularLimits"									(ByVal joint As Integer, ByVal upperX As Single, ByVal upperY As Single, ByVal upperZ As Single)
  Declare Sub		 xJointD6SetLinearLimits					Alias "_xJointD6SetLinearLimits"											(ByVal joint As Integer, ByVal lowerX As Single, ByVal lowerY As Single, ByVal lowerZ As Single, ByVal upperX As Single, ByVal upperY As Single, ByVal upperZ As Single)
  Declare Sub		 xJointD6SetAngularLimits					Alias "_xJointD6SetAngularLimits"										(ByVal joint As Integer, ByVal lowerX As Single, ByVal lowerY As Single, ByVal lowerZ As Single, ByVal upperX As Single, ByVal upperY As Single, ByVal upperZ As Single)
  Declare Function xJointD6GetLinearLowerX					Alias "_xJointD6GetLinearLowerX"											(ByVal joint As Integer) As Single
  Declare Function xJointD6GetLinearLowerY					Alias "_xJointD6GetLinearLowerY"											(ByVal joint As Integer) As Single
  Declare Function xJointD6GetLinearLowerZ					Alias "_xJointD6GetLinearLowerZ"											(ByVal joint As Integer) As Single
  Declare Function xJointD6GetLinearUpperX					Alias "_xJointD6GetLinearUpperX"											(ByVal joint As Integer) As Single
  Declare Function xJointD6GetLinearUpperY					Alias "_xJointD6GetLinearUpperY"											(ByVal joint As Integer) As Single
  Declare Function xJointD6GetLinearUpperZ					Alias "_xJointD6GetLinearUpperZ"											(ByVal joint As Integer) As Single
  Declare Function xJointD6GetAngularLowerX					Alias "_xJointD6GetAngularLowerX"										(ByVal joint As Integer) As Single
  Declare Function xJointD6GetAngularLowerY					Alias "_xJointD6GetAngularLowerY"										(ByVal joint As Integer) As Single
  Declare Function xJointD6GetAngularLowerZ					Alias "_xJointD6GetAngularLowerZ"										(ByVal joint As Integer) As Single
  Declare Function xJointD6GetAngularUpperX					Alias "_xJointD6GetAngularUpperX"										(ByVal joint As Integer) As Single
  Declare Function xJointD6GetAngularUpperY					Alias "_xJointD6GetAngularUpperY"										(ByVal joint As Integer) As Single
  Declare Function xJointD6GetAngularUpperZ					Alias "_xJointD6GetAngularUpperZ"										(ByVal joint As Integer) As Single
  Declare Sub		 xJointD6SpringSetParam						Alias "_xJointD6SpringSetParam"											(ByVal joint As Integer, ByVal index As Integer, ByVal enabled As Integer, ByVal damping As Single = 1.0, ByVal stiffness As Single = 1.0)
  Declare Sub		 xJointHingeSetAxis							Alias "_xJointHingeSetAxis"												(ByVal joint As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single)
  Declare Sub		 xJointHingeSetLimits						Alias "_xJointHingeSetLimits"												(ByVal joint As Integer, ByVal lowerLimit As Single, ByVal upperLimit As Single, ByVal softness As Single = 0.9, ByVal biasFactor As Single = 0.3, ByVal relaxationFactor As Single = 1.0)
  Declare Function xJointHingeGetLowerLimit					Alias "_xJointHingeGetLowerLimit"										(ByVal joint As Integer) As Single
  Declare Function xJointHingeGetUpperLimit					Alias "_xJointHingeGetUpperLimit"										(ByVal joint As Integer) As Single
  Declare Sub		 xJointEnableMotor							Alias "_xJointEnableMotor"													(ByVal joint As Integer, ByVal enabled As Integer, ByVal targetVelocity As Single, ByVal maxForce As Single, ByVal index As Integer = 0)
  Declare Sub		 xJointHingeSetMotorTarget					Alias "_xJointHingeSetMotorTarget"										(ByVal joint As Integer, ByVal targetAngle As Single, ByVal deltaTime As Single)
  Declare Function xJointGetEntityA								Alias "_xJointGetEntityA"													(ByVal joint As Integer) As Integer
  Declare Function xJointGetEntityB								Alias "_xJointGetEntityB"													(ByVal joint As Integer) As Integer
  Declare Sub		 xEntityApplyCentralForce					Alias "_xEntityApplyCentralForce"										(ByVal entity As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal isGlobal As Integer = 1)
  Declare Sub		 xEntityApplyCentralImpulse				Alias "_xEntityApplyCentralImpulse"										(ByVal entity As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal isGlobal As Integer = 1)
  Declare Sub		 xEntityApplyTorque							Alias "_xEntityApplyTorque"												(ByVal entity As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal isGlobal As Integer = 1)
  Declare Sub		 xEntityApplyTorqueImpulse					Alias "_xEntityApplyTorqueImpulse"										(ByVal entity As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal isGlobal As Integer = 1)
  Declare Sub		 xEntityApplyForce							Alias "_xEntityApplyForce"													(ByVal entity As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal pointx As Single, ByVal pointy As Single, ByVal pointz As Single, ByVal isGlobal As Integer = 1, ByVal globalPoint As Integer = 1)
  Declare Sub		 xEntityApplyImpulse							Alias "_xEntityApplyImpulse"												(ByVal entity As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal pointx As Single, ByVal pointy As Single, ByVal pointz As Single, ByVal isGlobal As Integer = 1, ByVal globalPoint As Integer = 1)
  Declare Sub		 xEntityReleaseForces						Alias "_xEntityReleaseForces"												(ByVal entity As Integer)
  Declare Sub		 xWorldSetGravity								Alias "_xWorldSetGravity"													(ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal mundo As Integer = 0)
  Declare Function xWorldGetGravityX							Alias "_xWorldGetGravityX"													(ByVal mundo As Integer = 0) As Single
  Declare Function xWorldGetGravityY							Alias "_xWorldGetGravityY"													(ByVal mundo As Integer = 0) As Single
  Declare Function xWorldGetGravityZ							Alias "_xWorldGetGravityZ"													(ByVal mundo As Integer = 0) As Single
  Declare Sub		 xEntitySetGravity							Alias "_xEntitySetGravity"													(ByVal entity As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single)
  Declare Function xEntityGetGravityX							Alias "_xEntityGetGravityX"												(ByVal entity As Integer) As Single
  Declare Function xEntityGetGravityY							Alias "_xEntityGetGravityY"												(ByVal entity As Integer) As Single
  Declare Function xEntityGetGravityZ							Alias "_xEntityGetGravityZ"												(ByVal entity As Integer) As Single
  Declare Sub		 xEntitySetLinearVelocity					Alias "_xEntitySetLinearVelocity"										(ByVal entity As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal isGlobal As Integer = 1)
  Declare Function xEntityGetLinearVelocityX					Alias "_xEntityGetLinearVelocityX"										(ByVal entity As Integer, ByVal isGlobal As Integer = 1) As Single
  Declare Function xEntityGetLinearVelocityY					Alias "_xEntityGetLinearVelocityY"										(ByVal entity As Integer, ByVal isGlobal As Integer = 1) As Single
  Declare Function xEntityGetLinearVelocityZ					Alias "_xEntityGetLinearVelocityZ"										(ByVal entity As Integer, ByVal isGlobal As Integer = 1) As Single
  Declare Sub		 xEntitySetAngularVelocity					Alias "_xEntitySetAngularVelocity"										(ByVal entity As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal isGlobal As Integer = 1)
  Declare Function xEntityGetAngularVelocityX				Alias "_xEntityGetAngularVelocityX"										(ByVal entity As Integer, ByVal isGlobal As Integer = 1) As Single
  Declare Function xEntityGetAngularVelocityY				Alias "_xEntityGetAngularVelocityY"										(ByVal entity As Integer, ByVal isGlobal As Integer = 1) As Single
  Declare Function xEntityGetAngularVelocityZ				Alias "_xEntityGetAngularVelocityZ"										(ByVal entity As Integer, ByVal isGlobal As Integer = 1) As Single
  Declare Sub		 xEntitySetDamping							Alias "_xEntitySetDamping"													(ByVal entity As Integer, ByVal linear As Single, ByVal angular As Single)
  Declare Function xEntityGetLinearDamping					Alias "_xEntityGetLinearDamping"											(ByVal entity As Integer) As Single
  Declare Function xEntityGetAngularDamping					Alias "_xEntityGetAngularDamping"										(ByVal entity As Integer) As Single
  Declare Sub		 xEntitySetFriction							Alias "_xEntitySetFriction"												(ByVal entity As Integer, ByVal friction As Single)
  Declare Function xEntityGetFriction							Alias "_xEntityGetFriction"												(ByVal entity As Integer) As Single
  Declare Sub		 xEntitySetAnisotropicFriction			Alias "_xEntitySetAnisotropicFriction"									(ByVal entity As Integer, ByVal fx As Single, ByVal fy As Single, ByVal fz As Single)
  Declare Function xEntityGetAnisotropicFrictionX			Alias "_xEntityGetAnisotropicFrictionX"								(ByVal entity As Integer) As Single
  Declare Function xEntityGetAnisotropicFrictionY			Alias "_xEntityGetAnisotropicFrictionY"								(ByVal entity As Integer) As Single
  Declare Function xEntityGetAnisotropicFrictionZ			Alias "_xEntityGetAnisotropicFrictionZ"								(ByVal entity As Integer) As Single
  Declare Sub		 xEntitySetLinearFactor						Alias "_xEntitySetLinearFactor"											(ByVal entity As Integer, ByVal x  As Single, ByVal y	 As Single, ByVal z	As Single)
  Declare Function xEntityGetLinearFactorX					Alias "_xEntityGetLinearFactorX"											(ByVal entity As Integer) As Single
  Declare Function xEntityGetLinearFactorY					Alias "_xEntityGetLinearFactorY"											(ByVal entity As Integer) As Single
  Declare Function xEntityGetLinearFactorZ					Alias "_xEntityGetLinearFactorZ"											(ByVal entity As Integer) As Single
  Declare Sub		 xEntitySetAngularFactor					Alias "_xEntitySetAngularFactor"											(ByVal entity As Integer, ByVal x  As Single, ByVal y	 As Single, ByVal z	As Single)
  Declare Function xEntityGetAngularFactorX					Alias "_xEntityGetAngularFactorX"										(ByVal entity As Integer) As Single
  Declare Function xEntityGetAngularFactorY					Alias "_xEntityGetAngularFactorY"										(ByVal entity As Integer) As Single
  Declare Function xEntityGetAngularFactorZ					Alias "_xEntityGetAngularFactorZ"										(ByVal entity As Integer) As Single
  Declare Sub		 xEntitySetRestitution						Alias "_xEntitySetRestitution"											(ByVal entity As Integer, ByVal restitution As Single)
  Declare Function xEntityGetRestitution						Alias "_xEntityGetRestitution"											(ByVal entity As Integer) As Single
  Declare Sub		 xEntitySetMass								Alias "_xEntitySetMass"														(ByVal entity As Integer, ByVal mass As Single)
  Declare Function xEntityGetMass								Alias "_xEntityGetMass"														(ByVal entity As Integer) As Single
  Declare Function xEntityCountContacts						Alias "_xEntityCountContacts"												(ByVal entity As Integer) As Integer
  Declare Function xEntityGetContactX							Alias "_xEntityGetContactX"												(ByVal entity As Integer, ByVal index As Integer) As Single
  Declare Function xEntityGetContactY							Alias "_xEntityGetContactY"												(ByVal entity As Integer, ByVal index As Integer) As Single
  Declare Function xEntityGetContactZ							Alias "_xEntityGetContactZ"												(ByVal entity As Integer, ByVal index As Integer) As Single
  Declare Function xEntityGetContactNX							Alias "_xEntityGetContactNX"												(ByVal entity As Integer, ByVal index As Integer) As Single
  Declare Function xEntityGetContactNY							Alias "_xEntityGetContactNY"												(ByVal entity As Integer, ByVal index As Integer) As Single
  Declare Function xEntityGetContactNZ							Alias "_xEntityGetContactNZ"												(ByVal entity As Integer, ByVal index As Integer) As Single
  Declare Function xEntityGetContactDistance					Alias "_xEntityGetContactDistance"										(ByVal entity As Integer, ByVal index As Integer) As Single
  Declare Function xEntityGetContact							Alias "_xEntityGetContact"													(ByVal entity As Integer, ByVal index As Integer) As Integer
  Declare Function xEntityGetContactImpulse					Alias "_xEntityGetContactImpulse"										(ByVal entity As Integer, ByVal index As Integer) As Single
  Declare Sub		 xEntitySetCollisionGroup					Alias "_xEntitySetCollisionGroup"										(ByVal entity As Integer, ByVal group As Integer)
  Declare Function xEntityGetCollisionGroup					Alias "_xEntityGetCollisionGroup"										(ByVal entity As Integer) As Integer
  Declare Sub		 xEntitySetContactGroup						Alias "_xEntitySetContactGroup"											(ByVal entity As Integer, ByVal group As Integer)
  Declare Function xEntityGetContactGroup						Alias "_xEntityGetContactGroup"											(ByVal entity As Integer) As Integer
  Declare Sub		 xEntitySetRaycastGroup						Alias "_xEntitySetRaycastGroup"											(ByVal entity As Integer, ByVal group As Integer)
  Declare Function xEntityGetRaycastGroup						Alias "_xEntityGetRaycastGroup"											(ByVal entity As Integer) As Integer
  Declare Sub		 xPhysicsSetCollisionFilter				Alias "_xPhysicsSetCollisionFilter"										(ByVal group0 As Integer, ByVal group1 As Integer, ByVal state As Integer)
  Declare Function xPhysicsGetCollisionFilter				Alias "_xPhysicsGetCollisionFilter"										(ByVal group0 As Integer, ByVal group1 As Integer) As Integer
  Declare Sub		 xPhysicsSetContactFilter					Alias "_xPhysicsSetContactFilter"										(ByVal group0 As Integer, ByVal group1 As Integer, ByVal state As Integer)
  Declare Function xPhysicsGetContactFilter					Alias "_xPhysicsGetContactFilter"										(ByVal group0 As Integer, ByVal group1 As Integer) As Integer
  Declare Sub		 xPhysicsSetRaycastFilter					Alias "_xPhysicsSetRaycastFilter"										(ByVal rayGroup As Integer, ByVal bodyGroup As Integer, ByVal state As Integer)
  Declare Function xPhysicsGetRaycastFilter					Alias "_xPhysicsGetRaycastFilter"										(ByVal rayGroup As Integer, ByVal bodyGroup As Integer) As Integer
  Declare Function xEntityIsSleeping							Alias "_xEntityIsSleeping"													(ByVal entity As Integer) As Integer
  Declare Sub		 xEntityDisableSleeping						Alias "_xEntityDisableSleeping"											(ByVal entity As Integer, ByVal state As Integer = 1)
  Declare Sub		 xEntityWakeUp									Alias "_xEntityWakeUp"														(ByVal entity As Integer)
  Declare Sub		 xEntitySleep									Alias "_xEntitySleep"														(ByVal entity As Integer)
  Declare Sub		 xEntitySetSleepingThresholds				Alias "_xEntitySetSleepingThresholds"									(ByVal entity As Integer, ByVal linearThreshold As Single, ByVal angularThreshold As Single)
  Declare Function xEntityGetLinearSleepingThreshold		Alias "_xEntityGetLinearSleepingThreshold"							(ByVal entity As Integer) As Single
  Declare Function xEntityGetAngularSleepingThreshold		Alias "_xEntityGetAngularSleepingThreshold"							(ByVal entity As Integer) As Single
  Declare Sub		 xPhysicsRayCast								Alias "_xPhysicsRayCast"													(ByVal fromX As Single, ByVal fromY As Single, ByVal fromZ As Single, ByVal toX As Single, ByVal toY As Single, ByVal toZ As Single, ByVal rcType As Integer = 0, ByVal rayGroup As Integer = 0)
  Declare Function xPhysicsGetHitEntity						Alias "_xPhysicsGetHitEntity"												(ByVal index As Integer = 0) As Integer
  Declare Function xPhysicsGetHitPointX						Alias "_xPhysicsGetHitPointX"												(ByVal index As Integer = 0) As Single
  Declare Function xPhysicsGetHitPointY						Alias "_xPhysicsGetHitPointY"												(ByVal index As Integer = 0) As Single
  Declare Function xPhysicsGetHitPointZ						Alias "_xPhysicsGetHitPointZ"												(ByVal index As Integer = 0) As Single
  Declare Function xPhysicsGetHitNormalX						Alias "_xPhysicsGetHitNormalX"											(ByVal index As Integer = 0) As Single
  Declare Function xPhysicsGetHitNormalY						Alias "_xPhysicsGetHitNormalY"											(ByVal index As Integer = 0) As Single
  Declare Function xPhysicsGetHitNormalZ						Alias "_xPhysicsGetHitNormalZ"											(ByVal index As Integer = 0) As Single
  Declare Function xPhysicsGetHitDistance						Alias "_xPhysicsGetHitDistance"											(ByVal index As Integer = 0) As Single
  Declare Function xPhysicsCountHits							Alias "_xPhysicsCountHits"													() As Integer
  Declare Sub		 xEntityBodyLocalPosition					Alias "_xEntityBodyLocalPosition"										(ByVal entity As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single)
  Declare Sub		 xEntityBodyLocalRotation					Alias "_xEntityBodyLocalRotation"										(ByVal entity As Integer, ByVal pitch As Single, ByVal yaw As Single, ByVal roll As Single)
  Declare Sub		 xEntityBodyLocalScale						Alias "_xEntityBodyLocalScale"											(ByVal entity As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single)
  Declare Sub		 xWorldSetFrequency							Alias "_xWorldSetFrequency"												(ByVal frequency As Single, ByVal mundo As Integer = 0)
  Declare Sub		 xEntityMakeKinematic						Alias "_xEntityMakeKinematic"												(ByVal entity As Integer, ByVal state As Integer)
  Declare Function xEntityIsKinematic							Alias "_xEntityIsKinematic"												(ByVal entity As Integer) As Integer
  Declare Sub		 xPhysicsDebugRender							Alias "_xPhysicsDebugRender"												(ByVal state As Integer)
  Declare Sub		 xEntityDisableSimulation					Alias "_xEntityDisableSimulation"										(ByVal entity As Integer, ByVal state As Integer)
  Declare Function xEntityHasBody								Alias "_xEntityHasBody"														(ByVal entity As Integer) As Integer
  Declare Sub		 xEntityCreateVehicle						Alias "_xEntityCreateVehicle"												(ByVal chassisEntity As Integer)
  Declare Sub		 xEntityFreeVehicle							Alias "_xEntityFreeVehicle"												(ByVal chassisEntity As Integer)
  Declare Function xEntityCountWheels							Alias "_xEntityCountWheels"												(ByVal chassisEntity As Integer) As Integer
  Declare Function xEntityAddWheel								Alias "_xEntityAddWheel"													(ByVal chassisEntity As Integer, ByVal wheelEntity As Integer) As Integer
  Declare Sub		 xEntityWheelSetRadius						Alias "_xEntityWheelSetRadius"											(ByVal chassisEntity As Integer, ByVal index As Integer, ByVal radius As Single)
  Declare Sub		 xEntityWheelSetAxle							Alias "_xEntityWheelSetAxle"												(ByVal chassisEntity As Integer, ByVal index As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single)
  Declare Sub		 xEntityWheelSetRay							Alias "_xEntityWheelSetRay"												(ByVal chassisEntity As Integer, ByVal index As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single)
  Declare Sub		 xEntityWheelSetSuspensionLength			Alias "_xEntityWheelSetSuspensionLength"								(ByVal chassisEntity As Integer, ByVal index As Integer, ByVal length As Single)
  Declare Sub		 xEntityWheelSetBrake						Alias "_xEntityWheelSetBrake"												(ByVal chassisEntity As Integer, ByVal index As Integer, ByVal brake As Single)
  Declare Sub		 xEntityWheelSetMaxSuspensionForce		Alias "_xEntityWheelSetMaxSuspensionForce"							(ByVal chassisEntity As Integer, ByVal index As Integer, ByVal force As Single)
  Declare Sub		 xEntityWheelSetMaxSuspensionTravel		Alias "_xEntityWheelSetMaxSuspensionTravel"							(ByVal chassisEntity As Integer, ByVal index As Integer, ByVal travel As Single)
  Declare Sub		 xEntityWheelSetSuspensionStiffness		Alias "_xEntityWheelSetSuspensionStiffness"							(ByVal chassisEntity As Integer, ByVal index As Integer, ByVal stiffness As Single)
  Declare Sub		 xEntityWheelSetSuspensionDamping		Alias "_xEntityWheelSetSuspensionDamping"								(ByVal chassisEntity As Integer, ByVal index As Integer, ByVal damping As Single)
  Declare Sub		 xEntityWheelSetSuspensionCompression	Alias "_xEntityWheelSetSuspensionCompression"						(ByVal chassisEntity As Integer, ByVal index As Integer, ByVal compression As Single)
  Declare Sub		 xEntityWheelSetFriction					Alias "_xEntityWheelSetFriction"											(ByVal chassisEntity As Integer, ByVal index As Integer, ByVal friction As Single)
  Declare Sub		 xEntityWheelSetEngineForce				Alias "_xEntityWheelSetEngineForce"										(ByVal chassisEntity As Integer, ByVal index As Integer, ByVal force As Single)
  Declare Sub		 xEntityWheelSetRollInfluence				Alias "_xEntityWheelSetRollInfluence"									(ByVal chassisEntity As Integer, ByVal index As Integer, ByVal roll As Single)
  Declare Sub		 xEntityWheelSetRotation					Alias "_xEntityWheelSetRotation"											(ByVal chassisEntity As Integer, ByVal index As Integer, ByVal rotation As Single)
  Declare Sub		 xEntityWheelSetSteering					Alias "_xEntityWheelSetSteering"											(ByVal chassisEntity As Integer, ByVal index As Integer, ByVal steering As Single)
  Declare Sub		 xEntityWheelSetConnectionPoint			Alias "_xEntityWheelSetConnectionPoint"								(ByVal chassisEntity As Integer, ByVal index As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal isGlobal As Integer = 0)
  Declare Function xEntityWheelGetSuspensionLength			Alias "_xEntityWheelGetSuspensionLength"								(ByVal chassisEntity As Integer, ByVal index As Integer) As Single
  Declare Function xEntityWheelGetPitch						Alias "_xEntityWheelGetPitch"												(ByVal chassisEntity As Integer, ByVal index As Integer) As Single
  Declare Function xEntityWheelGetYaw							Alias "_xEntityWheelGetYaw"												(ByVal chassisEntity As Integer, ByVal index As Integer) As Single
  Declare Function xEntityWheelGetRoll							Alias "_xEntityWheelGetRoll"												(ByVal chassisEntity As Integer, ByVal index As Integer) As Single
  Declare Function xEntityWheelGetContactEntity				Alias "_xEntityWheelGetContactEntity"									(ByVal chassisEntity As Integer, ByVal index As Integer) As Integer
  Declare Function xLoadPostEffect								Alias "_xLoadPostEffect"													(ByVal path As Zstring ptr) As Integer
  Declare Sub		 xFreePostEffect								Alias "_xFreePostEffect"													(ByVal postEffect As Integer)
  Declare Sub		 xSetPostEffect								Alias "_xSetPostEffect"														(ByVal index As Integer, ByVal postEffect As Integer, ByVal technique As ZString Ptr = StrPtr("MainTechnique"))
  Declare Sub		 xRenderPostEffects							Alias "_xRenderPostEffects"												()
  Declare Sub		 xSetPostEffectInt							Alias "_xSetPostEffectInt"													(ByVal postEffect As Integer, ByVal nombre As Zstring ptr, ByVal value As Integer)
  Declare Sub		 xSetPostEffectFloat							Alias "_xSetPostEffectFloat"												(ByVal postEffect As Integer, ByVal nombre As Zstring ptr, ByVal value As Single)
  Declare Sub		 xSetPostEffectBool							Alias "_xSetPostEffectBool"												(ByVal postEffect As Integer, ByVal nombre As Zstring ptr, ByVal value As Integer)
  Declare Sub		 xSetPostEffectVector						Alias "_xSetPostEffectVector"												(ByVal postEffect As Integer, ByVal nombre As Zstring ptr, ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal w As Single = 1.0)
  Declare Sub		 xSetPostEffectTexture						Alias "_xSetPostEffectTexture"											(ByVal postEffect As Integer, ByVal nombre As Zstring ptr, ByVal texture As Integer, ByVal frame As Integer = 0)
  Declare Sub		 xDeletePostEffectConstant					Alias "_xDeletePostEffectConstant"										(ByVal postEffect As Integer, ByVal nombre As Zstring ptr)
  Declare Sub		 xClearPostEffectConstants					Alias "_xClearPostEffectConstants"										(ByVal postEffect As Integer)
  Declare Function xCreatePSystem								Alias "_xCreatePSystem"														(ByVal pointSprites As Integer = 0) As Integer
  Declare Function xPSystemType									Alias "_xPSystemType"														(ByVal psystem As Integer) As Integer
  Declare Sub		 xPSystemSetBlend								Alias "_xPSystemSetBlend"													(ByVal psystem As Integer, ByVal mode As Integer)
  Declare Function xPSystemGetBlend								Alias "_xPSystemGetBlend"													(ByVal psystem As Integer) As Integer
  Declare Sub		 xPSystemSetMaxParticles					Alias "_xPSystemSetMaxParticles"											(ByVal psystem As Integer, ByVal maxNumber As Integer)
  Declare Function xPSystemGetMaxParticles					Alias "_xPSystemGetMaxParticles"											(ByVal psystem As Integer) As Integer
  Declare Sub		 xPSystemSetEmitterLifetime				Alias "_xPSystemSetEmitterLifetime"										(ByVal psystem As Integer, ByVal lifetime As Integer)
  Declare Function xPSystemGetEmitterLifetime				Alias "_xPSystemGetEmitterLifetime"										(ByVal psystem As Integer) As Integer
  Declare Sub		 xPSystemSetParticleLifetime				Alias "_xPSystemSetParticleLifetime"									(ByVal psystem As Integer, ByVal lifetime As Integer)
  Declare Function xPSystemGetParticleLifetime				Alias "_xPSystemGetParticleLifetime"									(ByVal psystem As Integer) As Integer
  Declare Sub		 xPSystemSetCreationInterval				Alias "_xPSystemSetCreationInterval"									(ByVal psystem As Integer, ByVal interval As Integer)
  Declare Function xPSystemGetCreationInterval				Alias "_xPSystemGetCreationInterval"									(ByVal psystem As Integer) As Integer
  Declare Sub		 xPSystemSetCreationFrequency				Alias "_xPSystemSetCreationFrequency"									(ByVal psystem As Integer, ByVal frequency As Integer)
  Declare Function xPSystemGetCreationFrequency				Alias "_xPSystemGetCreationFrequency"									(ByVal psystem As Integer) As Integer
  Declare Sub		 xPSystemSetTexture							Alias "_xPSystemSetTexture"												(ByVal psystem As Integer, ByVal texture As Integer, ByVal frames As Integer, ByVal speed As Single)
  Declare Function xPSystemGetTexture							Alias "_xPSystemGetTexture"												(ByVal psystem As Integer) As Integer
  Declare Function xPSystemGetTextureFrames					Alias "_xPSystemGetTextureFrames"										(ByVal psystem As Integer) As Integer
  Declare Function xPSystemGetTextureAnimationSpeed		Alias "_xPSystemGetTextureAnimationSpeed"								(ByVal psystem As Integer) As Integer
  Declare Sub		 xPSystemSetOffset							Alias "_xPSystemSetOffset"													(ByVal psystem As Integer, ByVal minx As Single, ByVal miny As Single, ByVal minz As Single, ByVal maxx As Single, ByVal maxy As Single, ByVal maxz As Single)
  Declare Function xPSystemGetOffsetMinX						Alias "_xPSystemGetOffsetMinX"											(ByVal psystem As Integer) As Single
  Declare Function xPSystemGetOffsetMinY						Alias "_xPSystemGetOffsetMinY"											(ByVal psystem As Integer) As Single
  Declare Function xPSystemGetOffsetMinZ						Alias "_xPSystemGetOffsetMinZ"											(ByVal psystem As Integer) As Single
  Declare Function xPSystemGetOffsetMaxX						Alias "_xPSystemGetOffsetMaxX"											(ByVal psystem As Integer) As Single
  Declare Function xPSystemGetOffsetMaxY						Alias "_xPSystemGetOffsetMaxY"											(ByVal psystem As Integer) As Single
  Declare Function xPSystemGetOffsetMaxZ						Alias "_xPSystemGetOffsetMaxZ"											(ByVal psystem As Integer) As Single
  Declare Sub		 xPSystemSetVelocity							Alias "_xPSystemSetVelocity"												(ByVal psystem As Integer, ByVal minx As Single, ByVal miny As Single, ByVal minz As Single, ByVal maxx As Single, ByVal maxy As Single, ByVal maxz As Single)
  Declare Function xPSystemGetVelocityMinX					Alias "_xPSystemGetVelocityMinX"											(ByVal psystem As Integer) As Single
  Declare Function xPSystemGetVelocityMinY					Alias "_xPSystemGetVelocityMinY"											(ByVal psystem As Integer) As Single
  Declare Function xPSystemGetVelocityMinZ					Alias "_xPSystemGetVelocityMinZ"											(ByVal psystem As Integer) As Single
  Declare Function xPSystemGetVelocityMaxX					Alias "_xPSystemGetVelocityMaxX"											(ByVal psystem As Integer) As Single
  Declare Function xPSystemGetVelocityMaxY					Alias "_xPSystemGetVelocityMaxY"											(ByVal psystem As Integer) As Single
  Declare Function xPSystemGetVelocityMaxZ					Alias "_xPSystemGetVelocityMaxZ"											(ByVal psystem As Integer) As Single
  Declare Sub		 xPSystemEnableFixedQuads					Alias "_xPSystemEnableFixedQuads"										(ByVal psystem As Integer, ByVal state As Integer)
  Declare Function xPSystemFixedQuadsUsed						Alias "_xPSystemFixedQuadsUsed"											(ByVal psystem As Integer) As Integer
  Declare Sub		 xPSystemSetTorque							Alias "_xPSystemSetTorque"													(ByVal psystem As Integer, ByVal minx As Single, ByVal miny As Single, ByVal minz As Single, ByVal maxx As Single, ByVal maxy As Single, ByVal maxz As Single)
  Declare Function xPSystemGetTorqueMinX						Alias "_xPSystemGetTorqueMinX"											(ByVal psystem As Integer) As Single
  Declare Function xPSystemGetTorqueMinY						Alias "_xPSystemGetTorqueMinY"											(ByVal psystem As Integer) As Single
  Declare Function xPSystemGetTorqueMinZ						Alias "_xPSystemGetTorqueMinZ"											(ByVal psystem As Integer) As Single
  Declare Function xPSystemGetTorqueMaxX						Alias "_xPSystemGetTorqueMaxX"											(ByVal psystem As Integer) As Single
  Declare Function xPSystemGetTorqueMaxY						Alias "_xPSystemGetTorqueMaxY"											(ByVal psystem As Integer) As Single
  Declare Function xPSystemGetTorqueMaxZ						Alias "_xPSystemGetTorqueMaxZ"											(ByVal psystem As Integer) As Single
  Declare Sub		 xPSystemSetGravity							Alias "_xPSystemSetGravity"												(ByVal psystem As Integer, ByVal gravity As Single)
  Declare Function xPSystemGetGravity							Alias "_xPSystemGetGravity"												(ByVal psystem As Integer) As Single
  Declare Sub		 xPSystemSetAlpha								Alias "_xPSystemSetAlpha"													(ByVal psystem As Integer, ByVal alpha2 As Single)
  Declare Function xPSystemGetAlpha								Alias "_xPSystemGetAlpha"													(ByVal psystem As Integer) As Single
  Declare Sub		 xPSystemSetFadeSpeed						Alias "_xPSystemSetFadeSpeed"												(ByVal psystem As Integer, ByVal speed As Single)
  Declare Function xPSystemGetFadeSpeed						Alias "_xPSystemGetFadeSpeed"												(ByVal psystem As Integer) As Single
  Declare Sub		 xPSystemSetParticleSize					Alias "_xPSystemSetParticleSize"											(ByVal psystem As Integer, ByVal minx As Single, ByVal miny As Single, ByVal maxx As Single, ByVal maxy As Single)
  Declare Function xPSystemGetSizeMinX							Alias "_xPSystemGetSizeMinX"												(ByVal psystem As Integer) As Single
  Declare Function xPSystemGetSizeMinY							Alias "_xPSystemGetSizeMinY"												(ByVal psystem As Integer) As Single
  Declare Function xPSystemGetSizeMaxX							Alias "_xPSystemGetSizeMaxX"												(ByVal psystem As Integer) As Single
  Declare Function xPSystemGetSizeMaxY							Alias "_xPSystemGetSizeMaxY"												(ByVal psystem As Integer) As Single
  Declare Sub		 xPSystemSetScaleSpeed						Alias "_xPSystemSetScaleSpeed"											(ByVal psystem As Integer, ByVal minx As Single, ByVal miny As Single, ByVal maxx As Single, ByVal maxy As Single)
  Declare Function xPSystemGetScaleSpeedMinX					Alias "_xPSystemGetScaleSpeedMinX"										(ByVal psystem As Integer) As Single
  Declare Function xPSystemGetScaleSpeedMinY					Alias "_xPSystemGetScaleSpeedMinY"										(ByVal psystem As Integer) As Single
  Declare Function xPSystemGetScaleSpeedMaxX					Alias "_xPSystemGetScaleSpeedMaxX"										(ByVal psystem As Integer) As Single
  Declare Function xPSystemGetScaleSpeedMaxY					Alias "_xPSystemGetScaleSpeedMaxY"										(ByVal psystem As Integer) As Single
  Declare Sub		 xPSystemSetAngles							Alias "_xPSystemSetAngles"													(ByVal psystem As Integer, ByVal minx As Single, ByVal miny As Single, ByVal minz As Single, ByVal maxx As Single, ByVal maxy As Single, ByVal maxz As Single)
  Declare Function xPSystemGetAnglesMinX						Alias "_xPSystemGetAnglesMinX"											(ByVal psystem As Integer) As Single
  Declare Function xPSystemGetAnglesMinY						Alias "_xPSystemGetAnglesMinY"											(ByVal psystem As Integer) As Single
  Declare Function xPSystemGetAnglesMinZ						Alias "_xPSystemGetAnglesMinZ"											(ByVal psystem As Integer) As Single
  Declare Function xPSystemGetAnglesMaxX						Alias "_xPSystemGetAnglesMaxX"											(ByVal psystem As Integer) As Single
  Declare Function xPSystemGetAnglesMaxY						Alias "_xPSystemGetAnglesMaxY"											(ByVal psystem As Integer) As Single
  Declare Function xPSystemGetAnglesMaxZ						Alias "_xPSystemGetAnglesMaxZ"											(ByVal psystem As Integer) As Single
  Declare Sub		 xPSystemSetColorMode						Alias "_xPSystemSetColorMode"												(ByVal psystem As Integer, ByVal mode As Integer)
  Declare Function xPSystemGetColorMode						Alias "_xPSystemGetColorMode"												(ByVal psystem As Integer) As Integer
  Declare Sub		 xPSystemSetColors							Alias "_xPSystemSetColors"													(ByVal psystem As Integer, ByVal sred As Single, ByVal sgreen As Single, ByVal sblue As Single, ByVal ered As Single, ByVal egreen As Single, ByVal eblue As Single)
  Declare Function xPSystemGetBeginColorRed					Alias "_xPSystemGetBeginColorRed"										(ByVal psystem As Integer) As Single
  Declare Function xPSystemGetBeginColorGreen				Alias "_xPSystemGetBeginColorGreen"										(ByVal psystem As Integer) As Single
  Declare Function xPSystemGetBeginColorBlue					Alias "_xPSystemGetBeginColorBlue"										(ByVal psystem As Integer) As Single
  Declare Function xPSystemGetEndColorRed						Alias "_xPSystemGetEndColorRed"											(ByVal psystem As Integer) As Single
  Declare Function xPSystemGetEndColorGreen					Alias "_xPSystemGetEndColorGreen"										(ByVal psystem As Integer) As Single
  Declare Function xPSystemGetEndColorBlue					Alias "_xPSystemGetEndColorBlue"											(ByVal psystem As Integer) As Single
  Declare Sub		 xFreePSystem									Alias "_xFreePSystem"														(ByVal psystem As Integer)
  Declare Sub		 xPSystemSetParticleParenting				Alias "_xPSystemSetParticleParenting"									(ByVal psystem As Integer, ByVal mode As Integer)
  Declare Function xPSystemGetParticleParenting				Alias "_xPSystemGetParticleParenting"									(ByVal psystem As Integer) As Integer
  Declare Function xLinePick										Alias "_xLinePick"															(ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal dx As Single, ByVal dy As Single, ByVal dz As Single, ByVal distance As Single = 0.0) As Integer
  Declare Function xEntityPick									Alias "_xEntityPick"															(ByVal entity As Integer, ByVal range As Single = 0.0) As Integer
  Declare Function xCameraPick									Alias "_xCameraPick"															(ByVal camera As Integer, ByVal x As Integer, ByVal y As Integer) As Integer
  Declare Function xPickedNX										Alias "_xPickedNX"															() As Single
  Declare Function xPickedNY										Alias "_xPickedNY"															() As Single
  Declare Function xPickedNZ										Alias "_xPickedNZ"															() As Single
  Declare Function xPickedX										Alias "_xPickedX"																() As Single
  Declare Function xPickedY										Alias "_xPickedY"																() As Single
  Declare Function xPickedZ										Alias "_xPickedZ"																() As Single
  Declare Function xPickedEntity									Alias "_xPickedEntity"														() As Integer
  Declare Function xPickedSurface								Alias "_xPickedSurface"														() As Integer
  Declare Function xPickedTriangle								Alias "_xPickedTriangle"													() As Integer
  Declare Function xPickedTime									Alias "_xPickedTime"															() As Integer
  Declare Sub		 xSetShadowsBlur								Alias "_xSetShadowsBlur"													(ByVal blurLevel As Integer)
  Declare Sub		 xSetShadowShader								Alias "_xSetShadowShader"													(ByVal path As Zstring ptr)
  Declare Function xInitShadows									Alias "_xInitShadows"														(ByVal dirSize As Integer, ByVal spotSize As Integer, ByVal pointSize As Integer) As Integer
  Declare Sub		 xSetShadowParams								Alias "_xSetShadowParams"													(ByVal splitPlanes As Integer = 4, ByVal splitLambda As Single = 0.95, ByVal useOrtho As Integer = 1, ByVal lightDist As Single = 300.0)
  Declare Sub		 xRenderShadows								Alias "_xRenderShadows"														(ByVal mainCamera As Integer, ByVal texture As Integer)
  Declare Sub		 xShadowPriority								Alias "_xShadowPriority"													(ByVal priority As Integer)
  Declare Sub		 xCameraDisableShadows						Alias "_xCameraDisableShadows"											(ByVal camera As Integer)
  Declare Sub		 xCameraEnableShadows						Alias "_xCameraEnableShadows"												(ByVal camera As Integer)
  Declare Sub		 xEntityCastShadows							Alias "_xEntityCastShadows"												(ByVal entity As Integer, ByVal light As Integer, ByVal state As Integer)
  Declare Sub		 xEntityReceiveShadows						Alias "_xEntityReceiveShadows"											(ByVal entity As Integer, ByVal light As Integer, ByVal state As Integer)
  Declare Function xEntityIsCaster								Alias "_xEntityIsCaster"													(ByVal entity As Integer, ByVal light As Integer) As Integer
  Declare Function xEntityIsReceiver							Alias "_xEntityIsReceiver"													(ByVal entity As Integer, ByVal light As Integer) As Integer
  Declare Function xLoadSound										Alias "_xLoadSound"															(ByVal path As Zstring ptr) As Integer
  Declare Function xLoad3DSound									Alias "_xLoad3DSound"														(ByVal path As Zstring ptr) As Integer
  Declare Sub		 xFreeSound										Alias "_xFreeSound"															(ByVal sound As Integer)
  Declare Sub		 xLoopSound										Alias "_xLoopSound"															(ByVal sound As Integer)
  Declare Sub		 xSoundPitch									Alias "_xSoundPitch"															(ByVal sound As Integer, ByVal pitch As Integer)
  Declare Sub		 xSoundVolume									Alias "_xSoundVolume"														(ByVal sound As Integer, ByVal volume As Single)
  Declare Sub		 xSoundPan										Alias "_xSoundPan"															(ByVal sound As Integer, ByVal pan As Single)
  Declare Function xPlaySound										Alias "_xPlaySound"															(ByVal sound As Integer) As Integer
  Declare Sub		 xStopChannel									Alias "_xStopChannel"														(ByVal channel As Integer)
  Declare Sub		 xPauseChannel									Alias "_xPauseChannel"														(ByVal channel As Integer)
  Declare Sub		 xResumeChannel								Alias "_xResumeChannel"														(ByVal channel As Integer)
  Declare Function xPlayMusic										Alias "_xPlayMusic"															(ByVal path As Zstring ptr) As Integer
  Declare Sub		 xChannelPitch									Alias "_xChannelPitch"														(ByVal channel As Integer, ByVal pitch As Integer)
  Declare Sub		 xChannelVolume								Alias "_xChannelVolume"														(ByVal channel As Integer, ByVal volume As Single)
  Declare Sub		 xChannelPan									Alias "_xChannelPan"															(ByVal channel As Integer, ByVal pan As Single)
  Declare Function xChannelPlaying								Alias "_xChannelPlaying"													(ByVal channel As Integer) As Integer
  Declare Function xEmitSound										Alias "_xEmitSound"															(ByVal sound As Integer, ByVal entity As Integer) As Integer
  Declare Function xCreateListener								Alias "_xCreateListener"													(ByVal parent As Integer = 0, ByVal roFactor As Single = 1.0, ByVal doplerFactor As Single = 1.0, ByVal distFactor As Single = 1.0) As Integer
  Declare Function xGetListener									Alias "_xGetListener"														() As Integer
  Declare Function xInitalizeSound								Alias "_xInitalizeSound"													() As Integer
  Declare Function xCreateSprite									Alias "_xCreateSprite"														(ByVal parent As Integer = 0) As Integer
  Declare Sub		 xSpriteViewMode								Alias "_xSpriteViewMode"													(ByVal sprite As Integer,	ByVal mode As Integer)
  Declare Sub		 xHandleSprite									Alias "_xHandleSprite"														(ByVal sprite As Integer,	ByVal x As Single, ByVal y As Single)
  Declare Function xLoadSprite									Alias "_xLoadSprite"															(ByVal path As Zstring ptr,ByVal flags As Integer = 9, ByVal parent As Integer = 0) As Integer
  Declare Sub		 xRotateSprite									Alias "_xRotateSprite"														(ByVal sprite As Integer,	ByVal angle As Single)
  Declare Sub		 xScaleSprite									Alias "_xScaleSprite"														(ByVal sprite As Integer,	ByVal xScale As Single, ByVal yScale As Single)
  Declare Function xCreateSurface								Alias "_xCreateSurface"														(ByVal entity As Integer,	ByVal brush As Integer = 0, ByVal dynamic As Integer = 0) As Integer
  Declare Function xGetSurfaceBrush								Alias "_xGetSurfaceBrush"													(ByVal surface As Integer) As Integer
  Declare Function xAddVertex										Alias "_xAddVertex"															(ByVal surface As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal u As Single = 0.0, ByVal v As Single = 0.0, ByVal w As Single = 0.0) As Integer
  Declare Function xAddTriangle									Alias "_xAddTriangle"														(ByVal surface As Integer, ByVal v0 As Integer, ByVal v1 As Integer, ByVal v2 As Integer) As Integer
  Declare Sub		 xSetSurfaceFrustumSphere					Alias "_xSetSurfaceFrustumSphere"										(ByVal surface As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal radii As Single)
  Declare Sub		 xVertexCoords									Alias "_xVertexCoords"														(ByVal surface As Integer, ByVal vertex As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single)
  Declare Sub		 xVertexNormal									Alias "_xVertexNormal"														(ByVal surface As Integer, ByVal vertex As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single)
  Declare Sub		 xVertexTangent								Alias "_xVertexTangent"														(ByVal surface As Integer, ByVal vertex As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single)
  Declare Sub		 xVertexBinormal								Alias "_xVertexBinormal"													(ByVal surface As Integer, ByVal vertex As Integer, ByVal x As Single, ByVal y As Single, ByVal z As Single)
  Declare Sub		 xVertexColor									Alias "_xVertexColor"														(ByVal surface As Integer, ByVal vertex As Integer, ByVal red As Integer, ByVal green As Integer, ByVal blue As Integer, ByVal alpha2 As Single = 1.0)
  Declare Sub		 xVertexTexCoords								Alias "_xVertexTexCoords"													(ByVal surface As Integer, ByVal vertex As Integer, ByVal u As Single, ByVal v As Single, ByVal w As Single = 1.0, ByVal textureSet As Integer = 0)
  Declare Function xCountVertices								Alias "_xCountVertices"														(ByVal surface As Integer) As Integer
  Declare Function xVertexX										Alias "_xVertexX"																(ByVal surface As Integer, ByVal vertex As Integer) As Single
  Declare Function xVertexY										Alias "_xVertexY"																(ByVal surface As Integer, ByVal vertex As Integer) As Single
  Declare Function xVertexZ										Alias "_xVertexZ"																(ByVal surface As Integer, ByVal vertex As Integer) As Single
  Declare Function xVertexNX										Alias "_xVertexNX"															(ByVal surface As Integer, ByVal vertex As Integer) As Single
  Declare Function xVertexNY										Alias "_xVertexNY"															(ByVal surface As Integer, ByVal vertex As Integer) As Single
  Declare Function xVertexNZ										Alias "_xVertexNZ"															(ByVal surface As Integer, ByVal vertex As Integer) As Single
  Declare Function xVertexTX										Alias "_xVertexTX"															(ByVal surface As Integer, ByVal vertex As Integer) As Single
  Declare Function xVertexTY										Alias "_xVertexTY"															(ByVal surface As Integer, ByVal vertex As Integer) As Single
  Declare Function xVertexTZ										Alias "_xVertexTZ"															(ByVal surface As Integer, ByVal vertex As Integer) As Single
  Declare Function xVertexBX										Alias "_xVertexBX"															(ByVal surface As Integer, ByVal vertex As Integer) As Single
  Declare Function xVertexBY										Alias "_xVertexBY"															(ByVal surface As Integer, ByVal vertex As Integer) As Single
  Declare Function xVertexBZ										Alias "_xVertexBZ"															(ByVal surface As Integer, ByVal vertex As Integer) As Single
  Declare Function xVertexU										Alias "_xVertexU"																(ByVal surface As Integer, ByVal vertex As Integer, ByVal textureSet As Integer = 0) As Single
  Declare Function xVertexV										Alias "_xVertexV"																(ByVal surface As Integer, ByVal vertex As Integer, ByVal textureSet As Integer = 0) As Single
  Declare Function xVertexW										Alias "_xVertexW"																(ByVal surface As Integer, ByVal vertex As Integer, ByVal textureSet As Integer = 0) As Single
  Declare Function xVertexRed										Alias "_xVertexRed"															(ByVal surface As Integer, ByVal vertex As Integer) As Single
  Declare Function xVertexGreen									Alias "_xVertexGreen"														(ByVal surface As Integer, ByVal vertex As Integer) As Single
  Declare Function xVertexBlue									Alias "_xVertexBlue"															(ByVal surface As Integer, ByVal vertex As Integer) As Single
  Declare Function xVertexAlpha									Alias "_xVertexAlpha"														(ByVal surface As Integer, ByVal vertex As Integer) As Single
  Declare Function xTriangleVertex								Alias "_xTriangleVertex"													(ByVal surface As Integer, ByVal triangle As Integer, ByVal corner As Integer) As Integer
  Declare Function xCountTriangles								Alias "_xCountTriangles"													(ByVal surface As Integer) As Integer
  Declare Sub		 xPaintSurface									Alias "_xPaintSurface"														(ByVal surface As Integer, ByVal brush As Integer)
  Declare Sub		 xClearSurface									Alias "_xClearSurface"														(ByVal surface As Integer, ByVal vertices As Integer = 1, ByVal triangles As Integer = 1)
  Declare Function xGetSurfaceTexture							Alias "_xGetSurfaceTexture"												(ByVal surface As Integer, ByVal index As Integer = 0) As Integer
  Declare Sub		 xFreeSurface									Alias "_xFreeSurface"														(ByVal surface As Integer)
  Declare Sub		 xSurfacePrimitiveType						Alias "_xSurfacePrimitiveType"											(ByVal surface As Integer, ByVal ptype As Integer)
  Declare Sub		 xSurfaceTexture								Alias "_xSurfaceTexture"													(ByVal surface As Integer, ByVal texture As Integer, ByVal frame As Integer, ByVal index As Integer)
  Declare Sub		 xSurfaceColor									Alias "_xSurfaceColor"														(ByVal surface As Integer, ByVal red As Integer, ByVal green As Integer, ByVal blue As Integer)
  Declare Sub		 xSurfaceAlpha									Alias "_xSurfaceAlpha"														(ByVal surface As Integer, ByVal alpha2 As Single)
  Declare Sub		 xSurfaceShininess							Alias "_xSurfaceShininess"													(ByVal surface As Integer, ByVal shininess As Single)
  Declare Sub		 xSurfaceBlend									Alias "_xSurfaceBlend"														(ByVal surface As Integer, ByVal blendMode As Integer)
  Declare Sub		 xSurfaceFX										Alias "_xSurfaceFX"															(ByVal surface As Integer, ByVal fxFlags As Integer)
  Declare Sub		 xSurfaceAlphaRef								Alias "_xSurfaceAlphaRef"													(ByVal surface As Integer, ByVal alphaRef As Integer)
  Declare Sub		 xSurfaceAlphaFunc							Alias "_xSurfaceAlphaFunc"													(ByVal surface As Integer, ByVal alphaFunc As Integer)
  Declare Function xCPUName										Alias "_xCPUName"																() As Zstring ptr
  Declare Function xCPUVendor										Alias "_xCPUVendor"															() As Zstring ptr
  Declare Function xCPUFamily										Alias "_xCPUFamily"															() As Integer
  Declare Function xCPUModel										Alias "_xCPUModel"															() As Integer
  Declare Function xCPUStepping									Alias "_xCPUStepping"														() As Integer
  Declare Function xCPUSpeed										Alias "_xCPUSpeed"															() As Integer
  Declare Function xVideoInfo										Alias "_xVideoInfo"															() As Zstring ptr
  Declare Function xVideoAspectRatio							Alias "_xVideoAspectRatio"													() As Single
  Declare Function xVideoAspectRatioStr						Alias "_xVideoAspectRatioStr"												() As Zstring ptr
  Declare Function xGetTotalPhysMem								Alias "_xGetTotalPhysMem"													() As Single
  Declare Function xGetAvailPhysMem								Alias "_xGetAvailPhysMem"													() As Single
  Declare Function xGetTotalPageMem								Alias "_xGetTotalPageMem"													() As Single
  Declare Function xGetAvailPageMem								Alias "_xGetAvailPageMem"													() As Single
  Declare Function xGetTotalVidMem								Alias "_xGetTotalVidMem"													() As Single
  Declare Function xGetAvailVidMem								Alias "_xGetAvailVidMem"													() As Single
  Declare Function xGetTotalVidLocalMem						Alias "_xGetTotalVidLocalMem"												() As Single
  Declare Function xGetAvailVidLocalMem						Alias "_xGetAvailVidLocalMem"												() As Single
  Declare Function xGetTotalVidNonlocalMem					Alias "_xGetTotalVidNonlocalMem"											() As Single
  Declare Function xGetAvailVidNonlocalMem					Alias "_xGetAvailVidNonlocalMem"											() As Single
  Declare Function xGetXors3dVersion							Alias "_xGetXors3dVersion"													() As Zstring ptr
  Declare Function xGetXors3dMajorVersion						Alias "_xGetXors3dMajorVersion"											() As Integer
  Declare Function xGetXors3dMinorVersion						Alias "_xGetXors3dMinorVersion"											() As Integer
  Declare Function xGetXors3dRevision							Alias "_xGetXors3dRevision"												() As Integer
  Declare Function xLoadTerrain									Alias "_xLoadTerrain"														(ByVal path As Zstring ptr, ByVal parent As Integer = 0) As Integer
  Declare Function xCreateTerrain								Alias "_xCreateTerrain"														(ByVal size As Integer, ByVal parent As Integer = 0) As Integer
  Declare Sub		 xTerrainShading								Alias "_xTerrainShading"													(ByVal terrain As Integer, ByVal state As Integer = 0)
  Declare Function xTerrainHeight								Alias "_xTerrainHeight"														(ByVal terrain As Integer, ByVal x As Integer, ByVal y As Integer) As Single
  Declare Function xTerrainSize									Alias "_xTerrainSize"														(ByVal terrain As Integer) As Integer
  Declare Function xTerrainX										Alias "_xTerrainX"															(ByVal terrain As Integer, ByVal x As Single , ByVal y As Single , ByVal z As Single) As Single
  Declare Function xTerrainY										Alias "_xTerrainY"															(ByVal terrain As Integer, ByVal x As Single , ByVal y As Single , ByVal z As Single) As Single
  Declare Function xTerrainZ										Alias "_xTerrainZ"															(ByVal terrain As Integer, ByVal x As Single , ByVal y As Single , ByVal z As Single) As Single
  Declare Sub		 xModifyTerrain								Alias "_xModifyTerrain"														(ByVal terrain As Integer, ByVal x As Integer, ByVal y As Integer, ByVal height As Single, ByVal realtime As Integer = 0)
  Declare Sub		 xTerrainDetail								Alias "_xTerrainDetail"														(ByVal terrain As Integer, ByVal detail As Integer)
  Declare Sub		 xTerrainSplatting							Alias "_xTerrainSplatting"													(ByVal terrain As Integer, ByVal state As Integer)
  Declare Function xLoadTerrainTexture							Alias "_xLoadTerrainTexture"												(ByVal path As Zstring ptr) As Integer
  Declare Sub		 xFreeTerrainTexture							Alias "_xFreeTerrainTexture"												(ByVal texture As Integer)
  Declare Sub		 xTerrainTextureLightmap					Alias "_xTerrainTextureLightmap"											(ByVal texture As Integer, ByVal state As Integer)
  Declare Sub		 xTerrainTexture								Alias "_xTerrainTexture"													(ByVal terrain As Integer, ByVal texture As Integer)
  Declare Sub		 xTerrainViewZone								Alias "_xTerrainViewZone"													(ByVal terrain As Integer, ByVal viewZone As Integer, ByVal texturingZone As Integer = -1)
  Declare Sub		 xTerrainLODs									Alias "_xTerrainLODs"														(ByVal lodsCount As Integer)
  Declare Function xTextureWidth									Alias "_xTextureWidth"														(ByVal texture As Integer) As Integer
  Declare Function xTextureHeight								Alias "_xTextureHeight"														(ByVal texture As Integer) As Integer
  Declare Function xCreateTexture								Alias "_xCreateTexture"														(ByVal width_ As Integer, ByVal height As Integer, ByVal flags As Integer = 9, ByVal frames As Integer = 1) As Integer
  Declare Sub		 xFreeTexture									Alias "_xFreeTexture"														(ByVal texture As Integer)
  Declare Sub		 xSetTextureFilter							Alias "_xSetTextureFilter"													(ByVal texture As Integer, ByVal mode As Integer)
  Declare Sub		 xTextureBlend									Alias "_xTextureBlend"														(ByVal texture As Integer, ByVal blend As Integer)
  Declare Sub		 xTextureCoords								Alias "_xTextureCoords"														(ByVal texture As Integer, ByVal coords As Integer)
  Declare Sub		 xTextureFilter								Alias "_xTextureFilter"														(ByVal matchText As Zstring ptr, ByVal flags As Integer)
  Declare Sub		 xClearTextureFilters						Alias "_xClearTextureFilters"												()
  Declare Function xLoadTexture									Alias "_xLoadTexture"														(ByVal path As Zstring ptr, ByVal flags As Integer = 9) As Integer
  Declare Function xTextureName									Alias "_xTextureName"														(ByVal texture As Integer) As Zstring ptr
  Declare Sub		 xPositionTexture								Alias "_xPositionTexture"													(ByVal texture As Integer, ByVal x As Single, ByVal y As Single)
  Declare Sub		 xScaleTexture									Alias "_xScaleTexture"														(ByVal texture As Integer, ByVal x As Single, ByVal y As Single)
  Declare Sub		 xRotateTexture								Alias "_xRotateTexture"														(ByVal texture As Integer, ByVal angle As Single)
  Declare Function xLoadAnimTexture								Alias "_xLoadAnimTexture"													(ByVal path As Zstring ptr, ByVal flags As Integer, ByVal width_ As Integer, ByVal height As Integer, ByVal startFrame As Integer, ByVal frames As Integer) As Integer
  Declare Function xCreateTextureFromData						Alias "_xCreateTextureFromData"											(ByVal pixelsData As Integer, ByVal width_ As Integer, ByVal height As Integer, ByVal flags As Integer = 9, ByVal frames As Integer = 1) As Integer
  Declare Function xGetTextureData								Alias "_xGetTextureData"													(ByVal texture As Integer, ByVal frame As Integer = 0) As Integer
  Declare Function xGetTextureDataPitch						Alias "_xGetTextureDataPitch"												(ByVal texture As Integer, ByVal frame As Integer = 0) As Integer
  Declare Function xGetTextureSurface							Alias "_xGetTextureSurface"												(ByVal texture As Integer, ByVal frame As Integer = 0) As Integer
  Declare Function xGetTextureFrames							Alias "_xGetTextureFrames"													(ByVal texture As Integer) As Integer
  Declare Sub		 xSetCubeFace									Alias "_xSetCubeFace"														(ByVal texture As Integer, ByVal face As Integer)
  Declare Sub		 xSetCubeMode									Alias "_xSetCubeMode"														(ByVal texture As Integer, ByVal mode As Integer)
  Declare Function xGetTextureBlend								Alias "_xGetTextureBlend"													(ByVal texture As Integer) As Integer
  Declare Function xGetTextureX									Alias "_xGetTextureX"														(ByVal texture As Integer) As Single
  Declare Function xGetTextureY									Alias "_xGetTextureY"														(ByVal texture As Integer) As Single
  Declare Function xGetTextureScaleX							Alias "_xGetTextureScaleX"													(ByVal texture As Integer) As Single
  Declare Function xGetTextureScaleY							Alias "_xGetTextureScaleY"													(ByVal texture As Integer) As Single
  Declare Function xGetTextureAngle								Alias "_xGetTextureAngle"													(ByVal texture As Integer) As Single
  Declare Function xGetTextureCoords							Alias "_xGetTextureCoords"													(ByVal texture As Integer) As Integer
  Declare Function xGetCubeFace									Alias "_xGetCubeFace"														(ByVal texture As Integer) As Integer
  Declare Function xGetCubeMode									Alias "_xGetCubeMode"														(ByVal texture As Integer) As Integer
  Declare Function xGetTextureFlags								Alias "_xGetTextureFlags"													(ByVal texture As Integer) As Integer
  Declare Sub		 xSetTextureFlags								Alias "_xSetTextureFlags"													(ByVal texture As Integer, ByVal flags As Integer)
  Declare Function xTextureCounter								Alias "_xTextureCounter"													(ByVal texture As Integer) As Integer
  Declare Function xVectorPitch									Alias "_xVectorPitch"														(ByVal x As Single, ByVal y As Single, ByVal z As Single) As Single
  Declare Function xVectorYaw										Alias "_xVectorYaw"															(ByVal x As Single, ByVal y As Single, ByVal z As Single) As Single
  Declare Function xDeltaPitch									Alias "_xDeltaPitch"															(ByVal entity1 As Integer, ByVal entity2 As Integer) As Single
  Declare Function xDeltaYaw										Alias "_xDeltaYaw"															(ByVal entity1 As Integer, ByVal entity2 As Integer) As Single
  Declare Function xTFormedX										Alias "_xTFormedX"															() As Single
  Declare Function xTFormedY										Alias "_xTFormedY"															() As Single
  Declare Function xTFormedZ										Alias "_xTFormedZ"															() As Single
  Declare Sub		 xTFormPoint									Alias "_xTFormPoint"															(ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal source As Integer, ByVal destination As Integer)
  Declare Sub		 xTFormVector									Alias "_xTFormVector"														(ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal source As Integer, ByVal destination As Integer)
  Declare Sub		 xTFormNormal									Alias "_xTFormNormal"														(ByVal x As Single, ByVal y As Single, ByVal z As Single, ByVal source As Integer, ByVal destination As Integer)
  Declare Function xOpenMovie										Alias "_xOpenMovie"															(ByVal path As Zstring ptr) As Integer
  Declare Sub		 xCloseMovie									Alias "_xCloseMovie"															(ByVal video As Integer)
  Declare Sub		 xDrawMovie										Alias "_xDrawMovie"															(ByVal video As Integer, ByVal x As Integer = 0, ByVal y As Integer = 0, ByVal width_ As Integer = -1, ByVal height As Integer = -1)
  Declare Function xMovieWidth									Alias "_xMovieWidth"															(ByVal video As Integer) As Integer
  Declare Function xMovieHeight									Alias "_xMovieHeight"														(ByVal video As Integer) As Integer
  Declare Function xMoviePlaying									Alias "_xMoviePlaying"														(ByVal video As Integer) As Integer
  Declare Sub		 xMovieSeek										Alias "_xMovieSeek"															(ByVal video As Integer, ByVal time As Single, ByVal relative As Integer = 0)
  Declare Function xMovieLength									Alias "_xMovieLength"														(ByVal video As Integer) As Single
  Declare Function xMovieCurrentTime							Alias "_xMovieCurrentTime"													(ByVal video As Integer) As Single
  Declare Sub		 xMoviePause									Alias "_xMoviePause"															(ByVal video As Integer)
  Declare Sub		 xMovieResume									Alias "_xMovieResume"														(ByVal video As Integer)
  Declare Function xMovieTexture									Alias "_xMovieTexture"														(ByVal video As Integer) As Integer
  Declare Function xCreateWorld									Alias "_xCreateWorld"														() As Integer
  Declare Sub		 xSetActiveWorld								Alias "_xSetActiveWorld"													(ByVal mundo As Integer)
  Declare Function xGetActiveWorld								Alias "_xGetActiveWorld"													() As Integer
  Declare Function xGetDefaultWorld								Alias "_xGetDefaultWorld"													() As Integer
  Declare Sub		 xDeleteWorld									Alias "_xDeleteWorld"														(ByVal mundo As Integer)