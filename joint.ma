//Maya ASCII 2024 scene
//Name: joint.ma
//Last modified: Fri, Oct 31, 2025 11:11:18 PM
//Codeset: 1252
requires maya "2024";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.1.1";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202304191415-7fa20164c6";
fileInfo "osv" "Windows 11 Home Single Language v2009 (Build: 26200)";
fileInfo "UUID" "A68FC036-4FFA-9ADA-EB2B-719662AAE0FD";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "4C34DE4C-45A0-6C09-0BEC-18A05F58DC30";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 61.98268925796129 108.48252250058484 324.04489116347457 ;
	setAttr ".r" -type "double3" -5.1383527296298741 -2.999999999999162 1.4929310170086513e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "56D02299-4C3D-0FFF-01B5-1886A501068C";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 310.45668091570121;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "0C807CCF-4B8C-186C-0F76-21B51D39A977";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "BC33C072-40E7-4B4A-632B-B29B48B2B332";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "EFD7211F-473A-57E3-C266-0CABA2E0104D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 17.148295314098593 21.492709300192558 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "6584DF1E-4870-DE5C-4830-D19CDF4F4D37";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 131.1727465231038;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "4C6FB821-44DE-053D-187D-41BE2CBF4A4C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "C2182295-409A-0115-B021-0FA1879A4C08";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Joint_grp";
	rename -uid "B5E9EE66-46C1-B5AE-6C54-949ED6591D87";
createNode joint -n "root_jnt" -p "Joint_grp";
	rename -uid "1DA10793-4276-298C-7929-9C87BC216B20";
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode joint -n "back1_jnt" -p "root_jnt";
	rename -uid "10D4DCBE-415B-FFB5-735E-B7BB498D34F2";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode joint -n "back2_jnt" -p "back1_jnt";
	rename -uid "E1AE7DB9-4235-4D11-7574-C695ACBC5D61";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode joint -n "back3_jnt" -p "back2_jnt";
	rename -uid "22520449-42DA-F7B1-DFBF-F499250E606E";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999972 7.2080967445266007 90 ;
	setAttr ".radi" 0.5;
createNode joint -n "neck_jnt" -p "back3_jnt";
	rename -uid "54EB1A47-4909-2151-5B15-D38ED3F3A9B0";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".pa" -type "double3" 180 0 0 ;
	setAttr ".radi" 0.5;
createNode joint -n "head_jnt" -p "neck_jnt";
	rename -uid "0B4CFF41-4CB9-F5B1-CD09-D794FB6BC706";
	setAttr ".t" -type "double3" 8.4385921758344224 -2.9619377990739504 4.1344225156144957e-08 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode joint -n "headtip_jnt" -p "head_jnt";
	rename -uid "B30CED5A-4FFA-4EAC-34F7-08AE7E055F18";
	setAttr ".t" -type "double3" 27.791504557975543 -14.345769796296393 5.5039694300147591e-08 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode joint -n "jaw_jnt1" -p "head_jnt";
	rename -uid "081D78DD-49D8-5E25-0B05-D990983E0F15";
	setAttr ".t" -type "double3" 9.4623989234632351 -0.20494229839110858 -9.1666074859415363e-08 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode joint -n "jaw_jnt2" -p "jaw_jnt1";
	rename -uid "4388078C-41E9-BD6D-E3BC-5DB5819AE477";
	setAttr ".t" -type "double3" -10.985026184430124 -12.252294673248471 3.8524920065191426e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode joint -n "L_eyeball_jnt" -p "head_jnt";
	rename -uid "AB4B4BBA-42EC-69A2-6B08-E084D8FD3881";
	setAttr ".t" -type "double3" 12.5145433919919 -11.369205720569337 -4.3377525701207986 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode parentConstraint -n "neck_jnt_parentConstraint1" -p "neck_jnt";
	rename -uid "F0E11D01-4BFF-71D1-7B41-968EAB5480DB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "neck_CCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -6.2479327328849433e-16 8.4599018068676202e-10 
		-4.3712454100841569e-07 ;
	setAttr ".tg[0].tor" -type "double3" 90.000000000000199 82.7919032554734 -89.999999999999801 ;
	setAttr ".lr" -type "double3" 180 4.9656445853064264e-31 7.9513867036587888e-15 ;
	setAttr ".rst" -type "double3" 11.84611910725323 -3.5527136788005009e-15 -2.8990797917734042e-08 ;
	setAttr ".rsrr" -type "double3" 180 4.9656445853064264e-31 7.9513867036587888e-15 ;
	setAttr -k on ".w0";
