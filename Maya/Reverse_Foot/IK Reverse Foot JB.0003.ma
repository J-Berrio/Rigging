//Maya ASCII 2017 scene
//Name: IK Reverse Foot JB.0003.ma
//Last modified: Wed, Apr 05, 2017 02:05:33 PM
//Codeset: UTF-8
requires maya "2017";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201606150345-997974";
fileInfo "osv" "Mac OS X 10.11.6";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "DA017BFD-4A2E-02AF-41DB-14AB290E441B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 78.322793187406376 31.656354610544348 3.8678917932661117 ;
	setAttr ".r" -type "double3" -7.53835272913543 91.00000000000361 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "EDE135E4-4D23-E62C-A62E-1B9AD6561A41";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 82.701566225776986;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -1.1102230246251565e-15 4.568123129702057 7.87327000334502 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "D7D9BC85-48BB-0C8A-00F8-7497BF190A6F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.5582908976061995 1000.1 7.0371492588769886 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "BE34A8BB-458D-9EF7-6199-B0A79F64AC25";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 43.517596627107693;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "2EB1013F-4490-9A18-F609-85A0920B5800";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.2889705673971035 22.464213382944763 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "1609F947-4DC8-1964-C2AC-C8B206A3112D";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 107.77652838803539;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "F9F9EF4C-4967-E6A7-E87D-FFAA2A2BAE30";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 4.5403370604662632 4.4712505327964012 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "1B12C8F1-46EC-FB47-7433-D99B63E76A28";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 27.680890716722931;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "ReverseFoot_Example";
	rename -uid "666E0A5A-4E1B-FC6F-A249-80A7D0597E27";
	setAttr ".v" no;
createNode transform -n "Leg" -p "ReverseFoot_Example";
	rename -uid "E528AC30-4BD8-4F74-7211-C5ABEE778D6B";
createNode transform -n "Skeleton" -p "Leg";
	rename -uid "5ABB498A-4706-6B54-A679-6BAA191E15CB";
createNode transform -n "Limbs_Jnt_Grp" -p "|ReverseFoot_Example|Leg|Skeleton";
	rename -uid "7C63BD69-49F6-2425-3FC2-3C80EF8D088A";
createNode transform -n "L_Leg_Jnt_Grp" -p "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp";
	rename -uid "7A4EBFF2-4573-9BBD-B1FB-B8B8DD9A64FC";
createNode transform -n "L_Leg_IK_Jnt_Grp" -p "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp";
	rename -uid "4A848732-4C54-C95E-EA93-B0815949898A";
createNode joint -n "L_Leg_Hip_IK_Jnt" -p "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp";
	rename -uid "7F3D1843-4B99-8D69-B226-04A28AF1F71D";
	setAttr ".r" -type "double3" -1.4271482677760646e-19 1.5405488462742004e-17 0.0015522290522988287 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999986 -1.2722218725854067e-14 -90 ;
	setAttr ".radi" 1.6896551724137934;
createNode joint -n "L_Leg_Knee_IK_Jnt" -p "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt";
	rename -uid "91C2597B-4965-EE85-59E2-DEB4C28F76FC";
	setAttr ".t" -type "double3" 24 2.6645352591003757e-15 7.8886090522101181e-31 ;
	setAttr ".r" -type "double3" -1.1093917758797952e-15 1.2683916371035613e-14 -0.0037436115398632886 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 0 -5 ;
	setAttr ".radi" 1.3275862068965516;
createNode joint -n "L_Leg_Ankle_IK_Jnt" -p "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt|L_Leg_Knee_IK_Jnt";
	rename -uid "7B79B801-4291-DF6B-718A-2F8AE7294CEB";
	setAttr ".t" -type "double3" 17.000000000000004 -8.3816471179732504e-31 3.774758283725533e-15 ;
	setAttr ".r" -type "double3" -1.2722218725854067e-14 -1.2722218725854067e-14 1.4124500153760508e-30 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.3275862068965516;
createNode ikEffector -n "effector1" -p "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt|L_Leg_Knee_IK_Jnt";
	rename -uid "1972A650-41B9-08CF-95D0-07B33A237232";
	setAttr ".v" no;
	setAttr -k on ".dla" yes;
	setAttr ".hd" yes;
createNode pointConstraint -n "L_Leg_Hip_IK_Jnt_pointConstraint1" -p "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt";
	rename -uid "BFB40179-42CC-A5B5-932A-D2B1B81B7D47";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_Base_IK_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".rst" -type "double3" 0 47 0 ;
	setAttr -k on ".w0";
createNode joint -n "L_Foot_01_IK_Jnt" -p "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp";
	rename -uid "09C2E118-4734-9541-5F7C-3E97F62B9EA7";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 -59.236403708555592 -90 ;
	setAttr ".pa" -type "double3" 2.5444437451708131e-14 -6.1786015451299607e-30 5.6498000615042002e-30 ;
	setAttr ".radi" 2.1266540896073316;
createNode joint -n "L_Foot_02_IK_Jnt" -p "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt";
	rename -uid "C9F60056-4999-301E-33AF-C4AB9C0533B0";
	setAttr ".t" -type "double3" 7.3153123990750775 -1.7763568394002505e-15 1.6243256515558083e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 30.763596291444411 ;
	setAttr ".radi" 2.1266540896073316;
createNode joint -n "L_Foot_03_IK_Jnt" -p "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt|L_Foot_02_IK_Jnt";
	rename -uid "92BAF96A-48FC-1894-AF26-9AB53691CB84";
	setAttr ".t" -type "double3" 6.0000000000000062 -9.9920072216264148e-16 1.3151603934504324e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 2.1266540896073316;
createNode ikEffector -n "effector3" -p "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt|L_Foot_02_IK_Jnt";
	rename -uid "99621EDB-46B4-89A2-BC30-D2856D4F2145";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector2" -p "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt";
	rename -uid "0DA9CAD2-40E8-E75B-3A6E-2AAB1D0D9B10";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "L_Foot_01_IK_Jnt_parentConstraint1" -p "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt";
	rename -uid "17B7D6FC-425B-C295-773B-549DA2A0FF35";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_Ankle_IK_JntW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 2.1241369552171818e-08 8.858053301822634e-11 
		5.3287005601876849e-15 ;
	setAttr ".tg[0].tor" -type "double3" -1.365789960236565e-14 -1.9423156005972107e-14 
		59.238595091043159 ;
	setAttr ".lr" -type "double3" 6.3611093629270327e-15 2.3059021440610497e-14 -3.1805546814635152e-15 ;
	setAttr ".rst" -type "double3" 0 6 5.6492752298706515e-20 ;
	setAttr ".rsrr" -type "double3" 6.3611093629270327e-15 2.3059021440610497e-14 -3.1805546814635152e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Foot_01_IK_Jnt_scaleConstraint1" -p "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt";
	rename -uid "BE636E97-45AF-771B-1248-A58A86FFA4F5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_Ankle_IK_JntW0" -dv 1 -min 
		0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "Reverse_Foot_Jnt_Grp" -p "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp";
	rename -uid "1E93C6C7-4085-6458-527E-51BCD56DF1F4";
createNode joint -n "L_Foot_Reverse_Heel_Jnt" -p "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp";
	rename -uid "BF4D52A1-4803-06AC-5CF0-24863508CE1F";
	setAttr ".t" -type "double3" 2.3111159332646827e-32 0 -1.3081057599674608 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.2241379310344833;
createNode joint -n "L_Foot_Reverse_Tip_Jnt" -p "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt";
	rename -uid "89307FEE-48A5-B78C-A02E-058525DE5755";
	setAttr ".t" -type "double3" -2.3665827156630354e-30 0 14.308105759967466 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.81034482758620707;
createNode joint -n "L_Foot_Reverse_Ball_Jnt" -p "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt";
	rename -uid "64B6B73E-49FD-DADD-937F-5C8CCB418897";
	setAttr ".t" -type "double3" 2.6624055551209148e-30 2.2582395076751705 -6.7140612602233931 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.77540803381052203;
createNode joint -n "L_Foot_Reverse_Ankle_Jnt" -p "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Ball_Jnt";
	rename -uid "6F4144D2-48F3-A0DB-A522-0CBA53284B81";
	setAttr ".t" -type "double3" 4.1811188891592539e-15 3.7417604923248295 -6.2859387397766131 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.77540803381052203;
createNode ikHandle -n "L_Leg_IK_Handle" -p "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Ball_Jnt|L_Foot_Reverse_Ankle_Jnt";
	rename -uid "C1177A2C-47B9-A8B3-5E53-D9B09468AB93";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.147581666282927e-15 2.1241378433956015e-08 -8.7549258099249572e-11 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "L_Leg_IK_Handle_poleVectorConstraint1" -p "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Ball_Jnt|L_Foot_Reverse_Ankle_Jnt|L_Leg_IK_Handle";
	rename -uid "0318F305-43F5-3B71-501B-8F8BA8D7A344";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_PV_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 1.2595698380334439e-14 -24.000834434794758 21.817971868324364 ;
	setAttr -k on ".w0";
createNode ikHandle -n "L_Foot_01_IK_Handle" -p "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Ball_Jnt";
	rename -uid "E895B150-4855-F96A-087C-D6B10EA23435";
	setAttr ".t" -type "double3" -1.2171877248527331e-31 8.1282814257122027e-08 -1.048215869658975e-07 ;
	setAttr ".r" -type "double3" 90 -59.236403708555592 -89.999999999999972 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000009 ;
	setAttr ".pv" -type "double3" 1.2325951644078309e-32 -1.6653345369377348e-16 1 ;
	setAttr ".roc" yes;
