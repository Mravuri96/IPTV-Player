"use strict";
const MANIFEST = "flutter-app-manifest";
const TEMP = "flutter-temp-cache";
const CACHE_NAME = "flutter-app-cache";
const RESOURCES = {
  "version.json": "3d15c17ff8c6feb86aae0e2609b03638",
  "index.html": "fb800afc7676acaa3bf2d1dfb341e947",
  "/": "fb800afc7676acaa3bf2d1dfb341e947",
  "main.dart.js": "32bc4ddce33fece9cabd756ddf89dbb5",
  "favicon.png": "5dcef449791fa27946b3d35ad8803796",
  "icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
  "icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
  "style.css": "24cf37ad42de3cf9e679249087ba7569",
  "manifest.json": "2b569aa972112685ee6261e3aec609fd",
  "assets/AssetManifest.json": "e1734aa018e6752b9a6136b7aae3f4d6",
  "assets/NOTICES": "5b3d571cfe4a6641e8cfe22d273634c4",
  "assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
  "assets/packages/cupertino_icons/assets/CupertinoIcons.ttf":
    "0dffa2cbbcdea0591eff6f766f79f82f",
  "assets/fonts/MaterialIcons-Regular.otf": "8c82e3c7451161c7d7bba8f7bc0559e4",
  "assets/assets/flags/TG.png": "c0b334a02cb92187ebb43f37917da954",
  "assets/assets/flags/ME.png": "e208018fc29f9fb229589c9bca63d05f",
  "assets/assets/flags/LA.png": "692851ad24da6bc9584eca3e0e05c552",
  "assets/assets/flags/MR.png": "57e67d1352a4786a4cd59b1055e82ace",
  "assets/assets/flags/NI.png": "516043e4c0c86975cd2d62d4bb911c24",
  "assets/assets/flags/LV.png": "7907ee13be4de3815d9e10e738a334c2",
  "assets/assets/flags/OM.png": "3a33a736cafc2b1a163aab0b17775f1d",
  "assets/assets/flags/AF.png": "5c1cfc0c6b4785809f068f21c3aaab0e",
  "assets/assets/flags/CY.png": "626d4f7998d97a2543d1937f87eca13e",
  "assets/assets/flags/BJ.png": "dbbe8ee7b6f9f34c9c5cfa0b80ef181a",
  "assets/assets/flags/AQ.png": "9f3140322645d66e28d36ab97d95f503",
  "assets/assets/flags/CN.png": "58b6c4aa4116ebaabbb68a493a70b055",
  "assets/assets/flags/GB-SCT.png": "e243251b478dbb9b854ed33a2f0cf1b4",
  "assets/assets/flags/CO.png": "57597e644410d5c1055810c0ddf585f7",
  "assets/assets/flags/CX.png": "be60c78f191c74224e1cb62b16515193",
  "assets/assets/flags/AG.png": "647aa9e2ef067a33081e51b22374bfeb",
  "assets/assets/flags/MS.png": "e072794b16c16bbd4bac2dc1f144ca75",
  "assets/assets/flags/MD.png": "11ba490248cd058cb4a9674553f344e2",
  "assets/assets/flags/ZM.png": "c56b1538316b8a0f17bde3278a76ff30",
  "assets/assets/flags/VN.png": "c05dadc3a32d73d9b970a0a77ee7c93b",
  "assets/assets/flags/TF.png": "1aa646e33ea6eaa0b589995b78dd2e99",
  "assets/assets/flags/TD.png": "c07b6797920d5949d875ee41dfdac093",
  "assets/assets/flags/YT.png": "85ee3ae2d2376c7e00a933e71dc5c506",
  "assets/assets/flags/LB.png": "ca634125a0b97fe0ab657034c831de3f",
  "assets/assets/flags/LU.png": "bbba3c0d2c7230c3cfbfef3a8af20097",
  "assets/assets/flags/MQ.png": "eae52ac453708de133a2be77bd490b61",
  "assets/assets/flags/CZ.png": "508ca01dd0dad0f25c99b36a17dbd43c",
  "assets/assets/flags/AE.png": "fdf9e24c3eaa6f428457ca640b0eca5b",
  "assets/assets/flags/CM.png": "0b357d6f6c8bc50a7c8777938799ba0f",
  "assets/assets/flags/BI.png": "7548fa26aaacb2c5dd02e34fd8c478cd",
  "assets/assets/flags/AR.png": "3bbe41c280163f27f88acb8ed0dbd2ab",
  "assets/assets/flags/AS.png": "ec60fd1bc48c1a37ae5aa10b2ecc7aa3",
  "assets/assets/flags/BH.png": "ccb0857add27c82219a24f040c39ca22",
  "assets/assets/flags/CL.png": "051393302491f714811bddc26e90d76c",
  "assets/assets/flags/AD.png": "b6a832dcbe91908afdf6a1cce9848458",
  "assets/assets/flags/MP.png": "c553b735ef762b57069e07bf9f6725e4",
  "assets/assets/flags/LT.png": "33f48c521217aa6c52b381c96cbcdf2f",
  "assets/assets/flags/MG.png": "b488bb9dba3d0ba3e4042de283842acb",
  "assets/assets/flags/LC.png": "931311ddd8628b2c1b02c87c010f7f99",
  "assets/assets/flags/TR.png": "e57e26ed02a6f1cfa622c2b87b90a8c4",
  "assets/assets/flags/UA.png": "9ef53f1f4690fec50753ee7809dfce36",
  "assets/assets/flags/TV.png": "57ef92dc0afd0c22bc7d160f613bbdfa",
  "assets/assets/flags/VI.png": "5032312edb72cbaafdd428d0cb6c51f2",
  "assets/assets/flags/TA.png": "ff5bd89a04556c0c5c33aae4caa192fc",
  "assets/assets/flags/MT.png": "bc46c16a449334905aa2f1e27330aea8",
  "assets/assets/flags/NO.png": "0989fa26e6ec1d5222681801ce1928c5",
  "assets/assets/flags/MC.png": "f19b9e04b4865e7903630edf193baf52",
  "assets/assets/flags/CH.png": "e19c3230e81314b6ea122c7178d375e1",
  "assets/assets/flags/BL.png": "39ae0fc22b9fe32597c0f247221d3bf7",
  "assets/assets/flags/AW.png": "85af5225fe853802af5edaaa79fa0f8f",
  "assets/assets/flags/BZ.png": "3c245cbe3d384dbf66ac2087669d6f84",
  "assets/assets/flags/BM.png": "e11fc717aa265cc9b62e9f22bb103826",
  "assets/assets/flags/CI.png": "623b6ebb3d18363c52b3acb14fdd71ef",
  "assets/assets/flags/MU.png": "4ae0fbc759c3e7924d597f699b9c917f",
  "assets/assets/flags/US.png": "969f9454a0a770848bf802596fb2d766",
  "assets/assets/flags/TW.png": "08d7ae34fb4521f4d52c9be2dec15c98",
  "assets/assets/flags/YE.png": "d286a7284bbf3dd9ae978cbc8277076e",
  "assets/assets/flags/MW.png": "42edefa6bb5c1b3ac099cd1a20286f06",
  "assets/assets/flags/NL.png": "95057e0ec8ec3122dd9bc531678754d0",
  "assets/assets/flags/LS.png": "c70074febbcb344c449ea3a358c8f798",
  "assets/assets/flags/BO.png": "12c3edda062539a0e9e604c9016a26d7",
  "assets/assets/flags/AT.png": "d8c015bda629f28a82cb56f8f9751ec9",
  "assets/assets/flags/CK.png": "c7e473e5ef94cb17069e974f937437c7",
  "assets/assets/flags/AC.png": "5335de0d9c69503fc9cf20963fae805e",
  "assets/assets/flags/BY.png": "cb8db1797cbe56967a5d7b10ab8fc70b",
  "assets/assets/flags/AU.png": "2b16d066d95ee2a26bbfb98e3933283d",
  "assets/assets/flags/BN.png": "422ca768e9b0fa70897948ad376a06f8",
  "assets/assets/flags/MA.png": "d5bfc7ffa9c0e95774b117b73c63dae1",
  "assets/assets/flags/NZ.png": "2cde44638e1053f8628315e360d690a1",
  "assets/assets/flags/LR.png": "13e8ff8ed976b5705a23dfa9d8521c2f",
  "assets/assets/flags/MV.png": "f87c122214f770e40e18e3c6b486e754",
  "assets/assets/flags/TC.png": "50268bb4b8d6015358b3288e5a8ed376",
  "assets/assets/flags/UG.png": "c8c3b50696946aa88db992ff23a8b385",
  "assets/assets/flags/TT.png": "23bf10fce3226333c83d3604be8ff427",
  "assets/assets/flags/PL.png": "0081acc73f7514821149e43d2304208e",
  "assets/assets/flags/RS.png": "d99614eb9793cfa09c669859ebd6ae8f",
  "assets/assets/flags/IN.png": "da1488bcfacd18a79b6d802779d98731",
  "assets/assets/flags/GE.png": "00176040b09e817678f9dac2d5a5a6ab",
  "assets/assets/flags/GR.png": "0ae31994d5cba58529798478bf0348e8",
  "assets/assets/flags/GS.png": "0a64a05722db5b7ae244bf9495063c82",
  "assets/assets/flags/GD.png": "0185da4507ad62f161d5997fda6d496d",
  "assets/assets/flags/IO.png": "2eeb75f2e22f961c6166942deeb44037",
  "assets/assets/flags/HK.png": "050f62431c7d4adab2755289e5c3c188",
  "assets/assets/flags/KP.png": "43d6093afd6b6bfac9ac9f5ba9b58d98",
  "assets/assets/flags/KG.png": "0af4d294c7e949e5529f495d694de512",
  "assets/assets/flags/PM.png": "f53f08df7328aeacde0cae0c71308beb",
  "assets/assets/flags/SV.png": "6ba0503dbaa661f7b1f32453da381f72",
  "assets/assets/flags/RE.png": "e57a36c6eac23cedb2cea2051776da00",
  "assets/assets/flags/SA.png": "778a617e0ae17687cbf12ffecf3214bd",
  "assets/assets/flags/SC.png": "8b15a673b141f947b8c26367953492b2",
  "assets/assets/flags/ST.png": "1221ebcc92d544f2bc3a49adce91670f",
  "assets/assets/flags/KE.png": "267e882c0028a8c71edd5dee08b08b85",
  "assets/assets/flags/IM.png": "c29b5938b7ac3318956539fe8e984dd4",
  "assets/assets/flags/KR.png": "92875b72959c10117202a6de9356eff3",
  "assets/assets/flags/GF.png": "16234495bf53c73d1868652be3ca9728",
  "assets/assets/flags/DJ.png": "8418d143612d4aec48e7b12aa93aafd3",
  "assets/assets/flags/GQ.png": "947c9f4d1d277def0991216a820e8a04",
  "assets/assets/flags/GP.png": "f8d9b49e71b240acfc183730f75bf27e",
  "assets/assets/flags/DK.png": "b1386a914634886bd567d8cbd8b4262b",
  "assets/assets/flags/GG.png": "7b60cdd5be8010e35eaeadad31912f89",
  "assets/assets/flags/IL.png": "9a29d1e024d0190ea96243ca9293a806",
  "assets/assets/flags/PN.png": "2d1136fae31a449c12f08b78df86dcbc",
  "assets/assets/flags/SB.png": "74ec0b17be9eb7effe58547aab88cff6",
  "assets/assets/flags/PY.png": "2fb39e4dc113c7f69b1a851d2eccf23e",
  "assets/assets/flags/RU.png": "a74a1002380b18e2404cfde4ecde0a8d",
  "assets/assets/flags/KW.png": "cc8185d5f8b6568de652184bc1cb3fa8",
  "assets/assets/flags/DO.png": "137f964b2d1f7c572b63a12ef8846f88",
  "assets/assets/flags/GT.png": "353653a13a7b31d2183b0e5697fe6486",
  "assets/assets/flags/GB.png": "a6acc05839083072474763b7e3195b64",
  "assets/assets/flags/GU.png": "fa7c91a0a447aa1a25b626278b382c4f",
  "assets/assets/flags/JE.png": "42538700a7a35fa6a960b46ce2a4be21",
  "assets/assets/flags/SG.png": "95e8aac6c41413c2446280a60a847704",
  "assets/assets/flags/PK.png": "333e2225ef2efc6348fae62f7528d54f",
  "assets/assets/flags/SR.png": "f07ac7c30239a7ab4a3c552f4a971cfd",
  "assets/assets/flags/SE.png": "7d90465418aaf18fe117c1be8246635d",
  "assets/assets/flags/JP.png": "716bd25864e9ddc32a0cb30910b0ba9e",
  "assets/assets/flags/GW.png": "337fbd1986f417fbd4fc3e59d2cd94b0",
  "assets/assets/flags/EH.png": "6537c44aed50aedbcf1050ad075ec266",
  "assets/assets/flags/DZ.png": "afed9c6fffb00ea71ce8153eb53e35d1",
  "assets/assets/flags/GA.png": "74a012d600668c5adf5cceefe33a1dcc",
  "assets/assets/flags/FR.png": "3c7abffc8a464845cd5a65bf2be969a1",
  "assets/assets/flags/DM.png": "dbeda1ade2910ec182fb11c1c46c8c49",
  "assets/assets/flags/HN.png": "7e5ae4759614458c66105674490ce5fb",
  "assets/assets/flags/SD.png": "3c07428e44a0d28ddf4eea911e2123c1",
  "assets/assets/flags/RW.png": "10085857a2bb86d71174ad2255dd5230",
  "assets/assets/flags/PH.png": "ecd317d5415bd87c992069c8d4dc7773",
  "assets/assets/flags/SS.png": "88b206b5c26098ddcda1b9e8d49324e8",
  "assets/assets/flags/QA.png": "3434841dc43769b0c211e2e34affd85e",
  "assets/assets/flags/PE.png": "cd07224af85bad5f73cc61f875c4cc2a",
  "assets/assets/flags/PR.png": "5c1f9a990a97ba049449f6125860acb7",
  "assets/assets/flags/SI.png": "c94f0bb363fc8ec797807e884f10133f",
  "assets/assets/flags/HT.png": "8fef5dd5417d460c29b5325d798543d2",
  "assets/assets/flags/ES.png": "584999e79b7b5c37b69b7008df8ce7e6",
  "assets/assets/flags/GL.png": "0c03287d5d2f0d62d0e5863e31c787f3",
  "assets/assets/flags/GM.png": "be23f89fd0de317f359c11a6e224d3d0",
  "assets/assets/flags/ER.png": "6c0f342ce8e53d47dbc37f8c656e24bf",
  "assets/assets/flags/FI.png": "7630dd87e0165ade0d29c5647fa493bd",
  "assets/assets/flags/EE.png": "d622c2036d3ce6e0f633e69397e66a48",
  "assets/assets/flags/KN.png": "f8be1bd3323a85c692599f3a648eed82",
  "assets/assets/flags/HU.png": "a10344238b164452f7f36e76d825ad31",
  "assets/assets/flags/IQ.png": "8002d9434f54a3ae74cce1ed755c10f6",
  "assets/assets/flags/KY.png": "8435f1963fa7d99f31f1454815942c96",
  "assets/assets/flags/SH.png": "4cf103e843e9a309951bb8860cf86e10",
  "assets/assets/flags/PS.png": "e4f06dac6cc91d536c307a12a981f7bc",
  "assets/assets/flags/PF.png": "66273ecec202941ad1913b3ed863d30c",
  "assets/assets/flags/ID.png": "914ae2cfaf910503cf90b68033614942",
  "assets/assets/flags/IS.png": "95af6a09af18399fe0c7b2f1362a81da",
  "assets/assets/flags/EG.png": "22ddd88832ec8432efb3fc640484c6d9",
  "assets/assets/flags/FK.png": "fb276189eadd2e27e516941dbe80ab04",
  "assets/assets/flags/FJ.png": "2051837b974629a3e5c6145b149745e3",
  "assets/assets/flags/GN.png": "b771e3fbec0ab91199ce4e34210ecfbb",
  "assets/assets/flags/GY.png": "03c8c8cfa657de9d4aa376b7f682f023",
  "assets/assets/flags/IR.png": "b21384279f5dd86d9e4e2b3371f0233f",
  "assets/assets/flags/KM.png": "bacc3fcd503c0b8e1a42a7f6c23b1b06",
  "assets/assets/flags/IE.png": "2506585db8d58aab1c7deaa7ba9f9c9b",
  "assets/assets/flags/KZ.png": "ad3c714e4dc500a04e75890119a222d7",
  "assets/assets/flags/RO.png": "bc166973b19e3ccb1f4a0d5e581be85e",
  "assets/assets/flags/SK.png": "2191f5c2de659b6dce62ce7e0c8fef8f",
  "assets/assets/flags/PG.png": "52216f661d8974a5494e7c350e057355",
  "assets/assets/flags/PT.png": "70f7910b052f31cff9cd5e6cda7a7324",
  "assets/assets/flags/SO.png": "d1ef87449cfb45e2370e3e45064e8223",
  "assets/assets/flags/SX.png": "72050b25b3cc09345e6b54cd1479f563",
  "assets/assets/flags/HR.png": "edab69295ed0bfe96bdaed5ef9d18a3c",
  "assets/assets/flags/KI.png": "1b8b57e430b52019a761bfa528187336",
  "assets/assets/flags/JM.png": "061accba3ff561ad2082751ac976a33c",
  "assets/assets/flags/EU.png": "0a5d15a086aa8b1f29853ff27b876425",
  "assets/assets/flags/EC.png": "86ddc44636b724e50751eecf876a123c",
  "assets/assets/flags/ET.png": "1691ee12120af98bcdd1e1414ade7021",
  "assets/assets/flags/FO.png": "19fef257fffdd3a27442dc7ba03ab095",
  "assets/assets/flags/KH.png": "b81fd258d58c85cc4fadb9cdf86fe92f",
  "assets/assets/flags/SY.png": "a8054a60138e39a4b5398c8165410e48",
  "assets/assets/flags/SN.png": "ae9f182a692095b15e6935f25bd31d66",
  "assets/assets/flags/PW.png": "4ee6eff8f89e865e6bafa36d8eea84f4",
  "assets/assets/flags/SL.png": "ef8735f214a34cc3333c400e320d9532",
  "assets/assets/flags/GB-ENG.png": "c18ed965a72802ef0577f80dbbb3f070",
  "assets/assets/flags/FM.png": "e1a79a57360dab76d641ebd41457d551",
  "assets/assets/flags/GI.png": "07e692606e937391d7c15ed04c5d7a0d",
  "assets/assets/flags/DE.png": "508c541e84016c3809b62bf125b7859d",
  "assets/assets/flags/GH.png": "e85550d77f42433b2551c11d9f072727",
  "assets/assets/flags/IC.png": "ecf142e2873fb8aab8ca89df7555dbe2",
  "assets/assets/flags/JO.png": "57fa046f420cf7d24a4118bacd1cb57a",
  "assets/assets/flags/IT.png": "714c48c9a5c02b63f873be0554705084",
  "assets/assets/flags/PA.png": "0bd469e56fafe3f505e56c2505bb95ed",
  "assets/assets/flags/SZ.png": "192ec6d022db96e5dca8d5c87c5e2dd1",
  "assets/assets/flags/SM.png": "1cacab79b65858e1eff0afd83723058c",
  "assets/assets/flags/TN.png": "9d9217ef8a4ef3a481ea98c7bfc1523c",
  "assets/assets/flags/ML.png": "6e3084081743f762909987af506c464a",
  "assets/assets/flags/CG.png": "bc70bac4016880af1136b68f97762e18",
  "assets/assets/flags/AX.png": "117bf2ce5eae49c7fac88e0578bc985a",
  "assets/assets/flags/AO.png": "9e9668c982d5ee163060b6af6bede737",
  "assets/assets/flags/BT.png": "b633aa42d817ba892dccfb2a0288c54e",
  "assets/assets/flags/BB.png": "abbf7dbef161ad57afa500250ad4dd5e",
  "assets/assets/flags/CF.png": "c240353646f9dd833d50db6c2117d013",
  "assets/assets/flags/MM.png": "8eeeab9d163a8cff469248b8f7b1f092",
  "assets/assets/flags/LI.png": "53d6dd727ef07dfdf78222cebf60ba4f",
  "assets/assets/flags/NA.png": "b32f3b674f7b02fe205c8d657c9a91f4",
  "assets/assets/flags/MZ.png": "c14796ae7b79f6b561569bc8ba2ef604",
  "assets/assets/flags/TO.png": "570ff7a05f2f1e521b0591812773346d",
  "assets/assets/flags/VG.png": "ea42af80dfb98fdb569774ed8bf9017c",
  "assets/assets/flags/VE.png": "71833db5c78288a7908905633dfb29b0",
  "assets/assets/flags/TZ.png": "2e31310333547e19b0092d957c424414",
  "assets/assets/flags/TM.png": "11a78761c323c0668b3ca5b75a8b8708",
  "assets/assets/flags/MX.png": "81ee368235a20cb0e65e03bff5e39ced",
  "assets/assets/flags/NC.png": "9eff5fd8ffeb42bbcd1306d153572a2a",
  "assets/assets/flags/MO.png": "b12060220ca994a40182e1626fb5213b",
  "assets/assets/flags/LK.png": "26f67f6da431b920bc96d2b5e0bc0890",
  "assets/assets/flags/CD.png": "e8ac54ac41efc875414bf9fa2b1e4d95",
  "assets/assets/flags/AL.png": "8f42466d9323a16e54a9e510954036d3",
  "assets/assets/flags/BW.png": "462157926a086482c03feaa35f1e28ac",
  "assets/assets/flags/CR.png": "32e67a73b84e5096198d87c6823261b6",
  "assets/assets/flags/AM.png": "50c6cc9a49f74ddc31bf02f349f00318",
  "assets/assets/flags/AZ.png": "cdd0bc7fd4de90375adf196b15dd4c02",
  "assets/assets/flags/BA.png": "0617f86f67c4575f743d75841d5ec9dd",
  "assets/assets/flags/MN.png": "13a154a6d30eccb67938802db5b2bbfc",
  "assets/assets/flags/NU.png": "26df386b4b63bca077229d8e064863bc",
  "assets/assets/flags/MY.png": "45a1a1c085e33d6ccc9683bf1b343c12",
  "assets/assets/flags/TL.png": "f40807b0c14857ebe0d6e417c5b0523e",
  "assets/assets/flags/WS.png": "b506946b09500693ed8639f4db6288b7",
  "assets/assets/flags/TH.png": "40268082944e7a286f15a7ec6ff282b4",
  "assets/assets/flags/XK.png": "ce77ce89afaa6b17e4e5949ae2fd4876",
  "assets/assets/flags/NF.png": "4ccd49b29b979c7aaeadbff99b0d6917",
  "assets/assets/flags/LY.png": "4937109e0d97b67a9d9b4235542cddff",
  "assets/assets/flags/AI.png": "75c888b1a89e7b0acd04138c832c71f8",
  "assets/assets/flags/BR.png": "b0b6f47d60a369765e707fbf17627a60",
  "assets/assets/flags/CV.png": "2c3663f3ef8cd8ed843c91af8b07e5f9",
  "assets/assets/flags/BE.png": "11d98f82346db972c542091dfd703a99",
  "assets/assets/flags/CA.png": "d9547090cf7749b2844d900dd9c72a23",
  "assets/assets/flags/BD.png": "99eecbabc7c4005f55c56c300ac69487",
  "assets/assets/flags/CW.png": "e45914789c2adde70b8ca1172f937269",
  "assets/assets/flags/BS.png": "9fc49ab0d3026e722a3acdaf455b8476",
  "assets/assets/flags/NG.png": "9584d3a86f3d53332f161cc95cc50a11",
  "assets/assets/flags/MK.png": "fa0fa10fb05fbc63c95d98872e51bbb7",
  "assets/assets/flags/NP.png": "dcc876c6b5dae40af97e32112251093c",
  "assets/assets/flags/VA.png": "fdf9972d6f9b6212fe5be18c2ad1350a",
  "assets/assets/flags/UZ.png": "227dae39a34728107371372aed31fbbd",
  "assets/assets/flags/TK.png": "41e8bb21b541a1cf55e0190e8a85ec91",
  "assets/assets/flags/VC.png": "0d66b3a2987143e9cb091c45680f10ec",
  "assets/assets/flags/ZW.png": "304b761422a642a02046f3c3514f651c",
  "assets/assets/flags/NR.png": "c0ccb744cead3f5c2f09797895bcdf8b",
  "assets/assets/flags/NE.png": "8a8a522f8a7ad4136df1ea58cf1ba367",
  "assets/assets/flags/CU.png": "9a689608918506d26ed6dc4155164792",
  "assets/assets/flags/BQ.png": "35b4bee50ceea756c5f366e5805c6bbe",
  "assets/assets/flags/BF.png": "5d128bac941d7ce9bd6e375a16d64e2a",
  "assets/assets/flags/BG.png": "54afea6a9f4aabec3c63f0167eb39d51",
  "assets/assets/flags/CC.png": "2061f00a86dfdfeb95bfe0b319bc78b1",
  "assets/assets/flags/GB-WLS.png": "348c06e88ca2d52e0d995dc3e2fc1338",
  "assets/assets/flags/MH.png": "aca480f352c16411d7a1cd4315dda32d",
  "assets/assets/flags/ZA.png": "188523e6a32632d5153c613a852c88ce",
  "assets/assets/flags/UY.png": "64289123353a349a81fa4effbc55c8e9",
  "assets/assets/flags/WF.png": "af007d9273a9251989b570944d38adb4",
  "assets/assets/flags/UN.png": "8dc9a3e74d3fe738df43309969f8bf95",
  "assets/assets/flags/VU.png": "e756fccffb7ec1b6aabe46f4affe94f7",
  "assets/assets/flags/TJ.png": "91deee4a1e841a39616779bf6eeb2f0d",
  "assets/assets/streams.zip": "e35617f198222f9df71284e543a5e175",
  "assets/assets/channels.zip": "4834d018141f223f2f70e69d3eff5d37",
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
  "main.dart.js",
  "index.html",
  "assets/NOTICES",
  "assets/AssetManifest.json",
  "assets/FontManifest.json",
];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map(
          (value) =>
            new Request(value + "?revision=" + RESOURCES[value], {
              cache: "reload",
            })
        )
      );
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function (event) {
  return event.waitUntil(
    (async function () {
      try {
        var contentCache = await caches.open(CACHE_NAME);
        var tempCache = await caches.open(TEMP);
        var manifestCache = await caches.open(MANIFEST);
        var manifest = await manifestCache.match("manifest");
        // When there is no prior manifest, clear the entire cache.
        if (!manifest) {
          await caches.delete(CACHE_NAME);
          contentCache = await caches.open(CACHE_NAME);
          for (var request of await tempCache.keys()) {
            var response = await tempCache.match(request);
            await contentCache.put(request, response);
          }
          await caches.delete(TEMP);
          // Save the manifest to make future upgrades efficient.
          await manifestCache.put(
            "manifest",
            new Response(JSON.stringify(RESOURCES))
          );
          return;
        }
        var oldManifest = await manifest.json();
        var origin = self.location.origin;
        for (var request of await contentCache.keys()) {
          var key = request.url.substring(origin.length + 1);
          if (key == "") {
            key = "/";
          }
          // If a resource from the old manifest is not in the new cache, or if
          // the MD5 sum has changed, delete it. Otherwise the resource is left
          // in the cache and can be reused by the new service worker.
          if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
            await contentCache.delete(request);
          }
        }
        // Populate the cache with the app shell TEMP files, potentially overwriting
        // cache files preserved above.
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put(
          "manifest",
          new Response(JSON.stringify(RESOURCES))
        );
        return;
      } catch (err) {
        // On an unhandled exception the state of the cache cannot be guaranteed.
        console.error("Failed to upgrade service worker: " + err);
        await caches.delete(CACHE_NAME);
        await caches.delete(TEMP);
        await caches.delete(MANIFEST);
      }
    })()
  );
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== "GET") {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf("?v=") != -1) {
    key = key.split("?v=")[0];
  }
  if (
    event.request.url == origin ||
    event.request.url.startsWith(origin + "/#") ||
    key == ""
  ) {
    key = "/";
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == "/") {
    return onlineFirst(event);
  }
  event.respondWith(
    caches.open(CACHE_NAME).then((cache) => {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return (
          response ||
          fetch(event.request).then((response) => {
            cache.put(event.request, response.clone());
            return response;
          })
        );
      });
    })
  );
});

self.addEventListener("message", (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === "skipWaiting") {
    self.skipWaiting();
    return;
  }
  if (event.data === "downloadOffline") {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request)
      .then((response) => {
        return caches.open(CACHE_NAME).then((cache) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
      .catch((error) => {
        return caches.open(CACHE_NAME).then((cache) => {
          return cache.match(event.request).then((response) => {
            if (response != null) {
              return response;
            }
            throw error;
          });
        });
      })
  );
}