createNode joint -n "L_clavicle_jnt" -p "back3_jnt";
	rename -uid "EF21939F-4491-3E85-5488-BD93AA4EB911";
	setAttr ".t" -type "double3" 12.783274824808117 0.84341145251349303 2.6826918348380353 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode joint -n "L_shoulder_jnt" -p "L_clavicle_jnt";
	rename -uid "024773DF-4B0B-9F11-EA9C-04AD10BF1AC1";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode joint -n "L_elbow_jnt" -p "L_shoulder_jnt";
	rename -uid "C0AB8453-4218-363B-B630-DDABF53A08E2";
	setAttr ".t" -type "double3" 0.14833844643641084 -1.173680431305776 21.794514385693411 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode joint -n "L_forearm" -p "L_elbow_jnt";
	rename -uid "C47B67F8-4304-6248-BCD1-E9B6C3E2F90F";
	setAttr ".t" -type "double3" -0.064776832314572277 0.51217933748420141 9.5711999999999975 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode joint -n "L_wrist_jnt" -p "L_elbow_jnt";
	rename -uid "D8855DA6-4AC8-FA8B-80DB-C893D2BE2006";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode joint -n "L_pinky_jnt1" -p "L_wrist_jnt";
	rename -uid "C29D59CA-44D1-6603-466E-22BE388E7E27";
	setAttr ".t" -type "double3" 0.92814865250102918 -3.0303571870726169 8.6865655889674542 ;
	setAttr ".s" -type "double3" 0 1 1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode joint -n "L_pinky_jnt2" -p "L_pinky_jnt1";
	rename -uid "2DB09D9B-447E-AA33-4A04-5FA3D07908A7";
	setAttr ".t" -type "double3" -9483249386.2570515 0.074982431438902847 7.8981807413331972e-12 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode joint -n "L_pinky_jnt3" -p "L_pinky_jnt2";
	rename -uid "A54AE2B4-4B9E-E450-B90D-58B64AA29CD7";
	setAttr ".t" -type "double3" 0.0029633597864088309 -0.023430779152049948 4.2937738321922128 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode joint -n "L_pinky_jnt4" -p "L_pinky_jnt3";
	rename -uid "64F2E927-4520-511A-23D5-7E945F1F394C";
	setAttr ".t" -type "double3" 0.0065198895998199993 -0.051551652286856355 5.0984005432864183 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode joint -n "L_ring_jnt1" -p "L_wrist_jnt";
	rename -uid "848FF093-4D9C-246A-4507-65B41030912C";
	setAttr ".t" -type "double3" 0.87628105892116726 -0.89445664879457587 8.6511275840911566 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode joint -n "L_ring_jnt2" -p "L_ring_jnt1";
	rename -uid "EB899E40-40EC-BB73-35F3-CAA0288D3C2A";
	setAttr ".t" -type "double3" -0.0017644732747663231 0.013951388491677222 5.690814163415606 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode joint -n "L_ring_jnt3" -p "L_ring_jnt2";
	rename -uid "5AA0E5CC-47FE-7F53-7594-EDBD0E66D2B4";
	setAttr ".t" -type "double3" 1.3210439557145551e-15 2.0974857169308639e-17 2.9807000000000077 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode joint -n "L_ring_jnt4" -p "L_ring_jnt3";
	rename -uid "0766CC4C-4E5B-7A73-ACC6-E49895A05CED";
	setAttr ".t" -type "double3" 0.0017644732747701976 -0.013951388491677241 3.0280486671142972 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode joint -n "L_middle_jnt1" -p "L_wrist_jnt";
	rename -uid "D6A81F70-4B7A-650B-BFE4-90B5001A4DD4";
	setAttr ".t" -type "double3" 0.67259220407683395 1.4063932371681567 8.8991936182252331 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode joint -n "L_middle_jnt2" -p "L_middle_jnt1";
	rename -uid "4462BD5E-45EF-0D03-8B36-7A9DD463063C";
	setAttr ".t" -type "double3" -4.9806974622469623e-07 3.9381523411240586e-06 5.2213897463311127 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode joint -n "L_middle_jnt3" -p "L_middle_jnt2";
	rename -uid "47040BA4-46E6-DC63-A755-C0B22AC1C783";
	setAttr ".t" -type "double3" 1.3236967078000807e-15 -1.700175843394321e-31 2.9806999999999988 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode joint -n "L_middle_jnt4" -p "L_middle_jnt3";
	rename -uid "47044DED-43D2-7DE9-A1D2-B094908C9FF2";
	setAttr ".t" -type "double3" 4.9806975006902239e-07 -3.9381523411236825e-06 3.4353701976520838 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode joint -n "L_index_jnt1" -p "L_wrist_jnt";
	rename -uid "619BB0DF-4A3C-E280-EC64-499A1DD9881C";
	setAttr ".t" -type "double3" 0.30213530982310038 3.6452156211420199 8.5625325719004124 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode joint -n "L_index_jnt2" -p "L_index_jnt1";
	rename -uid "E5518737-44FD-64D1-33A8-4E94830749D5";
	setAttr ".t" -type "double3" 0.00079309902570551456 -0.0062708983911369679 5.8383004734009178 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode joint -n "L_index_jnt3" -p "L_index_jnt2";
	rename -uid "8C924D3A-47FD-17B5-321D-86BFF3D23F93";
	setAttr ".t" -type "double3" -0.00018455746405717229 0.0014592643124364557 2.8572044951413615 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode joint -n "L_index_jnt4" -p "L_index_jnt3";
	rename -uid "E168BBEE-440E-B8C5-7B9F-E0AC54C5DB5E";
	setAttr ".t" -type "double3" -0.00060854156164313249 0.004811634078700484 3.0278350316185976 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode joint -n "L_thumb_jnt1" -p "L_wrist_jnt";
	rename -uid "BC6AF7FF-4428-F567-BC23-C284B0ECB807";
	setAttr ".t" -type "double3" -0.78454515458882002 4.5924976087957656 3.3422136379938365 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode joint -n "L_thumb_jnt2" -p "L_thumb_jnt1";
	rename -uid "624872AC-4A16-98B3-331C-D49EE7A5E76F";
	setAttr ".t" -type "double3" -2.4141955957582466 2.9731548911961836 1.6565208435058651 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode joint -n "L_thumb_jnt3" -p "L_thumb_jnt2";
	rename -uid "499B3A84-4AE0-0C76-1C3E-79BA8FF32F95";
	setAttr ".t" -type "double3" -1.6569444187011646 2.9258477031445449 1.3515014648437409 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode parentConstraint -n "L_wrist_jnt_parentConstraint1" -p "L_wrist_jnt";
	rename -uid "905964EB-4F42-F1AD-7398-8DA20C9C9EE8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_wrist_CCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.456658171861136e-07 1.8947312341310862e-07 
		1.3507713466272737e-15 ;
	setAttr ".tg[0].tor" -type "double3" 90 7.2080967445265882 89.999999999999972 ;
	setAttr ".lr" -type "double3" 6.3611093629270335e-15 -3.1805546814635168e-15 6.3611093629270335e-15 ;
	setAttr ".rst" -type "double3" -0.14833844643641214 1.1736804313057725 21.932516635443722 ;
	setAttr ".rsrr" -type "double3" 6.3611093629270335e-15 -3.1805546814635168e-15 6.3611093629270335e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_shoulder_jnt_parentConstraint1" -p "L_shoulder_jnt";
	rename -uid "502CBFEB-4A58-0DC8-85F6-7C95A80D68A4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_clavicle_CCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.2025464219719311e-09 1.8947312341310862e-07 
		-3.9938678945690728e-16 ;
	setAttr ".tg[0].tor" -type "double3" 90 7.2080967445265882 89.999999999999972 ;
	setAttr ".lr" -type "double3" 6.3611093629270335e-15 -3.1805546814635168e-15 6.3611093629270335e-15 ;
	setAttr ".rst" -type "double3" -1.9452580864248148 -0.24602253088086279 4.1774905037568502 ;
	setAttr ".rsrr" -type "double3" 6.3611093629270335e-15 -3.1805546814635168e-15 6.3611093629270335e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "back3_jnt_parentConstraint1" -p "back3_jnt";
	rename -uid "2A9A8A7C-4BA1-2786-E05C-56BF6FD7B619";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "back3_CCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.2543878112957959e-16 -1.2965058004965613e-07 
		-8.5536581984069215e-10 ;
	setAttr ".tg[0].tor" -type "double3" 89.999999999999972 7.2080967445266007 90 ;
	setAttr ".lr" -type "double3" 3.1805546814635168e-15 0 0 ;
	setAttr ".rst" -type "double3" -2.8554899660159087e-09 12.408231182412209 -0.25228732916029228 ;
	setAttr ".rsrr" -type "double3" 3.1805546814635168e-15 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "back2_jnt_parentConstraint1" -p "back2_jnt";
	rename -uid "0CD48D8C-47DB-21F0-6AC6-B59AE2EA00D4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "back2_CCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -7.0718568603493694e-25 7.5363246310189425e-08 
		-7.7894608818684929e-10 ;
	setAttr ".rst" -type "double3" 3.020643264142742e-16 11.008424931846264 -0.1048413258999874 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "back1_jnt_parentConstraint1" -p "back1_jnt";
	rename -uid "4B9CDE48-42E3-2212-D3C4-E4A517DEE0C0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "back1_CCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.4432746030654815e-27 -9.7993734016199596e-08 
		-2.9130383244480029e-09 ;
	setAttr ".rst" -type "double3" 6.8845444489519392e-19 3.4048119710478488 0.38797207553243163 ;
	setAttr -k on ".w0";