createNode joint -n "L_Foot_Reverse_Toe_Jnt" -p "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt";
	rename -uid "72D50CCA-49B9-B574-7C20-29B95DE30379";
	setAttr ".t" -type "double3" 2.1594067967763423e-15 2.2582395076751705 -6.7140612602233931 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.3754080338105221;
createNode joint -n "L_Foot_Reverse_Toe_Tip_Jnt" -p "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Toe_Jnt";
	rename -uid "6C8B90DF-44BE-ED8F-D348-8599B82F84E0";
	setAttr ".t" -type "double3" 0 0 5.99999952316284 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.3754080338105221;
createNode ikHandle -n "L_Foot_02_IK_Handle" -p "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Toe_Jnt|L_Foot_Reverse_Toe_Tip_Jnt";
	rename -uid "250B8148-4F0F-F8EC-111C-628B55D1C1DC";
	setAttr ".t" -type "double3" -2.1594067967763395e-15 8.1282813813032817e-08 3.7201557745447644e-07 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.0000000000000018 1 1.0000000000000018 ;
	setAttr ".pv" -type "double3" 9.8607613152626476e-32 -1.6653345369377348e-16 1.0000000000000002 ;
	setAttr ".roc" yes;
createNode parentConstraint -n "Reverse_Foot_Jnt_Grp_parentConstraint1" -p "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp";
	rename -uid "8359FBC4-4231-122A-64B5-A0B808E27357";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_Foot_IK_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 3.7747582837255322e-15 -6 1.8873791418627661e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Reverse_Foot_Jnt_Grp_scaleConstraint1" -p "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp";
	rename -uid "7239A906-4F22-A3EF-9BD9-5EB73FFD3902";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_Foot_IK_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "Controls" -p "Leg";
	rename -uid "48141C3A-4808-DA2C-B467-50A41E68AAAF";
createNode transform -n "Limbs_Ctrl_Grp" -p "|ReverseFoot_Example|Leg|Controls";
	rename -uid "6DEDB457-461A-5CF5-ED86-049E8CE1BF83";
createNode transform -n "L_Leg_Ctrl_Grp" -p "Limbs_Ctrl_Grp";
	rename -uid "0DEBCF4F-4DA0-07AA-6902-44B96DAD4FF3";
createNode transform -n "L_Leg_IK_Ctrl_Grp" -p "L_Leg_Ctrl_Grp";
	rename -uid "27042AFD-4AA4-6576-780B-05B37A6F0507";
createNode transform -n "L_Leg_Base_IK_Ctrl_Grp" -p "L_Leg_IK_Ctrl_Grp";
	rename -uid "16ACC2DB-4C46-A8AE-C499-B1B492D86415";
	setAttr ".t" -type "double3" 0 47 0 ;
createNode transform -n "L_Leg_Base_IK_Ctrl" -p "|ReverseFoot_Example|Leg|Controls|Limbs_Ctrl_Grp|L_Leg_Ctrl_Grp|L_Leg_IK_Ctrl_Grp|L_Leg_Base_IK_Ctrl_Grp";
	rename -uid "AAD1E859-435A-269C-3A2D-AFAEEC3E7DE5";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_Leg_Base_IK_CtrlShape" -p "|ReverseFoot_Example|Leg|Controls|Limbs_Ctrl_Grp|L_Leg_Ctrl_Grp|L_Leg_IK_Ctrl_Grp|L_Leg_Base_IK_Ctrl_Grp|L_Leg_Base_IK_Ctrl";
	rename -uid "02ACE70E-4A5C-E15A-2E80-ECBBF1F1CCF0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.4764924692932841 1.5164142878162704e-16 -2.4764924692932802
		-3.9956932495259797e-16 2.144533652006109e-16 -3.5022892371893954
		-2.4764924692932819 1.5164142878162713e-16 -2.4764924692932819
		-3.5022892371893954 6.2143220035552934e-32 -1.0148758005789008e-15
		-2.4764924692932824 -1.5164142878162706e-16 2.476492469293281
		-1.0553080982564004e-15 -2.1445336520061093e-16 3.5022892371893959
		2.4764924692932802 -1.5164142878162716e-16 2.4764924692932819
		3.5022892371893954 -1.1518332079081898e-31 1.8810863813307494e-15
		2.4764924692932841 1.5164142878162704e-16 -2.4764924692932802
		-3.9956932495259797e-16 2.144533652006109e-16 -3.5022892371893954
		-2.4764924692932819 1.5164142878162713e-16 -2.4764924692932819
		;
createNode transform -n "L_Leg_PV_Ctrl_Grp" -p "L_Leg_IK_Ctrl_Grp";
	rename -uid "8457B1E1-494A-BBB6-958B-2B86EC439DA9";
	setAttr ".t" -type "double3" 5.3290705182007514e-15 23.000000008807408 0.00065019618490858 ;
	setAttr ".r" -type "double3" 89.999999999999972 0.0021913824868261518 -89.999999999999986 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "L_Leg_PV_Offset_Grp" -p "|ReverseFoot_Example|Leg|Controls|Limbs_Ctrl_Grp|L_Leg_Ctrl_Grp|L_Leg_IK_Ctrl_Grp|L_Leg_PV_Ctrl_Grp";
	rename -uid "AE5D9065-4203-A070-1726-13A132436853";
	setAttr ".t" -type "double3" 0 21.817321688096872 1.211104643688941e-15 ;
	setAttr ".rp" -type "double3" 3.5527136788005009e-15 5.4210108624275222e-20 -3.1554436208840472e-30 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-15 5.4210108624275222e-20 -3.1554436208840472e-30 ;
createNode transform -n "L_Leg_PV_Ctrl" -p "L_Leg_PV_Offset_Grp";
	rename -uid "6F605B9D-4507-18A3-BABB-F88410618532";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 5.4210108624275222e-20 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 3.5527136788005009e-15 5.4210108624275222e-20 -1.5777218104420236e-30 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-15 5.4210108624275222e-20 -1.5777218104420236e-30 ;
createNode nurbsCurve -n "L_Leg_PV_CtrlShape" -p "|ReverseFoot_Example|Leg|Controls|Limbs_Ctrl_Grp|L_Leg_Ctrl_Grp|L_Leg_IK_Ctrl_Grp|L_Leg_PV_Ctrl_Grp|L_Leg_PV_Offset_Grp|L_Leg_PV_Ctrl";
	rename -uid "0720B5FC-4BF7-E7A1-285E-B184BFB0F511";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.254163637163159 1.2541636371631562 -2.0168489513228967e-16
		-2.0235285351963305e-16 1.7736552251113071 -2.8522551402187985e-16
		-1.2541636371631575 1.2541636371631575 -2.0168489513228977e-16
		-1.7736552251113071 5.1396091088705447e-16 6.9606904117245058e-31
		-1.2541636371631579 -1.2541636371631566 2.016848951322911e-16
		-5.3443693419131554e-16 -1.7736552251113076 2.8522551402188157e-16
		1.2541636371631562 -1.2541636371631575 2.0168489513229117e-16
		1.7736552251113071 -9.5263368133766156e-16 9.3191543933743411e-31
		1.254163637163159 1.2541636371631562 -2.0168489513228967e-16
		-2.0235285351963305e-16 1.7736552251113071 -2.8522551402187985e-16
		-1.2541636371631575 1.2541636371631575 -2.0168489513228977e-16
		;
createNode transform -n "L_Leg_Foot_IK_Ctrl_Grp" -p "L_Leg_IK_Ctrl_Grp";
	rename -uid "7B39EB30-4CE9-8FBB-0D3B-7983F7BB527D";
	setAttr ".t" -type "double3" -3.7747582837255322e-15 6 -1.8873791418627661e-15 ;
createNode transform -n "L_Leg_Foot_IK_Ctrl" -p "|ReverseFoot_Example|Leg|Controls|Limbs_Ctrl_Grp|L_Leg_Ctrl_Grp|L_Leg_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl_Grp";
	rename -uid "A15B672E-4037-E962-B2A4-FC93110D79DD";
	addAttr -ci true -sn "FootRoll" -ln "FootRoll" -at "double";
	addAttr -ci true -sn "HeelPivot" -ln "HeelPivot" -at "double";
	addAttr -ci true -sn "HeelRock" -ln "HeelRock" -at "double";
	addAttr -ci true -sn "TipRoll" -ln "TipRoll" -at "double";
	addAttr -ci true -sn "TipPivot" -ln "TipPivot" -at "double";
	addAttr -ci true -sn "TipRock" -ln "TipRock" -at "double";
	addAttr -ci true -sn "BallPivot" -ln "BallPivot" -at "double";
	addAttr -ci true -sn "BallRock" -ln "BallRock" -at "double";
	addAttr -ci true -sn "ToeRoll" -ln "ToeRoll" -at "double";
	addAttr -ci true -sn "ToePivot" -ln "ToePivot" -at "double";
	addAttr -ci true -sn "ToeRock" -ln "ToeRock" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".FootRoll";
	setAttr -k on ".HeelPivot";
	setAttr -k on ".HeelRock";
	setAttr -k on ".TipRoll";
	setAttr -k on ".TipPivot";
	setAttr -k on ".TipRock";
	setAttr -k on ".BallPivot";
	setAttr -k on ".BallRock";
	setAttr -k on ".ToeRoll";
	setAttr -k on ".ToePivot";
	setAttr -k on ".ToeRock";
