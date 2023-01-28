'*****************************************************************
'* jepalza conversion to FB (2020)                               *
'* Xors3d Engine header file for FB.NET, (c) 2012 XorsTeam       *
'* www:    http:// (ya no existe ) xors3d.com   					  *
'* e-mail: support@ (ya no existe ) xors3d.com                   *
'*                                                               *
'*****************************************************************

	' Log levels
	#Define LOG_NO            5
	#Define LOG_FATAL         4
	#Define LOG_ERROR         3
	#Define LOG_WARNING       2
	#Define LOG_MESSAGE       1
	#Define LOG_INFO          0

	' Log targets
	#Define LOG_HTML          1
	#Define LOG_COUT          2
	#Define LOG_STRING        4

	' Skinning types
	#Define SKIN_SOFTWARE	  2
	#Define SKIN_HARDWARE 	  1

	' Light sources types
	#Define LIGHT_DIRECTIONAL 1
	#Define LIGHT_POINT       2
	#Define LIGHT_SPOT        3

	' Texture filtering
	#Define TF_NONE           0
	#Define TF_POINT          1
	#Define TF_LINEAR         2
	#Define TF_ANISOTROPIC    3
	#Define TF_ANISOTROPICX4  4
	#Define TF_ANISOTROPICX8  5
	#Define TF_ANISOTROPICX16 6

	' PixelShader versions
	#Define PS_1_1 0
	#Define PS_1_2 1
	#Define PS_1_3 2
	#Define PS_1_4 3
	#Define PS_2_0 4
	#Define PS_3_0 5

	' VertexShader versions
	#Define VS_1_1 0
	#Define VS_2_0 1
	#Define VS_3_0 2

	' Matrix semantics
	#Define WORLD                         0
	#Define WORLDVIEWPROJ                 1
	#Define VIEWPROJ                      2
	#Define VIEW_                         3 ' antes "VIEW" pero FB da error
	#Define PROJ                          4
	#Define WORLDVIEW                     5
	#Define VIEWINVERSE                   6
	#Define WORLDINVERSETRANSPOSE         15
	#Define WORLDINVERSE                  16
	#Define WORLDTRANSPOSE                17
	#Define VIEWPROJINVERSE               18
	#Define VIEWPROJINVERSETRANSPOSE      19
	#Define VIEWTRANSPOSE                 20
	#Define VIEWINVRSETRANSPOSE           21
	#Define PROJINVERSE                   22
	#Define PROJTRANSPOSE                 23
	#Define PROJINVRSETRANSPOSE           24
	#Define WORLDVIEWPROJTRANSPOSE        25
	#Define WORLDVIEWPROJINVERSE          26
	#Define WORLDVIEWPROJINVERSETRANSPOSE 27
	#Define WORLDVIEWTRANSPOSE            28
	#Define WORLDVIEWINVERSE              29
	#Define WORLDVIEWINVERSETRANSPOSE     30

	' Antialiasing types
	#Define AANONE      0
	#Define AA2SAMPLES  1
	#Define AA3SAMPLES  2
	#Define AA4SAMPLES  3
	#Define AA5SAMPLES  4
	#Define AA6SAMPLES  5
	#Define AA7SAMPLES  6
	#Define AA8SAMPLES  7
	#Define AA9SAMPLES  8
	#Define AA10SAMPLES 9
	#Define AA11SAMPLES 10
	#Define AA12SAMPLES 11
	#Define AA13SAMPLES 12
	#Define AA14SAMPLES 13
	#Define AA15SAMPLES 14
	#Define AA16SAMPLES 15

	' Camera fog mode
	#Define FOG_NONE     0
	#Define FOG_LINEAR   1

	' Camera projection mode
	#Define PROJ_DISABLE      0
	#Define PROJ_PERSPECTIVE  1
	#Define PROJ_ORTHOGRAPHIC 2

	' Entity FX flags
	#Define FX_NOTHING        0
	#Define FX_FULLBRIGHT     1
	#Define FX_VERTEXCOLOR    2
	#Define FX_FLATSHADED     4
	#Define FX_DISABLEFOG     8
	#Define FX_DISABLECULLING 16
	#Define FX_NOALPHABLEND   32

	' Entity blending modes
	#Define BLEND_ALPHA       1
	#Define BLEND_MULTIPLY    2
	#Define BLEND_ADD         3
	#Define BLEND_PUREADD     4

	' Compare functions
	#Define CMP_NEVER         1
	#Define CMP_LESS          2
	#Define CMP_EQUAL         3
	#Define CMP_LESSEQUAL     4
	#Define CMP_GREATER       5
	#Define CMP_NOTEQUAL      6
	#Define CMP_GREATEREQUAL  7
	#Define CMP_ALWAYS        8

	' Axis
	#Define AXIS_X    1
	#Define AXIS_Y    2
	#Define AXIS_Z    3

	' Texture loading flags
	#Define FLAGS_COLOR             1
	#Define FLAGS_ALPHA             2
	#Define FLAGS_MASKED            4
	#Define FLAGS_MIPMAPPED         8
	#Define FLAGS_CLAMPU            16
	#Define FLAGS_CLAMPV            32
	#Define FLAGS_SPHERICALENVMAP   64
	#Define FLAGS_CUBICENVMAP       128
	#Define FLAGS_R32F              256
	#Define FLAGS_SKIPCACHE         512
	#Define FLAGS_VOLUMETEXTURE     1024
	#Define FLAGS_ARBG16F           2048
	#Define FLAGS_ARBG32F           4096

	' Texture blending modes
	#Define TEXBLEND_NONE          0
	#Define TEXBLEND_ALPHA         1
	#Define TEXBLEND_MULTIPLY      2
	#Define TEXBLEND_ADD           3
	#Define TEXBLEND_DOT3          4
	#Define TEXBLEND_LIGHTMAP      5
	#Define TEXBLEND_SEPARATEALPHA 6

	' Cube map faces
	#Define FACE_LEFT     0
	#Define FACE_FORWARD  1
	#Define FACE_RIGHT    2
	#Define FACE_BACKWARD 3
	#Define FACE_UP       4
	#Define FACE_DOWN     5

	' Entity animation types
	#Define ANIMATION_STOP      0
	#Define ANIMATION_LOOP      1
	#Define ANIMATION_PINGPONG  2
	#Define ANIMATION_ONE       3

	' Collision types
	#Define SPHERETOSPHERE  1
	#Define SPHERETOBOX     3
	#Define SPHERETOTRIMESH 2

	' Collision respones types
	#Define RESPONSE_STOP             1
	#Define RESPONSE_SLIDING          2
	#Define RESPONSE_SLIDING_DOWNLOCK 3

	' Entity picking modes
	#Define PICK_NONE     0
	#Define PICK_SPHERE   1
	#Define PICK_TRIMESH  2
	#Define PICK_BOX      3

	' Sprite view modes
	#Define SPRITE_FIXED    1
	#Define SPRITE_FREE     2
	#Define SPRITE_FREEROLL 3
	#Define SPRITE_FIXEDYAW 4

	' Joystick types
	#Define JOY_NONE    0
	#Define JOY_DIGITAL 1
	#Define JOY_ANALOG  2

	' Cubemap rendering modes
	#Define CUBEMAP_SPECULAR   1
	#Define CUBEMAP_DIFFUSE    2
	#Define CUBEMAP_REFRACTION 3

	' Shadow's blur levels
	#Define SHADOWS_BLUR_NONE 0
	#Define SHADOWS_BLUR_3    1
	#Define SHADOWS_BLUR_5    2
	#Define SHADOWS_BLUR_7    3
	#Define SHADOWS_BLUR_11   4
	#Define SHADOWS_BLUR_13   5

	' primitives types
	#Define PRIMITIVE_POINTLIST     1
	#Define PRIMITIVE_LINELIST      2
	#Define PRIMITIVE_LINESTRIP     3
	#Define PRIMITIVE_TRIANGLELIST  4
	#Define PRIMITIVE_TRIANGLESTRIP 5
	#Define PRIMITIVE_TRIANGLEFAN   6
	
	' line separator types
	#Define LS_NUL		0
	#Define LS_CR		1
	#Define LS_LF		2
	#Define LS_CRLF	3
	
	' physics: jotypes
	#Define JOINT_POINT2POINT	0
	#Define JOINT_6DOF			1
	#Define JOINT_6DOFSPRING	2
	#Define JOINT_HINGE		   3
	
	' physics: debug drawer modes
	#Define PXDD_NO           0
	#Define PXDD_WIREFRAME    1
	#Define PXDD_AABB         2
	#Define PXDD_CONTACTS     4
	#Define PXDD_JOINTS       8
	#Define PXDD_JOINT_LIMITS 16
	#Define PXDD_NO_AXIS      32

	' physics: ray casting modes
	#Define PXRC_SINGLE       0
	#Define PXRC_MULTIPLE     1

	' Scancodes for keyboard and mouse
	#Define MOUSE_LEFT        1
	#Define MOUSE_RIGHT       2
	#Define MOUSE_MIDDLE      3
	#Define MOUSE4            4
	#Define MOUSE5            5
	#Define MOUSE6            6
	#Define MOUSE7            7
	#Define MOUSE8            8
	
	#Define xMOUSE_LEFT       1
	#Define xMOUSE_RIGHT      2
	#Define xMOUSE_MIDDLE     3
	#Define xMOUSE4           4
	#Define xMOUSE5           5
	#Define xMOUSE6           6
	#Define xMOUSE7           7
	#Define xMOUSE8           8
	
	#Define KEY_ESCAPE        1
	#Define KEY_1             2
	#Define KEY_2             3
	#Define KEY_3             4
	#Define KEY_4             5
	#Define KEY_5             6
	#Define KEY_6             7
	#Define KEY_7             8
	#Define KEY_8             9
	#Define KEY_9             10
	#Define KEY_0             11
	#Define KEY_MINUS         12
	#Define KEY_EQUALS        13
	#Define KEY_BACK          14
	#Define KEY_TAB           15
	#Define KEY_Q             16
	#Define KEY_W             17
	#Define KEY_E             18
	#Define KEY_R             19
	#Define KEY_T             20
	#Define KEY_Y             21
	#Define KEY_U             22
	#Define KEY_I             23
	#Define KEY_O             24
	#Define KEY_P             25
	#Define KEY_LBRACKET      26
	#Define KEY_RBRACKET      27
	#Define KEY_RETURN        28
	#Define KEY_ENTER         KEY_RETURN
	#Define KEY_LCONTROL      29
	#Define KEY_RCONTROL      157
	#Define KEY_A             30
	#Define KEY_S             31
	#Define KEY_D             32
	#Define KEY_F             33
	#Define KEY_G             34
	#Define KEY_H             35
	#Define KEY_J             36
	#Define KEY_K             37
	#Define KEY_L             38
	#Define KEY_SEMICOLON     39
	#Define KEY_APOSTROPHE    40
	#Define KEY_GRAVE         41
	#Define KEY_LSHIFT        42
	#Define KEY_BACKSLASH     43
	#Define KEY_Z             44
	#Define KEY_X             45
	#Define KEY_C             46
	#Define KEY_V             47
	#Define KEY_B             48
	#Define KEY_N             49
	#Define KEY_M             50
	#Define KEY_COMMA         51
	#Define KEY_PERIOD        52
	#Define KEY_SLASH         53
	#Define KEY_RSHIFT        54
	#Define KEY_MULTIPLY      55
	#Define KEY_MENU          56
	#Define KEY_SPACE         57
	#Define KEY_F1            59
	#Define KEY_F2            60
	#Define KEY_F3            61
	#Define KEY_F4            62
	#Define KEY_F5            63
	#Define KEY_F6            64
	#Define KEY_F7            65
	#Define KEY_F8            66
	#Define KEY_F9            67
	#Define KEY_F10           68
	#Define KEY_NUMLOCK       69
	#Define KEY_SCROLL        70
	#Define KEY_NUMPAD7       71
	#Define KEY_NUMPAD8       72
	#Define KEY_NUMPAD9       73
	#Define KEY_SUBTRACT      74
	#Define KEY_NUMPAD4       75
	#Define KEY_NUMPAD5       76
	#Define KEY_NUMPAD6       77
	#Define KEY_ADD           78
	#Define KEY_NUMPAD1       79
	#Define KEY_NUMPAD2       80
	#Define KEY_NUMPAD3       81
	#Define KEY_NUMPAD0       82
	#Define KEY_DECIMAL       83
	#Define KEY_TILD          86
	#Define KEY_F11           87
	#Define KEY_F12           88
	#Define KEY_NUMPADENTER   156
	#Define KEY_RMENU         221
	#Define KEY_PAUSE         197
	#Define KEY_HOME          199
	#Define KEY_UP            200
	#Define KEY_PRIOR         201
	#Define KEY_LEFT          203
	#Define KEY_RIGHT         205
	#Define KEY_END           207
	#Define KEY_DOWN          208
	#Define KEY_NEXT          209
	#Define KEY_INSERT        210
	#Define KEY_DELETE        211
	#Define KEY_LWIN          219
	#Define KEY_RWIN          220
	#Define KEY_BACKSPACE     KEY_BACK
	#Define KEY_NUMPADSTAR    KEY_MULTIPLY
	#Define KEY_LALT          184
	#Define KEY_CAPSLOCK      58
	#Define KEY_NUMPADMINUS   KEY_SUBTRACT
	#Define KEY_NUMPADPLUS    KEY_ADD
	#Define KEY_NUMPADPERIOD  KEY_DECIMAL
	#Define KEY_DIVIDE        181
	#Define KEY_NUMPADSLASH   KEY_DIVIDE
	#Define KEY_RALT          56
	#Define KEY_UPARROW       KEY_UP
	#Define KEY_PGUP          KEY_PRIOR
	#Define KEY_LEFTARROW     KEY_LEFT
	#Define KEY_RIGHTARROW    KEY_RIGHT
	#Define KEY_DOWNARROW     KEY_DOWN
	#Define KEY_PGDN          KEY_NEXT
	
	#Define xKEY_ESCAPE       1
	#Define xKEY_1            2
	#Define xKEY_2            3
	#Define xKEY_3            4
	#Define xKEY_4            5
	#Define xKEY_5            6
	#Define xKEY_6            7
	#Define xKEY_7            8
	#Define xKEY_8            9
	#Define xKEY_9            10
	#Define xKEY_0            11
	#Define xKEY_MINUS        12
	#Define xKEY_EQUALS       13
	#Define xKEY_BACK         14
	#Define xKEY_TAB          15
	#Define xKEY_Q            16
	#Define xKEY_W            17
	#Define xKEY_E            18
	#Define xKEY_R            19
	#Define xKEY_T            20
	#Define xKEY_Y            21
	#Define xKEY_U            22
	#Define xKEY_I            23
	#Define xKEY_O            24
	#Define xKEY_P            25
	#Define xKEY_LBRACKET     26
	#Define xKEY_RBRACKET     27
	#Define xKEY_RETURN       28
	#Define xKEY_ENTER        KEY_RETURN
	#Define xKEY_LCONTROL     29
	#Define xKEY_RCONTROL     157
	#Define xKEY_A            30
	#Define xKEY_S            31
	#Define xKEY_D            32
	#Define xKEY_F            33
	#Define xKEY_G            34
	#Define xKEY_H            35
	#Define xKEY_J            36
	#Define xKEY_K            37
	#Define xKEY_L            38
	#Define xKEY_SEMICOLON    39
	#Define xKEY_APOSTROPHE   40
	#Define xKEY_GRAVE        41
	#Define xKEY_LSHIFT       42
	#Define xKEY_BACKSLASH    43
	#Define xKEY_Z            44
	#Define xKEY_X            45
	#Define xKEY_C            46
	#Define xKEY_V            47
	#Define xKEY_B            48
	#Define xKEY_N            49
	#Define xKEY_M            50
	#Define xKEY_COMMA        51
	#Define xKEY_PERIOD       52
	#Define xKEY_SLASH        53
	#Define xKEY_RSHIFT       54
	#Define xKEY_MULTIPLY     55
	#Define xKEY_MENU         56
	#Define xKEY_SPACE        57
	#Define xKEY_F1           59
	#Define xKEY_F2           60
	#Define xKEY_F3           61
	#Define xKEY_F4           62
	#Define xKEY_F5           63
	#Define xKEY_F6           64
	#Define xKEY_F7           65
	#Define xKEY_F8           66
	#Define xKEY_F9           67
	#Define xKEY_F10          68
	#Define xKEY_NUMLOCK      69
	#Define xKEY_SCROLL       70
	#Define xKEY_NUMPAD7      71
	#Define xKEY_NUMPAD8      72
	#Define xKEY_NUMPAD9      73
	#Define xKEY_SUBTRACT     74
	#Define xKEY_NUMPAD4      75
	#Define xKEY_NUMPAD5      76
	#Define xKEY_NUMPAD6      77
	#Define xKEY_ADD          78
	#Define xKEY_NUMPAD1      79
	#Define xKEY_NUMPAD2      80
	#Define xKEY_NUMPAD3      81
	#Define xKEY_NUMPAD0      82
	#Define xKEY_DECIMAL      83
	#Define xKEY_TILD         86
	#Define xKEY_F11          87
	#Define xKEY_F12          88
	#Define xKEY_NUMPADENTER  156
	#Define xKEY_RMENU        221
	#Define xKEY_PAUSE        197
	#Define xKEY_HOME         199
	#Define xKEY_UP           200
	#Define xKEY_PRIOR        201
	#Define xKEY_LEFT         203
	#Define xKEY_RIGHT        205
	#Define xKEY_END          207
	#Define xKEY_DOWN         208
	#Define xKEY_NEXT         209
	#Define xKEY_INSERT       210
	#Define xKEY_DELETE       211
	#Define xKEY_LWIN         219
	#Define xKEY_RWIN         220
	#Define xKEY_BACKSPACE    KEY_BACK
	#Define xKEY_NUMPADSTAR   KEY_MULTIPLY
	#Define xKEY_LALT         184
	#Define xKEY_CAPSLOCK     58
	#Define xKEY_NUMPADMINUS  KEY_SUBTRACT
	#Define xKEY_NUMPADPLUS   KEY_ADD
	#Define xKEY_NUMPADPERIOD KEY_DECIMAL
	#Define xKEY_DIVIDE       181
	#Define xKEY_NUMPADSLASH  KEY_DIVIDE
	#Define xKEY_RALT         56
	#Define xKEY_UPARROW      KEY_UP
	#Define xKEY_PGUP         KEY_PRIOR
	#Define xKEY_LEFTARROW    KEY_LEFT
	#Define xKEY_RIGHTARROW   KEY_RIGHT
	#Define xKEY_DOWNARROW    KEY_DOWN
	#Define xKEY_PGDN         KEY_NEXT