createNode joint -n "pelvis_jnt" -p "root_jnt";
	rename -uid "4BFE17CA-488A-A047-9107-309FC3C9F20E";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode joint -n "L_hip_jnt" -p "pelvis_jnt";
	rename -uid "3B2E98B8-45E0-1084-9187-5FBFA325A9E9";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode joint -n "L_knee_jnt" -p "L_hip_jnt";
	rename -uid "A47751EA-4309-3D8E-65A7-85911CBA9C5E";
	setAttr ".t" -type "double3" 3.027914534518977e-15 -26.505405374802734 1.2398416303949211 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode joint -n "L_ankle_jnt" -p "L_knee_jnt";
	rename -uid "71105114-4C4E-65B4-2E57-478ADE09BB3E";
	setAttr ".t" -type "double3" -1.5710237404449357e-14 -28.008519516466482 -1.3826386730384181 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode joint -n "L_ball_jnt" -p "L_ankle_jnt";
	rename -uid "4134D726-42C1-43C0-3D2C-7381604191D6";
	setAttr ".t" -type "double3" -2.7969085622456529e-15 -5.0692758550264534 11.907613225633105 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode joint -n "L_toe_jnt" -p "L_ball_jnt";
	rename -uid "E8FAE029-42BA-E718-1074-34818A1C52BA";
	setAttr ".t" -type "double3" -5.0564584437632128e-08 1.6376787153412212e-15 8.6631006092369311 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode parentConstraint -n "L_hip_jnt_parentConstraint1" -p "L_hip_jnt";
	rename -uid "ACFE2F2E-4C41-2D06-3B7C-91A6CE03E8DA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_hip_CCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.6043493462377683e-09 -4.3941407845693448e-08 
		-2.3949700209136005e-10 ;
	setAttr ".rst" -type "double3" 6.5218773440705506 -4.3160084702064339 -0.042833023138130311 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "pelvis_jnt_parentConstraint1" -p "pelvis_jnt";
	rename -uid "858B3D6C-4E65-3B53-3D71-22BFDC80DB85";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "pelvis_CCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.5479534094412349e-27 -1.3154790146074902e-07 
		-8.2997333311629617e-10 ;
	setAttr ".rst" -type "double3" -7.1668599999999991e-19 -3.5548861549908324 -0.40508233114765313 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "root_jnt_parentConstraint1" -p "root_jnt";
	rename -uid "7785C240-4EE6-2776-72A8-3FA7AC80129E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "All_CCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 2.1057128929413693e-07 4.9845378519153272e-10 ;
	setAttr ".rst" -type "double3" 0 67.4546 0.73637200000000014 ;
	setAttr -k on ".w0";
createNode transform -n "All_CC_grp";
	rename -uid "849AF20F-40BA-31C0-D969-2FA9E5E55887";
	setAttr ".t" -type "double3" 0 67.454597473144531 0.73637199401855469 ;
	setAttr ".s" -type "double3" 12 12 12 ;
createNode transform -n "All_CC" -p "All_CC_grp";
	rename -uid "114BD521-4116-039F-2415-DA9A7C3DD022";
createNode nurbsCurve -n "All_CCShape" -p "All_CC";
	rename -uid "531DAD40-494B-C1E3-3BEF-B182C03B6DEF";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		-1.1081941875543881 3.5177356190060272e-33 -5.7448982375248304e-17
		-0.78361162489122449 -4.7982373409884725e-17 0.78361162489122449
		-1.1100856969603225e-16 -6.7857323231109171e-17 1.1081941875543884
		0.78361162489122449 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543881 -9.2536792101100989e-33 1.511240500779959e-16
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		;
createNode transform -n "back1_CC_grp" -p "All_CC";
	rename -uid "6428F627-4F29-A53D-247A-78812266EB48";
	setAttr ".t" -type "double3" 5.7371205184540759e-20 0.28373463948567768 0.032331009705861412 ;
createNode transform -n "back1_CC" -p "back1_CC_grp";
	rename -uid "EDCD3BE8-442F-3D3C-79AF-69A6FEDAD49A";
createNode nurbsCurve -n "back1_CCShape" -p "back1_CC";
	rename -uid "438463C8-4889-6159-5B14-F5A4A4F4FE34";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		-1.1081941875543881 3.5177356190060272e-33 -5.7448982375248304e-17
		-0.78361162489122449 -4.7982373409884725e-17 0.78361162489122449
		-1.1100856969603225e-16 -6.7857323231109171e-17 1.1081941875543884
		0.78361162489122449 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543881 -9.2536792101100989e-33 1.511240500779959e-16
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		;
createNode transform -n "back2_CC_grp" -p "back1_CC";
	rename -uid "65ACE370-49E7-89C3-4032-6B84B19CFC49";
	setAttr ".t" -type "double3" 2.5172027906931928e-17 0.91736857096354107 -0.0087367792924245291 ;
createNode transform -n "back2_CC" -p "back2_CC_grp";
	rename -uid "BFB1D481-4159-C436-0D24-75996E822397";
createNode nurbsCurve -n "back2_CCShape" -p "back2_CC";
	rename -uid "6F2F0C93-4BCD-492D-E69C-D8BEA5E20195";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		-1.1081941875543881 3.5177356190060272e-33 -5.7448982375248304e-17
		-0.78361162489122449 -4.7982373409884725e-17 0.78361162489122449
		-1.1100856969603225e-16 -6.7857323231109171e-17 1.1081941875543884
		0.78361162489122449 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543881 -9.2536792101100989e-33 1.511240500779959e-16
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		;
createNode transform -n "back3_CC_grp" -p "back2_CC";
	rename -uid "3587FA42-4B61-D163-3815-0CBB8162A8C6";
	setAttr ".t" -type "double3" -2.3795727172921198e-10 1.0340194702148438 -0.021023944020271301 ;
createNode transform -n "back3_CC" -p "back3_CC_grp";
	rename -uid "221BE3DF-4606-54B6-571A-4B993D0625F5";