createNode nurbsCurve -n "L_Leg_Foot_IK_CtrlShape" -p "|ReverseFoot_Example|Leg|Controls|Limbs_Ctrl_Grp|L_Leg_Ctrl_Grp|L_Leg_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl";
	rename -uid "64494CE1-462E-CCB1-0123-BE80BE42F9E2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.3664261384210321 -6 -1.7066779684132385
		-3.9956932495259797e-16 -6 -3.2331351495188256
		-2.3664261384210303 -6 -1.7260745357312626
		-1.8682306350251507 -6 4.8055982086690339
		-3.9042528188254995 -6 11.28535439983089
		-1.9431215892123197 -6 15.147055207140532
		3.1232705955991369 -6 14.784369722120116
		3.3020335962480853 -6 6.4228083193326793
		2.3664261384210321 -6 -1.7066779684132385
		-3.9956932495259797e-16 -6 -3.2331351495188256
		-2.3664261384210303 -6 -1.7260745357312626
		;
createNode transform -n "Legg";
	rename -uid "90D67E5B-F242-6FA2-6B1A-37B19F1A79EA";
createNode transform -n "Skeleton" -p "Legg";
	rename -uid "5DFCE8FE-CD4F-F14F-BB26-ACB765973B0B";
createNode transform -n "Limbs_Jnt_Grp" -p "|Legg|Skeleton";
	rename -uid "A860587B-1148-B0DE-EFA8-83B6F58471E9";
createNode transform -n "L_Leg_Jnt_Grp" -p "|Legg|Skeleton|Limbs_Jnt_Grp";
	rename -uid "FAF5FA32-9545-CEBA-EDA0-4A95C9868408";
createNode transform -n "L_Leg_IK_Jnt_Grp" -p "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp";
	rename -uid "C858FA25-734D-CAAC-47B0-69BD430C4DD1";
createNode joint -n "L_Leg_Hip_IK_Jnt" -p "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp";
	rename -uid "626E1409-6748-4D46-6259-84AB476F76C6";
	setAttr ".r" -type "double3" -1.4271482677760564e-19 1.5405488462763162e-17 0.0015522290522988287 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999986 6.3611093629270335e-15 -90 ;
	setAttr ".radi" 1.6896551724137934;
createNode joint -n "L_Leg_Knee_IK_Jnt" -p "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt";
	rename -uid "09FA0E49-024B-E230-1DB0-B0AA807E91F7";
	setAttr ".t" -type "double3" 24 2.6645352591003757e-15 7.8886090522101181e-31 ;
	setAttr ".r" -type "double3" -1.1093917758797952e-15 1.2683916371035613e-14 -0.0037436115398632886 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 0 -5 ;
	setAttr ".radi" 1.3275862068965516;
createNode joint -n "L_Leg_Ankle_IK_Jnt" -p "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt|L_Leg_Knee_IK_Jnt";
	rename -uid "BA5692B7-0A40-0ACC-73E3-E59C6BE94402";
	setAttr ".t" -type "double3" 17.000000000000004 0 3.774758283725533e-15 ;
	setAttr ".r" -type "double3" 0 0 1.4124500153760508e-30 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.3275862068965516;
createNode ikEffector -n "effector4" -p "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt|L_Leg_Knee_IK_Jnt";
	rename -uid "667F274C-AB4A-C790-E662-55B6492E82F5";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode pointConstraint -n "L_Leg_Hip_IK_Jnt_pointConstraint2" -p "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt";
	rename -uid "BE7DEE0F-294C-8581-EF99-E19E3D653CD4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_Base_IK_Ctrl_GrpW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".rst" -type "double3" 0 47 0 ;
	setAttr -k on ".w0";
createNode joint -n "L_Foot_01_IK_Jnt" -p "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp";
	rename -uid "52A96196-E140-B147-67E4-97B8883BA5E0";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 -59.236403708555606 -90 ;
	setAttr ".radi" 2;
createNode joint -n "L_Foot_02_IK_Jnt" -p "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt";
	rename -uid "59216F58-AF4C-E657-B6C2-5C83932BD9D0";
	setAttr ".t" -type "double3" 7.3153123990750775 -1.7763568394002505e-15 1.6243256515558083e-15 ;
	setAttr ".r" -type "double3" 1.5515300676162755e-29 -2.457878098290241e-28 -7.0783612797784092e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 30.763596291444411 ;
	setAttr ".radi" 0.74413243741345114;
createNode joint -n "L_Foot_03_IK_Jnt" -p "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt|L_Foot_02_IK_Jnt";
	rename -uid "13A44A35-CD46-0A4B-06EE-BAB9F71219CC";
	setAttr ".t" -type "double3" 6.0000000000000062 -9.9920072216264148e-16 1.3151603934504324e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 2;
createNode ikEffector -n "effector5" -p "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt";
	rename -uid "E23CD4F2-7C40-69E2-4BB1-009ABB677BAE";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "L_Foot_01_IK_Jnt_parentConstraint2" -p "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt";
	rename -uid "12624DF4-A449-C178-8131-219E67483B1E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_Hip_IK_JntW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" 40.99999998495403 -0.0011107518158763338 1.5161108675315623e-30 ;
	setAttr ".tg[0].tor" -type "double3" 9.7610652366063503e-15 -1.0036909309790012e-14 
		59.234851479503327 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854064e-14 0 ;
	setAttr ".rst" -type "double3" -1.8815309930252209e-35 6 3.3664423860359223e-46 ;
	setAttr ".rsrr" -type "double3" 0 1.2722218725854064e-14 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Foot_01_IK_Jnt_scaleConstraint2" -p "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt";
	rename -uid "D5729D2D-F74B-2B6E-688C-B38EEEE6AF93";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_Hip_IK_JntW0" -dv 1 -min 0 
		-at "double";
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
	setAttr -k on ".w0";
createNode transform -n "Reverse_Foot_Jnt_Grp" -p "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp";
	rename -uid "E9E4D894-9C4B-E616-C99A-D284F885FB86";
createNode joint -n "L_Foot_Reverse_Heel_Jnt" -p "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp";
	rename -uid "60540D18-3F40-D812-9751-5788964D1149";
	setAttr ".t" -type "double3" 0 0 -1.0000000000000009 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.999999999999986 -89.999999999999972 0 ;
	setAttr ".radi" 1.1724137931034488;
createNode joint -n "L_Foot_Reverse_Tip_Jnt" -p "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt";
	rename -uid "CBA974A7-5D49-D957-23B5-8584FE57655D";
	setAttr ".t" -type "double3" 14.000000000000014 -4.6629367034256701e-15 -7.7715611723761005e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 198.59009752775614 0 ;
	setAttr ".radi" 0.82483327013519947;
createNode joint -n "L_Foot_Reverse_Ball_Jnt" -p "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt";
	rename -uid "A012765C-3E4A-C797-91A7-78809048D587";
	setAttr ".t" -type "double3" 7.0836617847027101 6.8465059417622617e-16 -2.9420910152566656e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 12.173498890800214 0 ;
	setAttr ".radi" 0.82126392504799905;
createNode joint -n "L_Foot_Reverse_Ankle_Jnt" -p "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Ball_Jnt";
	rename -uid "4E9CD3EC-7945-39F9-E84C-8DA03EB99BC9";
	setAttr ".t" -type "double3" 7.3153125307226148 -2.8209415831336653e-16 4.9960036108132094e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.82126392504799905;
createNode ikHandle -n "L_Leg_IK_Handle" -p "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Ball_Jnt|L_Foot_Reverse_Ankle_Jnt";
	rename -uid "5FAE46E7-2C4A-C6FE-48EB-06A614081F6A";
	setAttr ".t" -type "double3" 1.0940137684656293e-08 1.0699303853574416e-14 -1.8207616747645261e-08 ;
	setAttr ".r" -type "double3" -120.76359641855636 -3.1805546814635168e-15 90.000000000000028 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 0.99999999999999967 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "L_Leg_IK_Handle_poleVectorConstraint2" -p "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Ball_Jnt|L_Foot_Reverse_Ankle_Jnt|L_Leg_IK_Handle";
	rename -uid "DC1B8D46-9C41-A1E2-9FF0-72ADD26AE983";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_PV_Ctrl_GrpW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".rst" -type "double3" -1.7836134045406959e-13 -23.999999991193253 21.809559054257186 ;
	setAttr -k on ".w0";
createNode ikHandle -n "L_Foot_01_IK_Handle" -p "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Ball_Jnt";
	rename -uid "0D64ADD3-7C40-93D6-322D-2B8D03411342";
	setAttr ".t" -type "double3" 1.3164754442129833e-07 -1.0637605598775921e-15 -1.6229185995086937e-08 ;
	setAttr ".r" -type "double3" 89.999999999999972 179.99999987288803 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1.0000000000000002 ;
	setAttr ".pv" -type "double3" -0.85928505629487806 -5.5511151231257847e-16 -0.51149701077162479 ;
	setAttr ".roc" yes;
createNode joint -n "L_Foot_Reverse_Toe_Jnt" -p "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt";
	rename -uid "DFD72FEE-6B44-EB1C-52F3-F1B9571E11F5";
	setAttr ".t" -type "double3" 7.0836617847027101 6.8465059417622617e-16 -2.9420910152566656e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.7811106216195694e-13 161.40990247224389 2.5444437451708134e-14 ;
	setAttr ".radi" 0.7586206896551726;
createNode joint -n "L_Foot_Reverse_Toe_Tip_Jnt" -p "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Toe_Jnt";
	rename -uid "FEC2F6B4-F84F-CE7A-5D86-66BC106DF2F3";
	setAttr ".t" -type "double3" 5.9999995231628391 -2.9881534080821825e-15 2.9976019282599047e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.7586206896551726;
createNode ikHandle -n "L_Foot_02_IK_Handle" -p "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Toe_Jnt|L_Foot_Reverse_Toe_Tip_Jnt";
	rename -uid "D5940E07-7245-6D0C-6E6D-5097C563D4E5";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 0 0 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999956 1.0000000000000002 ;
	setAttr ".pv" -type "double3" 0.99999999999999956 -5.5511151231257837e-16 1.1102230246251575e-16 ;
	setAttr ".roc" yes;
createNode ikEffector -n "effector6" -p "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Toe_Jnt";
	rename -uid "43C12FCC-DD4F-3174-0055-F5BD702A2ED2";
	setAttr ".v" no;
	setAttr ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".hd" yes;
createNode transform -n "Controls" -p "Legg";
	rename -uid "8A326A8D-A047-8D19-0FBA-76823DDDA113";
createNode transform -n "Leg_Grps" -p "|Legg|Controls";
	rename -uid "54961E3D-1C45-BABE-B6F2-14A5DA63CB93";
createNode transform -n "L_Leg_IK_Ctrl_Grps" -p "Leg_Grps";
	rename -uid "9681EF06-7C49-98A9-588F-69A5F57412D3";
createNode transform -n "L_Leg_Base_IK_Ctrl_Grp" -p "L_Leg_IK_Ctrl_Grps";
	rename -uid "656C669A-8842-2039-BE1D-CA83323C719A";
	setAttr ".t" -type "double3" 0 47 0 ;
createNode transform -n "L_Leg_Base_IK_Ctrl" -p "|Legg|Controls|Leg_Grps|L_Leg_IK_Ctrl_Grps|L_Leg_Base_IK_Ctrl_Grp";
	rename -uid "1DF17D43-D14F-2700-3859-978835060116";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_Leg_Base_IK_CtrlShape" -p "|Legg|Controls|Leg_Grps|L_Leg_IK_Ctrl_Grps|L_Leg_Base_IK_Ctrl_Grp|L_Leg_Base_IK_Ctrl";
	rename -uid "3942B9DB-744F-1B1A-DCF9-B1ADABE4B945";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.4764924692932841 1.5164142878162704e-16 -2.4764924692932802
		-3.9956932495259797e-16 2.144533652006109e-16 -3.5022892371893954
		-2.4764924692932819 1.5164142878162713e-16 -2.4764924692932819
		-3.5022892371893954 6.2143220035552934e-32 -1.0148758005789008e-15
		-2.4764924692932824 -1.5164142878162706e-16 2.476492469293281
		-1.0553080982564004e-15 -2.1445336520061093e-16 3.5022892371893959
		2.4764924692932802 -1.5164142878162716e-16 2.4764924692932819
		3.5022892371893954 -1.1518332079081898e-31 1.8810863813307494e-15
		2.4764924692932841 1.5164142878162704e-16 -2.4764924692932802
		-3.9956932495259797e-16 2.144533652006109e-16 -3.5022892371893954
		-2.4764924692932819 1.5164142878162713e-16 -2.4764924692932819
		;
createNode transform -n "L_Leg_PV_Ctrl_Grp" -p "L_Leg_IK_Ctrl_Grps";
	rename -uid "9953FE71-8044-0B64-9AAC-D9A6FA4C7A79";
	setAttr ".t" -type "double3" 5.3290705182007514e-15 23.000000008807408 0.00065019618490858 ;
	setAttr ".r" -type "double3" 89.999999999999972 0.0021913824868261518 -89.999999999999986 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
	setAttr ".rp" -type "double3" -0.00083412183799336877 21.808908842120793 8.474185640084826e-15 ;
	setAttr ".rpt" -type "double3" 0.00083412183780967836 -21.808908842121458 21.808908858072268 ;
	setAttr ".sp" -type "double3" -0.0008341218379933692 21.8089088421208 8.4741856400848275e-15 ;
	setAttr ".spt" -type "double3" 1.0794587879808802e-17 -1.3579415369946443e-13 -1.5777218104419665e-30 ;
createNode transform -n "L_Leg_PV_Ctrl" -p "|Legg|Controls|Leg_Grps|L_Leg_IK_Ctrl_Grps|L_Leg_PV_Ctrl_Grp";
	rename -uid "289661DE-694E-1A2A-02F2-5E8D98544B90";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 21.817321688096868 1.2111046436889426e-15 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 3.5527136788005009e-15 5.4210108624275222e-20 -1.5777218104420236e-30 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-15 5.4210108624275222e-20 -1.5777218104420236e-30 ;
createNode nurbsCurve -n "L_Leg_PV_CtrlShape" -p "|Legg|Controls|Leg_Grps|L_Leg_IK_Ctrl_Grps|L_Leg_PV_Ctrl_Grp|L_Leg_PV_Ctrl";
	rename -uid "4ADD95AA-074D-8757-93F9-8080D4F8DF1D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.254163637163159 1.2541636371631562 -2.0168489513228967e-16
		-2.0235285351963305e-16 1.7736552251113071 -2.8522551402187985e-16
		-1.2541636371631575 1.2541636371631575 -2.0168489513228977e-16
		-1.7736552251113071 5.1396091088705447e-16 6.9606904117245058e-31
		-1.2541636371631579 -1.2541636371631566 2.016848951322911e-16
		-5.3443693419131554e-16 -1.7736552251113076 2.8522551402188157e-16
		1.2541636371631562 -1.2541636371631575 2.0168489513229117e-16
		1.7736552251113071 -9.5263368133766156e-16 9.3191543933743411e-31
		1.254163637163159 1.2541636371631562 -2.0168489513228967e-16
		-2.0235285351963305e-16 1.7736552251113071 -2.8522551402187985e-16
		-1.2541636371631575 1.2541636371631575 -2.0168489513228977e-16
		;
createNode transform -n "L_Leg_Foot_IK_Ctrl_Grp" -p "L_Leg_IK_Ctrl_Grps";
	rename -uid "5456273C-9D49-2FD4-E465-C9970CAB900E";
	setAttr ".t" -type "double3" -3.7747582837255322e-15 6 -1.8873791418627661e-15 ;
createNode transform -n "L_Leg_Foot_IK_Ctrl" -p "|Legg|Controls|Leg_Grps|L_Leg_IK_Ctrl_Grps|L_Leg_Foot_IK_Ctrl_Grp";
	rename -uid "73BDE97E-7645-3640-573E-6782C60E62AF";
	addAttr -ci true -sn "FootRoll" -ln "FootRoll" -at "double";
	addAttr -ci true -sn "HeelPivot" -ln "HeelPivot" -at "double";
	addAttr -ci true -sn "HeelRock" -ln "HeelRock" -at "double";
	addAttr -ci true -sn "TipRoll" -ln "TipRoll" -at "double";
	addAttr -ci true -sn "TipPivot" -ln "TipPivot" -at "double";
	addAttr -ci true -sn "TipRock" -ln "TipRock" -at "double";
	addAttr -ci true -sn "BallPivot" -ln "BallPivot" -at "double";
	addAttr -ci true -sn "BallRock" -ln "BallRock" -at "double";
	addAttr -ci true -sn "ToeRoll" -ln "ToeRoll" -at "double";
	addAttr -ci true -sn "ToePivot" -ln "ToePivot" -at "double";
	addAttr -ci true -sn "ToeRock" -ln "ToeRock" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".FootRoll";
	setAttr -k on ".HeelPivot";
	setAttr -k on ".HeelRock";
	setAttr -k on ".TipRoll";
	setAttr -k on ".TipPivot";
	setAttr -k on ".TipRock";
	setAttr -k on ".BallPivot";
	setAttr -k on ".BallRock";
	setAttr -k on ".ToeRoll";
	setAttr -k on ".ToePivot";
	setAttr -k on ".ToeRock";
createNode nurbsCurve -n "L_Leg_Foot_IK_CtrlShape" -p "|Legg|Controls|Leg_Grps|L_Leg_IK_Ctrl_Grps|L_Leg_Foot_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl";
	rename -uid "98EA2828-104F-7804-0554-99B314D49325";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.3664261384210321 -6 -1.7066779684132385
		-3.9956932495259797e-16 -6 -3.2331351495188256
		-2.3664261384210303 -6 -1.7260745357312626
		-1.8682306350251507 -6 4.8055982086690339
		-3.9042528188254995 -6 11.28535439983089
		-1.9431215892123197 -6 15.147055207140532
		3.1232705955991369 -6 14.784369722120116
		3.3020335962480853 -6 6.4228083193326793
		2.3664261384210321 -6 -1.7066779684132385
		-3.9956932495259797e-16 -6 -3.2331351495188256
		-2.3664261384210303 -6 -1.7260745357312626
		;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "E178F404-C644-AE0D-CD39-1DB936366E5B";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "7600A2C1-2F41-6256-2BCC-81BA0C5C3C6A";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "37B27D02-434F-1E7E-F352-B7836C1ECDC2";
createNode displayLayerManager -n "layerManager";
	rename -uid "8B3F472D-B44B-94F2-5009-569825192C06";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "140A3811-40B6-1D06-F04B-14AF4FE90672";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "F1DE9A3E-7B4B-8DA2-FBD8-BCB5A00D8238";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "447BD1E6-4852-81A2-469D-0AB029FDE7E7";
	setAttr ".g" yes;