createNode nurbsCurve -n "back3_CCShape" -p "back3_CC";
	rename -uid "566AE8D2-4FC9-AAF5-CEA5-8DAA0A8F3E98";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		-1.1081941875543881 3.5177356190060272e-33 -5.7448982375248304e-17
		-0.78361162489122449 -4.7982373409884725e-17 0.78361162489122449
		-1.1100856969603225e-16 -6.7857323231109171e-17 1.1081941875543884
		0.78361162489122449 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543881 -9.2536792101100989e-33 1.511240500779959e-16
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		;
createNode transform -n "neck_CC_grp" -p "back3_CC";
	rename -uid "AEC32A74-4E67-3E5A-D4ED-B4AC15ABB253";
	setAttr ".t" -type "double3" -2.4158997395199813e-09 0.97937456766764264 -2.5528459040328078 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.5 0.5 0.5 ;
createNode transform -n "neck_CC" -p "neck_CC_grp";
	rename -uid "22FFBCA1-41B6-07BA-AD85-2F8F178DFF7A";
	setAttr ".t" -type "double3" 0 0 7.1054273576010019e-15 ;
	setAttr ".rp" -type "double3" 0 4.8579629337796009 -3.5527136788005009e-15 ;
	setAttr ".sp" -type "double3" 0 4.8579629337796009 -3.5527136788005009e-15 ;
createNode nurbsCurve -n "neck_CCShape" -p "neck_CC";
	rename -uid "5EFDE628-48B2-BBE0-BCC0-C19D9495D4C0";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		-1.1081941875543881 3.5177356190060272e-33 -5.7448982375248304e-17
		-0.78361162489122449 -4.7982373409884725e-17 0.78361162489122449
		-1.1100856969603225e-16 -6.7857323231109171e-17 1.1081941875543884
		0.78361162489122449 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543881 -9.2536792101100989e-33 1.511240500779959e-16
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		;
createNode transform -n "head_CC_grp" -p "neck_CC";
	rename -uid "EB18022F-4465-88F9-9806-CC93B8D710E0";
	setAttr ".t" -type "double3" -2.7391081403038697e-08 6.9621312892445362 -8.8461929299009512 ;
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr ".s" -type "double3" 4.7608890376618573 4.7608890376618573 4.7608890376618573 ;
createNode transform -n "head_CC" -p "head_CC_grp";
	rename -uid "4A907551-4C2F-ECF4-A9F1-4E9BEFEC1389";
createNode nurbsCurve -n "head_CCShape" -p "head_CC";
	rename -uid "A404A6C3-442B-95BD-ACC3-EB8634DBAE03";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "jaw_CC_grp" -p "head_CC";
	rename -uid "F91B1BC5-4F27-AB05-5C09-3DAA8515242C";
	setAttr ".t" -type "double3" -9.2389871803152208e-10 -1.5501709862761759 0.55389566346243413 ;
	setAttr ".s" -type "double3" 0.18004123008805209 0.18004123008805209 0.18004123008805209 ;
createNode transform -n "jaw_CC" -p "jaw_CC_grp";
	rename -uid "D66D9127-4F01-6445-83B4-028FB8BF6D1B";
createNode nurbsCurve -n "jaw_CCShape" -p "jaw_CC";
	rename -uid "8AC20787-4430-6D02-116D-B1AA05F84A61";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.097291893138067936 0.097291893138067978 0
		6.7857323231109122e-17 1.1081941875543877 0
		-0.097291893138067936 0.097291893138067936 0
		-1.1081941875543881 5.7448982375248304e-17 0
		-0.097291893138067936 -0.097291893138067936 0
		-1.1100856969603225e-16 -1.1081941875543884 0
		0.097291893138067936 -0.097291893138067936 0
		1.1081941875543881 -1.511240500779959e-16 0
		0.097291893138067936 0.097291893138067978 0
		6.7857323231109122e-17 1.1081941875543877 0
		-0.097291893138067936 0.097291893138067936 0
		;
createNode transform -n "L_eye_CC_grp" -p "head_CC";
	rename -uid "E2167644-4963-579E-AC6C-B0A0921F9C86";
	setAttr ".t" -type "double3" 0.15185372956263463 -1.0674278641812727 0.79788951003624509 ;
	setAttr ".s" -type "double3" 0.18004123008805209 0.18004123008805209 0.18004123008805209 ;
createNode transform -n "L_eye_CC" -p "L_eye_CC_grp";
	rename -uid "B449269B-4D71-CB19-FA88-E1BAEF9B4B75";
createNode nurbsCurve -n "L_eye_CCShape" -p "L_eye_CC";
	rename -uid "B664B07B-44BE-1785-3AA8-DC9E777A987D";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "L_clavicle_CC_grp" -p "back3_CC_grp";
	rename -uid "BE32FBFB-4678-FA37-232F-34A69C09E928";
	setAttr ".t" -type "double3" 0.57168185734702703 0.90227635701497455 -0.063934619228044942 ;
createNode transform -n "L_clavicle_CC" -p "L_clavicle_CC_grp";
	rename -uid "C94107FB-4988-BB78-A689-CB8AEAB08C98";
createNode nurbsCurve -n "L_clavicle_CCShape" -p "L_clavicle_CC";
	rename -uid "C6A1A136-4A28-416D-6B38-A787F23FDD63";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "L_wrist_CC_grp" -p "L_clavicle_CC";
	rename -uid "CA8DE5AA-4236-A786-5051-7E8C5DC2A936";
	setAttr ".t" -type "double3" 3.6439191102981567 0 -2.5905203907920316e-16 ;
createNode transform -n "L_wrist_CC" -p "L_wrist_CC_grp";
	rename -uid "7079A704-49B0-BEE6-6F76-EBA661EB5A1F";
createNode nurbsCurve -n "L_wrist_CCShape" -p "L_wrist_CC";
	rename -uid "47B1B70F-40BE-1D5D-592F-CFA2CFA444CE";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.7982373409884725e-17 0.7836116248912246 -0.78361162489122449
		4.1550626846842558e-33 1.1081941875543877 -6.7857323231109122e-17
		-4.7982373409884725e-17 0.78361162489122438 0.78361162489122449
		-6.7857323231109146e-17 5.7448982375248304e-17 1.1081941875543881
		-4.7982373409884725e-17 -0.78361162489122449 0.78361162489122449
		-6.7973144778085889e-33 -1.1081941875543884 1.1100856969603225e-16
		4.7982373409884725e-17 -0.78361162489122438 -0.78361162489122449
		6.7857323231109146e-17 -1.511240500779959e-16 -1.1081941875543881
		4.7982373409884725e-17 0.7836116248912246 -0.78361162489122449
		4.1550626846842558e-33 1.1081941875543877 -6.7857323231109122e-17
		-4.7982373409884725e-17 0.78361162489122438 0.78361162489122449
		;
createNode transform -n "L_hand_CC_grp" -p "L_wrist_CC";
	rename -uid "799B94BD-4464-BBDA-9CD0-A0A60A3EB648";
	setAttr ".t" -type "double3" 2.8252292532486241 0 0 ;
	setAttr ".s" -type "double3" 1 0.33333333333333331 1 ;