createNode ikSCsolver -n "ikSCsolver";
	rename -uid "1E7DB733-45A4-DF41-DE98-B3950E2F971C";
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "62F83217-44CD-0F27-F57F-168822CB4042";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "2D1DCC6F-44F5-74E8-892B-1686D886D3E6";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 0\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 1\n                -organizeByLayer 0\n                -showAnimLayerWeight 1\n                -autoExpandLayers 0\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 0\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -renderFilterIndex 0\n                -selectionOrder \"chronological\" \n                -expandAttribute 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 0\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 1\n            -organizeByLayer 0\n            -showAnimLayerWeight 1\n            -autoExpandLayers 0\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n"
		+ "            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 0\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 0\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n"
		+ "            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n"
		+ "                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n"
		+ "            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n"
		+ "            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n"
		+ "                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n"
		+ "            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n"
		+ "            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 937\n                -height 727\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 937\n            -height 727\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n"
		+ "                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n"
		+ "                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n"
		+ "            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 1\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n"
		+ "                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 1\n"
		+ "                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n"
		+ "                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n"
		+ "                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n"
		+ "                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"timeEditorPanel\" -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n"
		+ "                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tshapePanel -unParent -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tposePanel -unParent -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"contentBrowserPanel\" -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n"
		+ "                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n"
		+ "                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n"
		+ "                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n"
		+ "            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n"
		+ "            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n"
		+ "            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n"
		+ "            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n"
		+ "                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -renderFilterIndex 0\n"
		+ "                -selectionOrder \"chronological\" \n                -expandAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n"
		+ "            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"0\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 937\\n    -height 727\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 937\\n    -height 727\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "F0E95BE6-426A-A9BC-CB67-678A2B2838DA";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode animCurveUA -n "L_Foot_Reverse_Ball_Jnt_rotateX";
	rename -uid "E9E990B5-4FE1-066B-BF52-3799D2D53860";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 50;
	setAttr ".pst" 1;
createNode animCurveUA -n "L_Foot_Reverse_Heel_Jnt_rotateX";
	rename -uid "4AA10F77-4C50-246C-AFF9-83BE7E0B72A9";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  -10 -50 0 0;
	setAttr ".pre" 1;
createNode animCurveUA -n "L_Foot_Reverse_Heel_Jnt_rotateZ";
	rename -uid "45C9C5A8-4051-590E-2DFD-4CA53DD0DA0C";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  -1 1 0 0 1 -1;
	setAttr ".pre" 1;
	setAttr ".pst" 1;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "D1490349-4D13-B4EA-1100-4FA6803A26E0";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -687.98703939185987 -318.05438935500962 ;
	setAttr ".tgi[0].vh" -type "double2" 702.19661800773133 383.7728252817995 ;
	setAttr -s 10 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 261.42855834960938;
	setAttr ".tgi[0].ni[0].y" 327.14285278320312;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" -134.28572082519531;
	setAttr ".tgi[0].ni[1].y" 22.857143402099609;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" -134.28572082519531;
	setAttr ".tgi[0].ni[2].y" 124.28571319580078;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" -134.28572082519531;
	setAttr ".tgi[0].ni[3].y" 327.14285278320312;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 261.42855834960938;
	setAttr ".tgi[0].ni[4].y" 175.71427917480469;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 261.42855834960938;
	setAttr ".tgi[0].ni[5].y" -208.57142639160156;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" -134.28572082519531;
	setAttr ".tgi[0].ni[6].y" 225.71427917480469;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" -647.5313720703125;
	setAttr ".tgi[0].ni[7].y" 462.402099609375;
	setAttr ".tgi[0].ni[7].nvs" 18306;
	setAttr ".tgi[0].ni[8].x" 425.77200317382812;
	setAttr ".tgi[0].ni[8].y" -25.795780181884766;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" -147.75648498535156;
	setAttr ".tgi[0].ni[9].y" -75.877273559570312;
	setAttr ".tgi[0].ni[9].nvs" 18305;
createNode animCurveUA -n "L_Foot_Reverse_Heel_Jnt_rotateY";
	rename -uid "007E3480-4519-68E2-4ADA-76921BB89A59";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  -1 -1 0 0 1 1;
	setAttr ".pre" 1;
	setAttr ".pst" 1;
createNode animCurveUA -n "L_Foot_Reverse_Ball_Jnt_rotateY";
	rename -uid "1FC44E30-4E7C-3770-1F3E-598BCA9B4BF4";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  -1 1 0 0 1 -1;
	setAttr ".pre" 1;
	setAttr ".pst" 1;
createNode animCurveUA -n "L_Foot_Reverse_Ball_Jnt_rotateZ";
	rename -uid "96B98FBC-4538-597D-E0ED-799B37D7C88A";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  -1 1 0 0 1 -1;
	setAttr ".pre" 1;
	setAttr ".pst" 1;
createNode animCurveUA -n "L_Foot_Reverse_Tip_Jnt_rotateX";
	rename -uid "C35C9C37-4C37-4E93-54FD-2CB222AEBAF7";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  -1 -1 0 0 1 1;
	setAttr ".pre" 1;
	setAttr ".pst" 1;
createNode animCurveUA -n "L_Foot_Reverse_Tip_Jnt_rotateY";
	rename -uid "3EE31597-427F-95BA-08FE-0C8575FE4D05";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  -1 1 0 0 1 -1;
	setAttr ".pre" 1;
	setAttr ".pst" 1;
createNode animCurveUA -n "L_Foot_Reverse_Tip_Jnt_rotateZ";
	rename -uid "33C39CB2-456E-60CE-55D5-CDB962BABF2D";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  -1 1 0 0 1 -1;
	setAttr ".pre" 1;
	setAttr ".pst" 1;
createNode animCurveUA -n "L_Foot_Reverse_Toe_Jnt_rotateX";
	rename -uid "C1F014EB-4972-A4C5-0C77-54BC1BD3F945";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  -1 1 0 0 1 -1;
	setAttr ".pre" 1;
	setAttr ".pst" 1;
createNode animCurveUA -n "L_Foot_Reverse_Toe_Jnt_rotateY";
	rename -uid "F47EFB29-40A6-875B-01C6-8285D08D0F8D";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  -1 -1 0 0 1 1;
	setAttr ".pre" 1;
	setAttr ".pst" 1;
createNode animCurveUA -n "L_Foot_Reverse_Toe_Jnt_rotateZ";
	rename -uid "1A138532-4645-5025-4685-7ABBCB7A01C2";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  -1 1 0 0 1 -1;
	setAttr ".pre" 1;
	setAttr ".pst" 1;
createNode displayLayer -n "ReverseFootExample";
	rename -uid "600B7F09-4A98-BDCB-DACB-E3A96A1EDFB4";
	setAttr ".c" 9;
	setAttr ".do" 1;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 2 ".sol";
connectAttr "ReverseFootExample.di" "ReverseFoot_Example.do";
connectAttr "ReverseFootExample.di" "Leg.do";
connectAttr "L_Leg_Hip_IK_Jnt_pointConstraint1.ctx" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt.tx"
		;
connectAttr "L_Leg_Hip_IK_Jnt_pointConstraint1.cty" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt.ty"
		;
connectAttr "L_Leg_Hip_IK_Jnt_pointConstraint1.ctz" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt.tz"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt.s" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt|L_Leg_Knee_IK_Jnt.is"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt|L_Leg_Knee_IK_Jnt.s" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt|L_Leg_Knee_IK_Jnt|L_Leg_Ankle_IK_Jnt.is"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt|L_Leg_Knee_IK_Jnt|L_Leg_Ankle_IK_Jnt.tx" "effector1.tx"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt|L_Leg_Knee_IK_Jnt|L_Leg_Ankle_IK_Jnt.ty" "effector1.ty"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt|L_Leg_Knee_IK_Jnt|L_Leg_Ankle_IK_Jnt.tz" "effector1.tz"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt.pim" "L_Leg_Hip_IK_Jnt_pointConstraint1.cpim"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt.rp" "L_Leg_Hip_IK_Jnt_pointConstraint1.crp"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt.rpt" "L_Leg_Hip_IK_Jnt_pointConstraint1.crt"
		;
connectAttr "|ReverseFoot_Example|Leg|Controls|Limbs_Ctrl_Grp|L_Leg_Ctrl_Grp|L_Leg_IK_Ctrl_Grp|L_Leg_Base_IK_Ctrl_Grp|L_Leg_Base_IK_Ctrl.t" "L_Leg_Hip_IK_Jnt_pointConstraint1.tg[0].tt"
		;
connectAttr "|ReverseFoot_Example|Leg|Controls|Limbs_Ctrl_Grp|L_Leg_Ctrl_Grp|L_Leg_IK_Ctrl_Grp|L_Leg_Base_IK_Ctrl_Grp|L_Leg_Base_IK_Ctrl.rp" "L_Leg_Hip_IK_Jnt_pointConstraint1.tg[0].trp"
		;
connectAttr "|ReverseFoot_Example|Leg|Controls|Limbs_Ctrl_Grp|L_Leg_Ctrl_Grp|L_Leg_IK_Ctrl_Grp|L_Leg_Base_IK_Ctrl_Grp|L_Leg_Base_IK_Ctrl.rpt" "L_Leg_Hip_IK_Jnt_pointConstraint1.tg[0].trt"
		;
connectAttr "|ReverseFoot_Example|Leg|Controls|Limbs_Ctrl_Grp|L_Leg_Ctrl_Grp|L_Leg_IK_Ctrl_Grp|L_Leg_Base_IK_Ctrl_Grp|L_Leg_Base_IK_Ctrl.pm" "L_Leg_Hip_IK_Jnt_pointConstraint1.tg[0].tpm"
		;
connectAttr "L_Leg_Hip_IK_Jnt_pointConstraint1.w0" "L_Leg_Hip_IK_Jnt_pointConstraint1.tg[0].tw"
		;
connectAttr "L_Foot_01_IK_Jnt_scaleConstraint1.csx" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt.sx"
		;
connectAttr "L_Foot_01_IK_Jnt_scaleConstraint1.csy" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt.sy"
		;
connectAttr "L_Foot_01_IK_Jnt_scaleConstraint1.csz" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt.sz"
		;
connectAttr "L_Foot_01_IK_Jnt_parentConstraint1.ctx" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt.tx"
		;
connectAttr "L_Foot_01_IK_Jnt_parentConstraint1.cty" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt.ty"
		;
connectAttr "L_Foot_01_IK_Jnt_parentConstraint1.ctz" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt.tz"
		;
connectAttr "L_Foot_01_IK_Jnt_parentConstraint1.crx" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt.rx"
		;
connectAttr "L_Foot_01_IK_Jnt_parentConstraint1.cry" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt.ry"
		;
connectAttr "L_Foot_01_IK_Jnt_parentConstraint1.crz" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt.rz"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt.s" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt|L_Foot_02_IK_Jnt.is"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt|L_Foot_02_IK_Jnt.s" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt|L_Foot_02_IK_Jnt|L_Foot_03_IK_Jnt.is"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt|L_Foot_02_IK_Jnt|L_Foot_03_IK_Jnt.tx" "effector3.tx"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt|L_Foot_02_IK_Jnt|L_Foot_03_IK_Jnt.ty" "effector3.ty"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt|L_Foot_02_IK_Jnt|L_Foot_03_IK_Jnt.tz" "effector3.tz"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt|L_Foot_02_IK_Jnt.tx" "effector2.tx"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt|L_Foot_02_IK_Jnt.ty" "effector2.ty"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt|L_Foot_02_IK_Jnt.tz" "effector2.tz"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt.ro" "L_Foot_01_IK_Jnt_parentConstraint1.cro"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt.pim" "L_Foot_01_IK_Jnt_parentConstraint1.cpim"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt.rp" "L_Foot_01_IK_Jnt_parentConstraint1.crp"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt.rpt" "L_Foot_01_IK_Jnt_parentConstraint1.crt"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt.jo" "L_Foot_01_IK_Jnt_parentConstraint1.cjo"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt|L_Leg_Knee_IK_Jnt|L_Leg_Ankle_IK_Jnt.t" "L_Foot_01_IK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt|L_Leg_Knee_IK_Jnt|L_Leg_Ankle_IK_Jnt.rp" "L_Foot_01_IK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt|L_Leg_Knee_IK_Jnt|L_Leg_Ankle_IK_Jnt.rpt" "L_Foot_01_IK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt|L_Leg_Knee_IK_Jnt|L_Leg_Ankle_IK_Jnt.r" "L_Foot_01_IK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt|L_Leg_Knee_IK_Jnt|L_Leg_Ankle_IK_Jnt.ro" "L_Foot_01_IK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt|L_Leg_Knee_IK_Jnt|L_Leg_Ankle_IK_Jnt.s" "L_Foot_01_IK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt|L_Leg_Knee_IK_Jnt|L_Leg_Ankle_IK_Jnt.pm" "L_Foot_01_IK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt|L_Leg_Knee_IK_Jnt|L_Leg_Ankle_IK_Jnt.jo" "L_Foot_01_IK_Jnt_parentConstraint1.tg[0].tjo"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt|L_Leg_Knee_IK_Jnt|L_Leg_Ankle_IK_Jnt.ssc" "L_Foot_01_IK_Jnt_parentConstraint1.tg[0].tsc"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt|L_Leg_Knee_IK_Jnt|L_Leg_Ankle_IK_Jnt.is" "L_Foot_01_IK_Jnt_parentConstraint1.tg[0].tis"
		;
connectAttr "L_Foot_01_IK_Jnt_parentConstraint1.w0" "L_Foot_01_IK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt.pim" "L_Foot_01_IK_Jnt_scaleConstraint1.cpim"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt|L_Leg_Knee_IK_Jnt|L_Leg_Ankle_IK_Jnt.s" "L_Foot_01_IK_Jnt_scaleConstraint1.tg[0].ts"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt|L_Leg_Knee_IK_Jnt|L_Leg_Ankle_IK_Jnt.pm" "L_Foot_01_IK_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Foot_01_IK_Jnt_scaleConstraint1.w0" "L_Foot_01_IK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Reverse_Foot_Jnt_Grp_parentConstraint1.ctx" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp.tx"
		;
connectAttr "Reverse_Foot_Jnt_Grp_parentConstraint1.cty" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp.ty"
		;
connectAttr "Reverse_Foot_Jnt_Grp_parentConstraint1.ctz" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp.tz"
		;
connectAttr "Reverse_Foot_Jnt_Grp_parentConstraint1.crx" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp.rx"
		;
connectAttr "Reverse_Foot_Jnt_Grp_parentConstraint1.cry" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp.ry"
		;
connectAttr "Reverse_Foot_Jnt_Grp_parentConstraint1.crz" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp.rz"
		;
connectAttr "Reverse_Foot_Jnt_Grp_scaleConstraint1.csx" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp.sx"
		;
connectAttr "Reverse_Foot_Jnt_Grp_scaleConstraint1.csy" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp.sy"
		;
connectAttr "Reverse_Foot_Jnt_Grp_scaleConstraint1.csz" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp.sz"
		;
connectAttr "L_Foot_Reverse_Heel_Jnt_rotateX.o" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt.rx"
		;
connectAttr "L_Foot_Reverse_Heel_Jnt_rotateZ.o" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt.rz"
		;
connectAttr "L_Foot_Reverse_Heel_Jnt_rotateY.o" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt.ry"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt.s" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt.is"
		;
connectAttr "L_Foot_Reverse_Tip_Jnt_rotateX.o" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt.rx"
		;
connectAttr "L_Foot_Reverse_Tip_Jnt_rotateY.o" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt.ry"
		;
connectAttr "L_Foot_Reverse_Tip_Jnt_rotateZ.o" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt.rz"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt.s" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Ball_Jnt.is"
		;
connectAttr "L_Foot_Reverse_Ball_Jnt_rotateX.o" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Ball_Jnt.rx"
		;
connectAttr "L_Foot_Reverse_Ball_Jnt_rotateY.o" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Ball_Jnt.ry"
		;
connectAttr "L_Foot_Reverse_Ball_Jnt_rotateZ.o" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Ball_Jnt.rz"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Ball_Jnt.s" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Ball_Jnt|L_Foot_Reverse_Ankle_Jnt.is"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt.msg" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Ball_Jnt|L_Foot_Reverse_Ankle_Jnt|L_Leg_IK_Handle.hsj"
		;
connectAttr "effector1.hp" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Ball_Jnt|L_Foot_Reverse_Ankle_Jnt|L_Leg_IK_Handle.hee"
		;
connectAttr "ikRPsolver.msg" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Ball_Jnt|L_Foot_Reverse_Ankle_Jnt|L_Leg_IK_Handle.hsv"
		;
connectAttr "L_Leg_IK_Handle_poleVectorConstraint1.ctx" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Ball_Jnt|L_Foot_Reverse_Ankle_Jnt|L_Leg_IK_Handle.pvx"
		;
connectAttr "L_Leg_IK_Handle_poleVectorConstraint1.cty" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Ball_Jnt|L_Foot_Reverse_Ankle_Jnt|L_Leg_IK_Handle.pvy"
		;
connectAttr "L_Leg_IK_Handle_poleVectorConstraint1.ctz" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Ball_Jnt|L_Foot_Reverse_Ankle_Jnt|L_Leg_IK_Handle.pvz"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Ball_Jnt|L_Foot_Reverse_Ankle_Jnt|L_Leg_IK_Handle.pim" "L_Leg_IK_Handle_poleVectorConstraint1.cpim"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt.pm" "L_Leg_IK_Handle_poleVectorConstraint1.ps"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt.t" "L_Leg_IK_Handle_poleVectorConstraint1.crp"
		;
connectAttr "|ReverseFoot_Example|Leg|Controls|Limbs_Ctrl_Grp|L_Leg_Ctrl_Grp|L_Leg_IK_Ctrl_Grp|L_Leg_PV_Ctrl_Grp|L_Leg_PV_Offset_Grp|L_Leg_PV_Ctrl.t" "L_Leg_IK_Handle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "|ReverseFoot_Example|Leg|Controls|Limbs_Ctrl_Grp|L_Leg_Ctrl_Grp|L_Leg_IK_Ctrl_Grp|L_Leg_PV_Ctrl_Grp|L_Leg_PV_Offset_Grp|L_Leg_PV_Ctrl.rp" "L_Leg_IK_Handle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "|ReverseFoot_Example|Leg|Controls|Limbs_Ctrl_Grp|L_Leg_Ctrl_Grp|L_Leg_IK_Ctrl_Grp|L_Leg_PV_Ctrl_Grp|L_Leg_PV_Offset_Grp|L_Leg_PV_Ctrl.rpt" "L_Leg_IK_Handle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "|ReverseFoot_Example|Leg|Controls|Limbs_Ctrl_Grp|L_Leg_Ctrl_Grp|L_Leg_IK_Ctrl_Grp|L_Leg_PV_Ctrl_Grp|L_Leg_PV_Offset_Grp|L_Leg_PV_Ctrl.pm" "L_Leg_IK_Handle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "L_Leg_IK_Handle_poleVectorConstraint1.w0" "L_Leg_IK_Handle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt.msg" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Ball_Jnt|L_Foot_01_IK_Handle.hsj"
		;