createNode transform -n "L_hand_CC" -p "L_hand_CC_grp";
	rename -uid "43551C5D-471F-58ED-04D6-6BA8B3B43996";
createNode nurbsCurve -n "L_hand_CCShape" -p "L_hand_CC";
	rename -uid "3839A135-4F2A-C9A0-CCC3-1585B0035CA6";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.7982373409884725e-17 1.2357616060799941 -0.78361162489122449
		4.1550626846842558e-33 1.1081941875543877 -6.7857323231109122e-17
		-4.7982373409884725e-17 1.2357616060799939 0.78361162489122449
		-6.7857323231109146e-17 5.7448982375248304e-17 1.1081941875543881
		-4.7982373409884725e-17 -1.2357616060799939 0.78361162489122449
		-6.7973144778085889e-33 -1.1081941875543884 1.1100856969603225e-16
		4.7982373409884725e-17 -1.2357616060799939 -0.78361162489122449
		6.7857323231109146e-17 -1.511240500779959e-16 -1.1081941875543881
		4.7982373409884725e-17 1.2357616060799941 -0.78361162489122449
		4.1550626846842558e-33 1.1081941875543877 -6.7857323231109122e-17
		-4.7982373409884725e-17 1.2357616060799939 0.78361162489122449
		;
createNode transform -n "pelvis_CC_grp" -p "All_CC";
	rename -uid "DCCD0E70-452B-72AF-84F6-498B8139DB1F";
	setAttr ".t" -type "double3" -5.9723831785379916e-20 -0.29624017079671194 -0.033756859600543976 ;
createNode transform -n "pelvis_CC" -p "pelvis_CC_grp";
	rename -uid "F87B565F-46B5-D29A-9411-EF9E115AB44B";
createNode nurbsCurve -n "pelvis_CCShape" -p "pelvis_CC";
	rename -uid "18C5A9B6-4983-AA61-8028-0DBA4161E519";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		-1.1081941875543881 3.5177356190060272e-33 -5.7448982375248304e-17
		-0.78361162489122449 -4.7982373409884725e-17 0.78361162489122449
		-1.1100856969603225e-16 -6.7857323231109171e-17 1.1081941875543884
		0.78361162489122449 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543881 -9.2536792101100989e-33 1.511240500779959e-16
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		;
createNode transform -n "L_hip_CC_grp" -p "pelvis_CC";
	rename -uid "7AFD412D-4330-C376-B08A-DCB8D628D963";
	setAttr ".t" -type "double3" 0.54348977406819654 -0.35966746012369821 -0.003569419185320534 ;
createNode transform -n "L_hip_CC" -p "L_hip_CC_grp";
	rename -uid "78779A8D-489E-6484-2845-65AA2322AFAB";
createNode nurbsCurve -n "L_hip_CCShape" -p "L_hip_CC";
	rename -uid "317D1750-477A-9848-8CDF-B4A5459815BE";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		-1.1081941875543881 3.5177356190060272e-33 -5.7448982375248304e-17
		-0.78361162489122449 -4.7982373409884725e-17 0.78361162489122449
		-1.1100856969603225e-16 -6.7857323231109171e-17 1.1081941875543884
		0.78361162489122449 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543881 -9.2536792101100989e-33 1.511240500779959e-16
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		;
createNode transform -n "L_foot_CC_grp" -p "L_hip_CC";
	rename -uid "A49E3286-4E60-D662-DCB2-C1A6AB4099CE";
	setAttr ".t" -type "double3" 0 -4.965266772798107 0.98040137936671568 ;
	setAttr ".s" -type "double3" 0.91666666666666663 1.5 1.5 ;
createNode transform -n "L_foot_CC" -p "L_foot_CC_grp";
	rename -uid "B4257842-42D7-1519-5871-64ADE7295B70";
createNode nurbsCurve -n "L_foot_CCShape" -p "L_foot_CC";
	rename -uid "5EE219E6-4A0C-0A3C-145A-ACBC4E257188";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.52268549687211474 4.7982373409884731e-17 -0.69072269704924483
		6.7857323231109122e-17 6.7857323231109122e-17 -1.0153052597124084
		-0.52268549687211474 4.7982373409884719e-17 -0.6907226970492446
		-0.35346463179656673 3.5177356190060272e-33 -5.7448982375248304e-17
		-0.78361162489122449 -4.7982373409884725e-17 0.38483556970712024
		-1.1100856969603225e-16 -6.7857323231109171e-17 1.1081941875543884
		0.78361162489122449 -4.7982373409884719e-17 0.38483556970712013
		0.35346463179656673 -9.2536792101100989e-33 1.511240500779959e-16
		0.52268549687211474 4.7982373409884731e-17 -0.69072269704924483
		6.7857323231109122e-17 6.7857323231109122e-17 -1.0153052597124084
		-0.52268549687211474 4.7982373409884719e-17 -0.6907226970492446
		;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "A4D5E519-4442-0AFA-625A-BEB8C982DB7E";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "94E1B881-41EE-CEAF-2F38-CB8CB2F7CB37";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "E63CC603-46B3-459A-E991-8B824DE28A2F";
createNode displayLayerManager -n "layerManager";
	rename -uid "ACE3E800-411B-FDC9-C947-5A81874A4478";
createNode displayLayer -n "defaultLayer";
	rename -uid "C5747804-46BF-6608-2ABC-57AAA209AC9E";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "E75B1C50-4135-1138-E90E-A2A200708022";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "B5828F9E-4413-4996-6164-C6B99F239ABF";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "50DD0A5A-49EC-A1C1-ABA4-91A783659D6C";
	setAttr ".version" -type "string" "5.3.1.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "C0914C00-4A38-53C7-BB12-508E3C90704C";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "2E277BEC-4637-ED70-E0F1-B8881FCBD18B";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "5B410F4F-4962-F611-FADA-4C971909FFE0";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "7C7B9B1B-4B11-92BA-F91D-DCBA1BABFC26";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1208\n            -height 809\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1209\n            -height 808\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n"
		+ "            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n"
		+ "            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -excludeObjectPreset \"All\" \n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n"
		+ "            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1209\\n    -height 808\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1209\\n    -height 808\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "35651B45-4F22-86CA-9A90-789E13E7C635";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "C57C9BA2-4CEA-4B66-1EFD-D18D3E9BE99A";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".tol" 0;
createNode makeNurbCircle -n "makeNurbCircle2";
	rename -uid "A7C49AC1-4E06-5DE4-CE9E-9395493D30C2";
	setAttr ".tol" 0;