connectAttr "effector2.hp" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Ball_Jnt|L_Foot_01_IK_Handle.hee"
		;
connectAttr "ikSCsolver.msg" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Ball_Jnt|L_Foot_01_IK_Handle.hsv"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt.s" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Toe_Jnt.is"
		;
connectAttr "L_Foot_Reverse_Toe_Jnt_rotateX.o" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Toe_Jnt.rx"
		;
connectAttr "L_Foot_Reverse_Toe_Jnt_rotateY.o" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Toe_Jnt.ry"
		;
connectAttr "L_Foot_Reverse_Toe_Jnt_rotateZ.o" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Toe_Jnt.rz"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Toe_Jnt.s" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Toe_Jnt|L_Foot_Reverse_Toe_Tip_Jnt.is"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt|L_Foot_02_IK_Jnt.msg" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Toe_Jnt|L_Foot_Reverse_Toe_Tip_Jnt|L_Foot_02_IK_Handle.hsj"
		;
connectAttr "effector3.hp" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Toe_Jnt|L_Foot_Reverse_Toe_Tip_Jnt|L_Foot_02_IK_Handle.hee"
		;
connectAttr "ikSCsolver.msg" "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Toe_Jnt|L_Foot_Reverse_Toe_Tip_Jnt|L_Foot_02_IK_Handle.hsv"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp.ro" "Reverse_Foot_Jnt_Grp_parentConstraint1.cro"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp.pim" "Reverse_Foot_Jnt_Grp_parentConstraint1.cpim"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp.rp" "Reverse_Foot_Jnt_Grp_parentConstraint1.crp"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp.rpt" "Reverse_Foot_Jnt_Grp_parentConstraint1.crt"
		;
connectAttr "|ReverseFoot_Example|Leg|Controls|Limbs_Ctrl_Grp|L_Leg_Ctrl_Grp|L_Leg_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl.t" "Reverse_Foot_Jnt_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "|ReverseFoot_Example|Leg|Controls|Limbs_Ctrl_Grp|L_Leg_Ctrl_Grp|L_Leg_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl.rp" "Reverse_Foot_Jnt_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "|ReverseFoot_Example|Leg|Controls|Limbs_Ctrl_Grp|L_Leg_Ctrl_Grp|L_Leg_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl.rpt" "Reverse_Foot_Jnt_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "|ReverseFoot_Example|Leg|Controls|Limbs_Ctrl_Grp|L_Leg_Ctrl_Grp|L_Leg_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl.r" "Reverse_Foot_Jnt_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "|ReverseFoot_Example|Leg|Controls|Limbs_Ctrl_Grp|L_Leg_Ctrl_Grp|L_Leg_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl.ro" "Reverse_Foot_Jnt_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "|ReverseFoot_Example|Leg|Controls|Limbs_Ctrl_Grp|L_Leg_Ctrl_Grp|L_Leg_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl.s" "Reverse_Foot_Jnt_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "|ReverseFoot_Example|Leg|Controls|Limbs_Ctrl_Grp|L_Leg_Ctrl_Grp|L_Leg_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl.pm" "Reverse_Foot_Jnt_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Reverse_Foot_Jnt_Grp_parentConstraint1.w0" "Reverse_Foot_Jnt_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp.pim" "Reverse_Foot_Jnt_Grp_scaleConstraint1.cpim"
		;
connectAttr "|ReverseFoot_Example|Leg|Controls|Limbs_Ctrl_Grp|L_Leg_Ctrl_Grp|L_Leg_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl.s" "Reverse_Foot_Jnt_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "|ReverseFoot_Example|Leg|Controls|Limbs_Ctrl_Grp|L_Leg_Ctrl_Grp|L_Leg_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl.pm" "Reverse_Foot_Jnt_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "Reverse_Foot_Jnt_Grp_scaleConstraint1.w0" "Reverse_Foot_Jnt_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Leg_Hip_IK_Jnt_pointConstraint2.ctx" "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt.tx"
		;
connectAttr "L_Leg_Hip_IK_Jnt_pointConstraint2.cty" "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt.ty"
		;
connectAttr "L_Leg_Hip_IK_Jnt_pointConstraint2.ctz" "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt.tz"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt.s" "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt|L_Leg_Knee_IK_Jnt.is"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt|L_Leg_Knee_IK_Jnt.s" "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt|L_Leg_Knee_IK_Jnt|L_Leg_Ankle_IK_Jnt.is"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt|L_Leg_Knee_IK_Jnt|L_Leg_Ankle_IK_Jnt.tx" "effector4.tx"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt|L_Leg_Knee_IK_Jnt|L_Leg_Ankle_IK_Jnt.ty" "effector4.ty"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt|L_Leg_Knee_IK_Jnt|L_Leg_Ankle_IK_Jnt.tz" "effector4.tz"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt.pim" "L_Leg_Hip_IK_Jnt_pointConstraint2.cpim"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt.rp" "L_Leg_Hip_IK_Jnt_pointConstraint2.crp"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt.rpt" "L_Leg_Hip_IK_Jnt_pointConstraint2.crt"
		;
connectAttr "|Legg|Controls|Leg_Grps|L_Leg_IK_Ctrl_Grps|L_Leg_Base_IK_Ctrl_Grp.t" "L_Leg_Hip_IK_Jnt_pointConstraint2.tg[0].tt"
		;
connectAttr "|Legg|Controls|Leg_Grps|L_Leg_IK_Ctrl_Grps|L_Leg_Base_IK_Ctrl_Grp.rp" "L_Leg_Hip_IK_Jnt_pointConstraint2.tg[0].trp"
		;
connectAttr "|Legg|Controls|Leg_Grps|L_Leg_IK_Ctrl_Grps|L_Leg_Base_IK_Ctrl_Grp.rpt" "L_Leg_Hip_IK_Jnt_pointConstraint2.tg[0].trt"
		;
connectAttr "|Legg|Controls|Leg_Grps|L_Leg_IK_Ctrl_Grps|L_Leg_Base_IK_Ctrl_Grp.pm" "L_Leg_Hip_IK_Jnt_pointConstraint2.tg[0].tpm"
		;
connectAttr "L_Leg_Hip_IK_Jnt_pointConstraint2.w0" "L_Leg_Hip_IK_Jnt_pointConstraint2.tg[0].tw"
		;
connectAttr "L_Foot_01_IK_Jnt_scaleConstraint2.csx" "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt.sx"
		;
connectAttr "L_Foot_01_IK_Jnt_scaleConstraint2.csy" "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt.sy"
		;
connectAttr "L_Foot_01_IK_Jnt_scaleConstraint2.csz" "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt.sz"
		;
connectAttr "L_Foot_01_IK_Jnt_parentConstraint2.ctx" "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt.tx"
		;
connectAttr "L_Foot_01_IK_Jnt_parentConstraint2.cty" "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt.ty"
		;
connectAttr "L_Foot_01_IK_Jnt_parentConstraint2.ctz" "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt.tz"
		;
connectAttr "L_Foot_01_IK_Jnt_parentConstraint2.crx" "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt.rx"
		;
connectAttr "L_Foot_01_IK_Jnt_parentConstraint2.cry" "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt.ry"
		;
connectAttr "L_Foot_01_IK_Jnt_parentConstraint2.crz" "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt.rz"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt.s" "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt|L_Foot_02_IK_Jnt.is"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt|L_Foot_02_IK_Jnt.s" "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt|L_Foot_02_IK_Jnt|L_Foot_03_IK_Jnt.is"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt|L_Foot_02_IK_Jnt.tx" "effector5.tx"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt|L_Foot_02_IK_Jnt.ty" "effector5.ty"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt|L_Foot_02_IK_Jnt.tz" "effector5.tz"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt.ro" "L_Foot_01_IK_Jnt_parentConstraint2.cro"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt.pim" "L_Foot_01_IK_Jnt_parentConstraint2.cpim"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt.rp" "L_Foot_01_IK_Jnt_parentConstraint2.crp"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt.rpt" "L_Foot_01_IK_Jnt_parentConstraint2.crt"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt.jo" "L_Foot_01_IK_Jnt_parentConstraint2.cjo"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt.t" "L_Foot_01_IK_Jnt_parentConstraint2.tg[0].tt"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt.rp" "L_Foot_01_IK_Jnt_parentConstraint2.tg[0].trp"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt.rpt" "L_Foot_01_IK_Jnt_parentConstraint2.tg[0].trt"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt.r" "L_Foot_01_IK_Jnt_parentConstraint2.tg[0].tr"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt.ro" "L_Foot_01_IK_Jnt_parentConstraint2.tg[0].tro"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt.s" "L_Foot_01_IK_Jnt_parentConstraint2.tg[0].ts"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt.pm" "L_Foot_01_IK_Jnt_parentConstraint2.tg[0].tpm"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt.jo" "L_Foot_01_IK_Jnt_parentConstraint2.tg[0].tjo"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt.ssc" "L_Foot_01_IK_Jnt_parentConstraint2.tg[0].tsc"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt.is" "L_Foot_01_IK_Jnt_parentConstraint2.tg[0].tis"
		;
connectAttr "L_Foot_01_IK_Jnt_parentConstraint2.w0" "L_Foot_01_IK_Jnt_parentConstraint2.tg[0].tw"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt.pim" "L_Foot_01_IK_Jnt_scaleConstraint2.cpim"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt.s" "L_Foot_01_IK_Jnt_scaleConstraint2.tg[0].ts"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt.pm" "L_Foot_01_IK_Jnt_scaleConstraint2.tg[0].tpm"
		;
connectAttr "L_Foot_01_IK_Jnt_scaleConstraint2.w0" "L_Foot_01_IK_Jnt_scaleConstraint2.tg[0].tw"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt.s" "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt.is"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt.s" "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Ball_Jnt.is"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Ball_Jnt.s" "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Ball_Jnt|L_Foot_Reverse_Ankle_Jnt.is"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt.msg" "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Ball_Jnt|L_Foot_Reverse_Ankle_Jnt|L_Leg_IK_Handle.hsj"
		;
connectAttr "effector4.hp" "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Ball_Jnt|L_Foot_Reverse_Ankle_Jnt|L_Leg_IK_Handle.hee"
		;
connectAttr "ikRPsolver.msg" "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Ball_Jnt|L_Foot_Reverse_Ankle_Jnt|L_Leg_IK_Handle.hsv"
		;
connectAttr "L_Leg_IK_Handle_poleVectorConstraint2.ctx" "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Ball_Jnt|L_Foot_Reverse_Ankle_Jnt|L_Leg_IK_Handle.pvx"
		;
connectAttr "L_Leg_IK_Handle_poleVectorConstraint2.cty" "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Ball_Jnt|L_Foot_Reverse_Ankle_Jnt|L_Leg_IK_Handle.pvy"
		;
connectAttr "L_Leg_IK_Handle_poleVectorConstraint2.ctz" "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Ball_Jnt|L_Foot_Reverse_Ankle_Jnt|L_Leg_IK_Handle.pvz"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Ball_Jnt|L_Foot_Reverse_Ankle_Jnt|L_Leg_IK_Handle.pim" "L_Leg_IK_Handle_poleVectorConstraint2.cpim"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt.pm" "L_Leg_IK_Handle_poleVectorConstraint2.ps"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Leg_Hip_IK_Jnt.t" "L_Leg_IK_Handle_poleVectorConstraint2.crp"
		;
connectAttr "|Legg|Controls|Leg_Grps|L_Leg_IK_Ctrl_Grps|L_Leg_PV_Ctrl_Grp.t" "L_Leg_IK_Handle_poleVectorConstraint2.tg[0].tt"
		;
connectAttr "|Legg|Controls|Leg_Grps|L_Leg_IK_Ctrl_Grps|L_Leg_PV_Ctrl_Grp.rp" "L_Leg_IK_Handle_poleVectorConstraint2.tg[0].trp"
		;
connectAttr "|Legg|Controls|Leg_Grps|L_Leg_IK_Ctrl_Grps|L_Leg_PV_Ctrl_Grp.rpt" "L_Leg_IK_Handle_poleVectorConstraint2.tg[0].trt"
		;
connectAttr "|Legg|Controls|Leg_Grps|L_Leg_IK_Ctrl_Grps|L_Leg_PV_Ctrl_Grp.pm" "L_Leg_IK_Handle_poleVectorConstraint2.tg[0].tpm"
		;
connectAttr "L_Leg_IK_Handle_poleVectorConstraint2.w0" "L_Leg_IK_Handle_poleVectorConstraint2.tg[0].tw"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|L_Foot_01_IK_Jnt.msg" "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Ball_Jnt|L_Foot_01_IK_Handle.hsj"
		;
connectAttr "effector5.hp" "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Ball_Jnt|L_Foot_01_IK_Handle.hee"
		;
connectAttr "ikSCsolver.msg" "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Ball_Jnt|L_Foot_01_IK_Handle.hsv"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt.s" "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Toe_Jnt.is"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Toe_Jnt.s" "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Toe_Jnt|L_Foot_Reverse_Toe_Tip_Jnt.is"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Toe_Jnt.msg" "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Toe_Jnt|L_Foot_Reverse_Toe_Tip_Jnt|L_Foot_02_IK_Handle.hsj"
		;
connectAttr "effector6.hp" "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Toe_Jnt|L_Foot_Reverse_Toe_Tip_Jnt|L_Foot_02_IK_Handle.hee"
		;
connectAttr "ikSCsolver.msg" "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Toe_Jnt|L_Foot_Reverse_Toe_Tip_Jnt|L_Foot_02_IK_Handle.hsv"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Toe_Jnt|L_Foot_Reverse_Toe_Tip_Jnt.tx" "effector6.tx"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Toe_Jnt|L_Foot_Reverse_Toe_Tip_Jnt.ty" "effector6.ty"
		;
connectAttr "|Legg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Toe_Jnt|L_Foot_Reverse_Toe_Tip_Jnt.tz" "effector6.tz"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "|ReverseFoot_Example|Leg|Controls|Limbs_Ctrl_Grp|L_Leg_Ctrl_Grp|L_Leg_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl.FootRoll" "L_Foot_Reverse_Ball_Jnt_rotateX.i"
		;
connectAttr "|ReverseFoot_Example|Leg|Controls|Limbs_Ctrl_Grp|L_Leg_Ctrl_Grp|L_Leg_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl.FootRoll" "L_Foot_Reverse_Heel_Jnt_rotateX.i"
		;
connectAttr "|ReverseFoot_Example|Leg|Controls|Limbs_Ctrl_Grp|L_Leg_Ctrl_Grp|L_Leg_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl.HeelRock" "L_Foot_Reverse_Heel_Jnt_rotateZ.i"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt|L_Foot_Reverse_Tip_Jnt|L_Foot_Reverse_Ball_Jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "L_Foot_Reverse_Heel_Jnt_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "Reverse_Foot_Jnt_Grp_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "L_Foot_Reverse_Ball_Jnt_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "|ReverseFoot_Example|Leg|Controls|Limbs_Ctrl_Grp|L_Leg_Ctrl_Grp|L_Leg_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl|L_Leg_Foot_IK_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "Reverse_Foot_Jnt_Grp_scaleConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "|ReverseFoot_Example|Leg|Controls|Limbs_Ctrl_Grp|L_Leg_Ctrl_Grp|L_Leg_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "|ReverseFoot_Example|Leg|Skeleton|Limbs_Jnt_Grp|L_Leg_Jnt_Grp|L_Leg_IK_Jnt_Grp|Reverse_Foot_Jnt_Grp|L_Foot_Reverse_Heel_Jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "L_Foot_Reverse_Heel_Jnt_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "|ReverseFoot_Example|Leg|Controls|Limbs_Ctrl_Grp|L_Leg_Ctrl_Grp|L_Leg_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl.HeelPivot" "L_Foot_Reverse_Heel_Jnt_rotateY.i"
		;
connectAttr "|ReverseFoot_Example|Leg|Controls|Limbs_Ctrl_Grp|L_Leg_Ctrl_Grp|L_Leg_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl.BallPivot" "L_Foot_Reverse_Ball_Jnt_rotateY.i"
		;
connectAttr "|ReverseFoot_Example|Leg|Controls|Limbs_Ctrl_Grp|L_Leg_Ctrl_Grp|L_Leg_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl.BallRock" "L_Foot_Reverse_Ball_Jnt_rotateZ.i"
		;
connectAttr "|ReverseFoot_Example|Leg|Controls|Limbs_Ctrl_Grp|L_Leg_Ctrl_Grp|L_Leg_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl.TipRoll" "L_Foot_Reverse_Tip_Jnt_rotateX.i"
		;
connectAttr "|ReverseFoot_Example|Leg|Controls|Limbs_Ctrl_Grp|L_Leg_Ctrl_Grp|L_Leg_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl.TipPivot" "L_Foot_Reverse_Tip_Jnt_rotateY.i"
		;
connectAttr "|ReverseFoot_Example|Leg|Controls|Limbs_Ctrl_Grp|L_Leg_Ctrl_Grp|L_Leg_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl.TipRock" "L_Foot_Reverse_Tip_Jnt_rotateZ.i"
		;
connectAttr "|ReverseFoot_Example|Leg|Controls|Limbs_Ctrl_Grp|L_Leg_Ctrl_Grp|L_Leg_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl.ToeRoll" "L_Foot_Reverse_Toe_Jnt_rotateX.i"
		;
connectAttr "|ReverseFoot_Example|Leg|Controls|Limbs_Ctrl_Grp|L_Leg_Ctrl_Grp|L_Leg_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl.ToePivot" "L_Foot_Reverse_Toe_Jnt_rotateY.i"
		;
connectAttr "|ReverseFoot_Example|Leg|Controls|Limbs_Ctrl_Grp|L_Leg_Ctrl_Grp|L_Leg_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl_Grp|L_Leg_Foot_IK_Ctrl.ToeRock" "L_Foot_Reverse_Toe_Jnt_rotateZ.i"
		;
connectAttr "layerManager.dli[1]" "ReverseFootExample.id";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ikSCsolver.msg" ":ikSystem.sol" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of IK Reverse Foot JB.0003.ma