createNode makeNurbCircle -n "makeNurbCircle3";
	rename -uid "E295BD32-490C-2301-094B-55B522E0C417";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".tol" 0;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".etmr" no;
	setAttr ".tmr" 4096;
	setAttr ".dli" 1;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".b" 0.80000001192092896;
	setAttr ".bc" -type "float3" 1 1 1 ;
	setAttr ".s" 0.20000000298023224;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya-legacy/config.ocio";
	setAttr ".vtn" -type "string" "sRGB gamma (legacy)";
	setAttr ".vn" -type "string" "sRGB gamma";
	setAttr ".dn" -type "string" "legacy";
	setAttr ".wsn" -type "string" "scene-linear Rec 709/sRGB";
	setAttr ".ovt" no;
	setAttr ".povt" no;
	setAttr ".otn" -type "string" "sRGB gamma (legacy)";
	setAttr ".potn" -type "string" "sRGB gamma (legacy)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "root_jnt_parentConstraint1.ctx" "root_jnt.tx";
connectAttr "root_jnt_parentConstraint1.cty" "root_jnt.ty";
connectAttr "root_jnt_parentConstraint1.ctz" "root_jnt.tz";
connectAttr "root_jnt_parentConstraint1.crx" "root_jnt.rx";
connectAttr "root_jnt_parentConstraint1.cry" "root_jnt.ry";
connectAttr "root_jnt_parentConstraint1.crz" "root_jnt.rz";
connectAttr "root_jnt.s" "back1_jnt.is";
connectAttr "back1_jnt_parentConstraint1.ctx" "back1_jnt.tx";
connectAttr "back1_jnt_parentConstraint1.cty" "back1_jnt.ty";
connectAttr "back1_jnt_parentConstraint1.ctz" "back1_jnt.tz";
connectAttr "back1_jnt_parentConstraint1.crx" "back1_jnt.rx";
connectAttr "back1_jnt_parentConstraint1.cry" "back1_jnt.ry";
connectAttr "back1_jnt_parentConstraint1.crz" "back1_jnt.rz";
connectAttr "back1_jnt.s" "back2_jnt.is";
connectAttr "back2_jnt_parentConstraint1.ctx" "back2_jnt.tx";
connectAttr "back2_jnt_parentConstraint1.cty" "back2_jnt.ty";
connectAttr "back2_jnt_parentConstraint1.ctz" "back2_jnt.tz";
connectAttr "back2_jnt_parentConstraint1.crx" "back2_jnt.rx";
connectAttr "back2_jnt_parentConstraint1.cry" "back2_jnt.ry";
connectAttr "back2_jnt_parentConstraint1.crz" "back2_jnt.rz";
connectAttr "back2_jnt.s" "back3_jnt.is";
connectAttr "back3_jnt_parentConstraint1.ctx" "back3_jnt.tx";
connectAttr "back3_jnt_parentConstraint1.cty" "back3_jnt.ty";
connectAttr "back3_jnt_parentConstraint1.ctz" "back3_jnt.tz";
connectAttr "back3_jnt_parentConstraint1.crx" "back3_jnt.rx";
connectAttr "back3_jnt_parentConstraint1.cry" "back3_jnt.ry";
connectAttr "back3_jnt_parentConstraint1.crz" "back3_jnt.rz";
connectAttr "back3_jnt.s" "neck_jnt.is";
connectAttr "neck_jnt_parentConstraint1.ctx" "neck_jnt.tx";
connectAttr "neck_jnt_parentConstraint1.cty" "neck_jnt.ty";
connectAttr "neck_jnt_parentConstraint1.ctz" "neck_jnt.tz";
connectAttr "neck_jnt_parentConstraint1.crx" "neck_jnt.rx";
connectAttr "neck_jnt_parentConstraint1.cry" "neck_jnt.ry";
connectAttr "neck_jnt_parentConstraint1.crz" "neck_jnt.rz";
connectAttr "neck_jnt.s" "head_jnt.is";
connectAttr "head_jnt.s" "headtip_jnt.is";
connectAttr "head_jnt.s" "jaw_jnt1.is";
connectAttr "jaw_jnt1.s" "jaw_jnt2.is";
connectAttr "head_jnt.s" "L_eyeball_jnt.is";
connectAttr "neck_jnt.ro" "neck_jnt_parentConstraint1.cro";
connectAttr "neck_jnt.pim" "neck_jnt_parentConstraint1.cpim";
connectAttr "neck_jnt.rp" "neck_jnt_parentConstraint1.crp";
connectAttr "neck_jnt.rpt" "neck_jnt_parentConstraint1.crt";
connectAttr "neck_jnt.jo" "neck_jnt_parentConstraint1.cjo";
connectAttr "neck_CC.t" "neck_jnt_parentConstraint1.tg[0].tt";
connectAttr "neck_CC.rp" "neck_jnt_parentConstraint1.tg[0].trp";
connectAttr "neck_CC.rpt" "neck_jnt_parentConstraint1.tg[0].trt";
connectAttr "neck_CC.r" "neck_jnt_parentConstraint1.tg[0].tr";
connectAttr "neck_CC.ro" "neck_jnt_parentConstraint1.tg[0].tro";
connectAttr "neck_CC.s" "neck_jnt_parentConstraint1.tg[0].ts";
connectAttr "neck_CC.pm" "neck_jnt_parentConstraint1.tg[0].tpm";
connectAttr "neck_jnt_parentConstraint1.w0" "neck_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "back3_jnt.s" "L_clavicle_jnt.is";
connectAttr "L_clavicle_jnt.s" "L_shoulder_jnt.is";
connectAttr "L_shoulder_jnt_parentConstraint1.ctx" "L_shoulder_jnt.tx";
connectAttr "L_shoulder_jnt_parentConstraint1.cty" "L_shoulder_jnt.ty";
connectAttr "L_shoulder_jnt_parentConstraint1.ctz" "L_shoulder_jnt.tz";
connectAttr "L_shoulder_jnt_parentConstraint1.crx" "L_shoulder_jnt.rx";
connectAttr "L_shoulder_jnt_parentConstraint1.cry" "L_shoulder_jnt.ry";
connectAttr "L_shoulder_jnt_parentConstraint1.crz" "L_shoulder_jnt.rz";
connectAttr "L_shoulder_jnt.s" "L_elbow_jnt.is";
connectAttr "L_elbow_jnt.s" "L_forearm.is";
connectAttr "L_elbow_jnt.s" "L_wrist_jnt.is";
connectAttr "L_wrist_jnt_parentConstraint1.ctx" "L_wrist_jnt.tx";
connectAttr "L_wrist_jnt_parentConstraint1.cty" "L_wrist_jnt.ty";
connectAttr "L_wrist_jnt_parentConstraint1.ctz" "L_wrist_jnt.tz";
connectAttr "L_wrist_jnt_parentConstraint1.crx" "L_wrist_jnt.rx";
connectAttr "L_wrist_jnt_parentConstraint1.cry" "L_wrist_jnt.ry";
connectAttr "L_wrist_jnt_parentConstraint1.crz" "L_wrist_jnt.rz";
connectAttr "L_wrist_jnt.s" "L_pinky_jnt1.is";
connectAttr "L_pinky_jnt1.s" "L_pinky_jnt2.is";
connectAttr "L_pinky_jnt2.s" "L_pinky_jnt3.is";
connectAttr "L_pinky_jnt3.s" "L_pinky_jnt4.is";
connectAttr "L_wrist_jnt.s" "L_ring_jnt1.is";
connectAttr "L_ring_jnt1.s" "L_ring_jnt2.is";
connectAttr "L_ring_jnt2.s" "L_ring_jnt3.is";
connectAttr "L_ring_jnt3.s" "L_ring_jnt4.is";
connectAttr "L_wrist_jnt.s" "L_middle_jnt1.is";
connectAttr "L_middle_jnt1.s" "L_middle_jnt2.is";
connectAttr "L_middle_jnt2.s" "L_middle_jnt3.is";
connectAttr "L_middle_jnt3.s" "L_middle_jnt4.is";
connectAttr "L_wrist_jnt.s" "L_index_jnt1.is";
connectAttr "L_index_jnt1.s" "L_index_jnt2.is";
connectAttr "L_index_jnt2.s" "L_index_jnt3.is";
connectAttr "L_index_jnt3.s" "L_index_jnt4.is";
connectAttr "L_wrist_jnt.s" "L_thumb_jnt1.is";
connectAttr "L_thumb_jnt1.s" "L_thumb_jnt2.is";
connectAttr "L_thumb_jnt2.s" "L_thumb_jnt3.is";
connectAttr "L_wrist_jnt.ro" "L_wrist_jnt_parentConstraint1.cro";
connectAttr "L_wrist_jnt.pim" "L_wrist_jnt_parentConstraint1.cpim";
connectAttr "L_wrist_jnt.rp" "L_wrist_jnt_parentConstraint1.crp";
connectAttr "L_wrist_jnt.rpt" "L_wrist_jnt_parentConstraint1.crt";
connectAttr "L_wrist_jnt.jo" "L_wrist_jnt_parentConstraint1.cjo";
connectAttr "L_wrist_CC.t" "L_wrist_jnt_parentConstraint1.tg[0].tt";
connectAttr "L_wrist_CC.rp" "L_wrist_jnt_parentConstraint1.tg[0].trp";
connectAttr "L_wrist_CC.rpt" "L_wrist_jnt_parentConstraint1.tg[0].trt";
connectAttr "L_wrist_CC.r" "L_wrist_jnt_parentConstraint1.tg[0].tr";
connectAttr "L_wrist_CC.ro" "L_wrist_jnt_parentConstraint1.tg[0].tro";
connectAttr "L_wrist_CC.s" "L_wrist_jnt_parentConstraint1.tg[0].ts";
connectAttr "L_wrist_CC.pm" "L_wrist_jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_wrist_jnt_parentConstraint1.w0" "L_wrist_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_shoulder_jnt.ro" "L_shoulder_jnt_parentConstraint1.cro";
connectAttr "L_shoulder_jnt.pim" "L_shoulder_jnt_parentConstraint1.cpim";
connectAttr "L_shoulder_jnt.rp" "L_shoulder_jnt_parentConstraint1.crp";
connectAttr "L_shoulder_jnt.rpt" "L_shoulder_jnt_parentConstraint1.crt";
connectAttr "L_shoulder_jnt.jo" "L_shoulder_jnt_parentConstraint1.cjo";
connectAttr "L_clavicle_CC.t" "L_shoulder_jnt_parentConstraint1.tg[0].tt";
connectAttr "L_clavicle_CC.rp" "L_shoulder_jnt_parentConstraint1.tg[0].trp";
connectAttr "L_clavicle_CC.rpt" "L_shoulder_jnt_parentConstraint1.tg[0].trt";
connectAttr "L_clavicle_CC.r" "L_shoulder_jnt_parentConstraint1.tg[0].tr";
connectAttr "L_clavicle_CC.ro" "L_shoulder_jnt_parentConstraint1.tg[0].tro";
connectAttr "L_clavicle_CC.s" "L_shoulder_jnt_parentConstraint1.tg[0].ts";
connectAttr "L_clavicle_CC.pm" "L_shoulder_jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_shoulder_jnt_parentConstraint1.w0" "L_shoulder_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "back3_jnt.ro" "back3_jnt_parentConstraint1.cro";
connectAttr "back3_jnt.pim" "back3_jnt_parentConstraint1.cpim";
connectAttr "back3_jnt.rp" "back3_jnt_parentConstraint1.crp";
connectAttr "back3_jnt.rpt" "back3_jnt_parentConstraint1.crt";
connectAttr "back3_jnt.jo" "back3_jnt_parentConstraint1.cjo";
connectAttr "back3_CC.t" "back3_jnt_parentConstraint1.tg[0].tt";
connectAttr "back3_CC.rp" "back3_jnt_parentConstraint1.tg[0].trp";
connectAttr "back3_CC.rpt" "back3_jnt_parentConstraint1.tg[0].trt";
connectAttr "back3_CC.r" "back3_jnt_parentConstraint1.tg[0].tr";
connectAttr "back3_CC.ro" "back3_jnt_parentConstraint1.tg[0].tro";
connectAttr "back3_CC.s" "back3_jnt_parentConstraint1.tg[0].ts";
connectAttr "back3_CC.pm" "back3_jnt_parentConstraint1.tg[0].tpm";
connectAttr "back3_jnt_parentConstraint1.w0" "back3_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "back2_jnt.ro" "back2_jnt_parentConstraint1.cro";
connectAttr "back2_jnt.pim" "back2_jnt_parentConstraint1.cpim";
connectAttr "back2_jnt.rp" "back2_jnt_parentConstraint1.crp";
connectAttr "back2_jnt.rpt" "back2_jnt_parentConstraint1.crt";
connectAttr "back2_jnt.jo" "back2_jnt_parentConstraint1.cjo";
connectAttr "back2_CC.t" "back2_jnt_parentConstraint1.tg[0].tt";
connectAttr "back2_CC.rp" "back2_jnt_parentConstraint1.tg[0].trp";
connectAttr "back2_CC.rpt" "back2_jnt_parentConstraint1.tg[0].trt";
connectAttr "back2_CC.r" "back2_jnt_parentConstraint1.tg[0].tr";
connectAttr "back2_CC.ro" "back2_jnt_parentConstraint1.tg[0].tro";
connectAttr "back2_CC.s" "back2_jnt_parentConstraint1.tg[0].ts";
connectAttr "back2_CC.pm" "back2_jnt_parentConstraint1.tg[0].tpm";
connectAttr "back2_jnt_parentConstraint1.w0" "back2_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "back1_jnt.ro" "back1_jnt_parentConstraint1.cro";
connectAttr "back1_jnt.pim" "back1_jnt_parentConstraint1.cpim";
connectAttr "back1_jnt.rp" "back1_jnt_parentConstraint1.crp";
connectAttr "back1_jnt.rpt" "back1_jnt_parentConstraint1.crt";
connectAttr "back1_jnt.jo" "back1_jnt_parentConstraint1.cjo";
connectAttr "back1_CC.t" "back1_jnt_parentConstraint1.tg[0].tt";
connectAttr "back1_CC.rp" "back1_jnt_parentConstraint1.tg[0].trp";
connectAttr "back1_CC.rpt" "back1_jnt_parentConstraint1.tg[0].trt";
connectAttr "back1_CC.r" "back1_jnt_parentConstraint1.tg[0].tr";
connectAttr "back1_CC.ro" "back1_jnt_parentConstraint1.tg[0].tro";
connectAttr "back1_CC.s" "back1_jnt_parentConstraint1.tg[0].ts";
connectAttr "back1_CC.pm" "back1_jnt_parentConstraint1.tg[0].tpm";
connectAttr "back1_jnt_parentConstraint1.w0" "back1_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "root_jnt.s" "pelvis_jnt.is";
connectAttr "pelvis_jnt_parentConstraint1.ctx" "pelvis_jnt.tx";
connectAttr "pelvis_jnt_parentConstraint1.cty" "pelvis_jnt.ty";
connectAttr "pelvis_jnt_parentConstraint1.ctz" "pelvis_jnt.tz";
connectAttr "pelvis_jnt_parentConstraint1.crx" "pelvis_jnt.rx";
connectAttr "pelvis_jnt_parentConstraint1.cry" "pelvis_jnt.ry";
connectAttr "pelvis_jnt_parentConstraint1.crz" "pelvis_jnt.rz";
connectAttr "pelvis_jnt.s" "L_hip_jnt.is";
connectAttr "L_hip_jnt_parentConstraint1.ctx" "L_hip_jnt.tx";
connectAttr "L_hip_jnt_parentConstraint1.cty" "L_hip_jnt.ty";
connectAttr "L_hip_jnt_parentConstraint1.ctz" "L_hip_jnt.tz";
connectAttr "L_hip_jnt_parentConstraint1.crx" "L_hip_jnt.rx";
connectAttr "L_hip_jnt_parentConstraint1.cry" "L_hip_jnt.ry";
connectAttr "L_hip_jnt_parentConstraint1.crz" "L_hip_jnt.rz";
connectAttr "L_hip_jnt.s" "L_knee_jnt.is";
connectAttr "L_knee_jnt.s" "L_ankle_jnt.is";
connectAttr "L_ankle_jnt.s" "L_ball_jnt.is";
connectAttr "L_ball_jnt.s" "L_toe_jnt.is";
connectAttr "L_hip_jnt.ro" "L_hip_jnt_parentConstraint1.cro";
connectAttr "L_hip_jnt.pim" "L_hip_jnt_parentConstraint1.cpim";
connectAttr "L_hip_jnt.rp" "L_hip_jnt_parentConstraint1.crp";
connectAttr "L_hip_jnt.rpt" "L_hip_jnt_parentConstraint1.crt";
connectAttr "L_hip_jnt.jo" "L_hip_jnt_parentConstraint1.cjo";
connectAttr "L_hip_CC.t" "L_hip_jnt_parentConstraint1.tg[0].tt";
connectAttr "L_hip_CC.rp" "L_hip_jnt_parentConstraint1.tg[0].trp";
connectAttr "L_hip_CC.rpt" "L_hip_jnt_parentConstraint1.tg[0].trt";
connectAttr "L_hip_CC.r" "L_hip_jnt_parentConstraint1.tg[0].tr";
connectAttr "L_hip_CC.ro" "L_hip_jnt_parentConstraint1.tg[0].tro";
connectAttr "L_hip_CC.s" "L_hip_jnt_parentConstraint1.tg[0].ts";
connectAttr "L_hip_CC.pm" "L_hip_jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_hip_jnt_parentConstraint1.w0" "L_hip_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "pelvis_jnt.ro" "pelvis_jnt_parentConstraint1.cro";
connectAttr "pelvis_jnt.pim" "pelvis_jnt_parentConstraint1.cpim";
connectAttr "pelvis_jnt.rp" "pelvis_jnt_parentConstraint1.crp";
connectAttr "pelvis_jnt.rpt" "pelvis_jnt_parentConstraint1.crt";
connectAttr "pelvis_jnt.jo" "pelvis_jnt_parentConstraint1.cjo";
connectAttr "pelvis_CC.t" "pelvis_jnt_parentConstraint1.tg[0].tt";
connectAttr "pelvis_CC.rp" "pelvis_jnt_parentConstraint1.tg[0].trp";
connectAttr "pelvis_CC.rpt" "pelvis_jnt_parentConstraint1.tg[0].trt";
connectAttr "pelvis_CC.r" "pelvis_jnt_parentConstraint1.tg[0].tr";
connectAttr "pelvis_CC.ro" "pelvis_jnt_parentConstraint1.tg[0].tro";
connectAttr "pelvis_CC.s" "pelvis_jnt_parentConstraint1.tg[0].ts";
connectAttr "pelvis_CC.pm" "pelvis_jnt_parentConstraint1.tg[0].tpm";
connectAttr "pelvis_jnt_parentConstraint1.w0" "pelvis_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "root_jnt.ro" "root_jnt_parentConstraint1.cro";
connectAttr "root_jnt.pim" "root_jnt_parentConstraint1.cpim";
connectAttr "root_jnt.rp" "root_jnt_parentConstraint1.crp";
connectAttr "root_jnt.rpt" "root_jnt_parentConstraint1.crt";
connectAttr "root_jnt.jo" "root_jnt_parentConstraint1.cjo";
connectAttr "All_CC.t" "root_jnt_parentConstraint1.tg[0].tt";
connectAttr "All_CC.rp" "root_jnt_parentConstraint1.tg[0].trp";
connectAttr "All_CC.rpt" "root_jnt_parentConstraint1.tg[0].trt";
connectAttr "All_CC.r" "root_jnt_parentConstraint1.tg[0].tr";
connectAttr "All_CC.ro" "root_jnt_parentConstraint1.tg[0].tro";
connectAttr "All_CC.s" "root_jnt_parentConstraint1.tg[0].ts";
connectAttr "All_CC.pm" "root_jnt_parentConstraint1.tg[0].tpm";
connectAttr "root_jnt_parentConstraint1.w0" "root_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "makeNurbCircle3.oc" "head_CCShape.cr";
connectAttr "makeNurbCircle2.oc" "L_eye_CCShape.cr";
connectAttr "makeNurbCircle1.oc" "L_clavicle_CCShape.cr";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of joint.ma
