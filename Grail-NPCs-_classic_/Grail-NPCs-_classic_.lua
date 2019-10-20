--
--	Grail NPCs
--	Written by scott@mithrandir.com
--
--	Version History
--		Stopped keeping history as it was not maintained.
--
--	Each NPC value is a table that can contain:
--		[1]	code information (see below) like map location
--		[2] optional friendly notes
--		[3] optional faction association
--
--	NPC Codes
--		A:npcId			npcId that is what Blizzard returns for this alias NPC
--		Created			indicates item is created by player
--		D:<npc list>	comma separated list of NPC IDs that drop this item
--		H<holidayCode>	holidayCode is a single character indicating the holiday the NPC is available
--		K:<quest list>	comma separated list of quest IDs for which this is killed
--		Mailbox			indicates item in a mailbox (any map area)
--		Mailbox<mapId>	indicates item in a mailbox in the specified map area
--		N:npcId			npcId whose name is to be used for this NPC
--		Near			indicates the NPC is nearby (any map area)
--		Near<mapId>		indicates the NPC is nearby in the specified map area
--		Preowned		indicates item is already owned
--		Q:<quest list>	comma separated list of quest IDs to which this is associated
--		Self			special NPC indicator for Self (the player)
--		X				indicates NPC is in heroic only
--		Z<mapId>		indicates NPC found in the map area
--		anything else should be the format (without spaces):
--			mapId [mapLevel] : xx.xx , yy.yy > realMapId
--		the "[mapLevel]" is only required for maps with levels, most do not need it
--		the "> realMapId" indicates the coordinates are in a map that contains the realMap...this allows an outer map to show a point for maps that are contained within
--
--	Known issues
--
--
--	Alliance Garrison small plot top step locations:
--		18:	971:46.99,59.27
--		19:	971:50.03,57.75
--		20:	971:51.19,63.58
--	Alliance Garrison medium plot basic entrance locations:
--		22:	971:35.53,49.36
--		25: 971:51.21,47.04
--	Alliance Garrison large plot basic entrance locations:
--		23:	971:45.25,42.49
--		24:	971:40.09,56.58
--
--	Horde Garrison small plot top step locations:
--		18:	976:52.44,37.06
--		19:	976:48.38,33.59
--		20: 976:52.59,40.81
--	Horde Garrison medium plot basic entrance locations:
--		22: 976:51.43,57.39
--		25:	976:57.75,28.14
--	Horde Garrison large plot basic entrance locations:
--		23: 976:58.88,49.06
--		24: 976:60.36,36.51
--
--	Dungeon entrances:
--		Ulduar					495:41.57,17.83
--		Thunder					928:63.73,32.23
--		SM Graveyard 762[1]		20:84.87,30.61
--		SM Cathedral 762[4]		20:85.35,30.62
--		SM Library 762[2]		20:85.29,32.14
--		SM Armory 762[3]		20:85.62,31.59
--		Mechanar				479:70.59,69.73
--		Tempest Keep			479:73.73,63.74
--		Botanica				479:71.72,55.02
--		Arcatraz				479:74.37,57.74
--		Auchanai Crypts			478:34.34,65.61
--		Sethekk Halls			478:44.91,65.61
--		Shadow Labyrinth		478:39.63,73.54
--		Mana Tombs				478:39.63,57.67
--		Blood Furnace			465:46.03,51.79
--		Shattered Halls			465:47.68,51.99
--		Hellfire Ramparts		465:47.63,53.57
--		Black Temple			473:71.05,46.45
--		Grim Batol				700:19.18,54.01
--		Gate of the Setting Sun	811:15.84,74.39
--		Shado-Pan Monastery		809:36.66,47.33
--		Temple of Jade Serpent	806:56.18,57.87
--		Auchindoun				946:46.31,73.93
--		Bloodmaul Slag Mines	941:49.85,24.75
--		Zul Aman				463:82.14,64.35
--
--	UTF-8 file
--
Grail_NPCs_File_Version = 015

if Grail.npcsVersionNumber >= Grail_NPCs_File_Version then return end
Grail.npcsVersionNumber = Grail_NPCs_File_Version

local originalMem = gcinfo()

Grail.npcs = {}

local _, release, _, interface = GetBuildInfo()
release = tonumber(release)
interface = tonumber(interface)

local G = Grail.npcs

if release >= 0 then
G[54]={'FA 1429:42.43,66.56'}
G[97]={'1429:24.19,88.43 1429:26.91,86.46 1429:30.94,87.51 1429:30.41,82.26 1429:66.94,47.17 1429:64.31,38.11 1429:70.53,40.21'}
G[100]={'1429:26.39,93.49 1429:27.25,92.63 1429:27.39,91.41'}
G[116]={'1429:69.35,79.09 1429:68.40,78.00 1429:70.61,78.06 1429:23.40,53.10 1429:71.03,80.06 1429:68.60,80.81 1429:86.6,79.50 1429:52.80,60.80 1429:54.40,61.00 1429:50.60,83.00 1429:47.40,73.80 1429:28.60,58.40 1429:31.60,58.80 1429:32.00,65.60'}
G[126]={'1436:52.59,10.60 1436:56.92,10.51 1436:44.76,9.84 1436:41.67,12.23'}
G[127]={'1436:34.37,84.46 1436:32.34,82.29 1436:29.71,78.69 1436:28.23,71.64 1436:27.45,69.07'}
G[171]={'1436:36.48,18.54 1436:31.67,26.24 1436:29.22,32.76 1436:26.92,47.68 1436:27.02,52.14'}
G[196]={'FA 1429:48.94,40.16'}
G[197]={'FA 1429:48.92,41.60'}
G[198]={'FA 1429:49.66,39.40'}
G[233]={'FA 1436:56.04,31.23'}
G[234]={'FA 1436:56.32,47.52'}
G[235]={'FA 1436:56.41,30.52'}
G[237]={'FA 1436:59.95,19.36'}
G[238]={'FA 1436:59.92,19.41'}
G[239]={'FA 1436:44.63,80.25'}
G[240]={'FA 1429:42.11,65.93'}
G[241]={'FA 1429:42.14,67.25'}
G[244]={'FA 1429:34.66,84.48'}
G[246]={'FA 1429:34.49,84.26'}
G[247]={'FA 1429:43.13,85.72'}
G[248]={'FA 1429:34.94,83.87'}
G[251]={'FA 1429:43.15,89.62'}
G[252]={'FA 1429:29.84,86.01'}
G[253]={'FA 1429:43.32,65.71'}
G[255]={'FA 1429:43.10,85.50'}
G[261]={'FA 1429:73.97,72.19'}
G[263]={'FA 1431:71.92,46.42'}
G[264]={'FA 1431:73.56,46.84'}
G[265]={'FA 1431:75.82,45.31'}
G[266]={'FA 1433:26.55,45.33'}
G[267]={'FA 1431:72.55,46.86'}
G[268]={'FA 1431:72.58,47.56'}
G[270]={'FA 1431:72.03,47.81'}
G[272]={'FA 1431:73.88,44.11'}
G[273]={'FA 1431:74.02,44.81'}
G[276]={'FA 1431:79.79,48.06'}
G[278]={'FA 1429:79.46,68.79'}
G[279]={'FA 1453:56.19,64.61'}
G[288]={'FA 1431:18.30,56.58'}
G[289]={'FA 1431:28.03,31.50'}
G[294]={'FA 1429:84.59,69.37'}
G[295]={'FA 1429:43.77,65.81'}
G[297]={'FA 1453:29.63,61.89'}
G[302]={'FA 1431:81.88,59.15'}
G[311]={'FA 1431:7.78,34.08'}
G[313]={'FA 1429:65.27,69.86'}
G[332]={'FA 1453:75.79,59.86'}
G[341]={'FA 1433:32.16,48.64'}
G[342]={'FA 1433:21.86,46.33'}
G[343]={'FA 1433:22.68,43.85'}
G[344]={'FA 1433:29.99,44.44'}
G[346]={'FA 1433:26.49,43.95'}
G[349]={'FA 1433:28.35,12.66'}
G[352]={'FA 1453:66.28,62.13'}
G[375]={'FA 1429:49.81,39.50'}
G[379]={'FA 1433:26.79,44.35'}
G[381]={'FA 1433:27.72,47.36'}
G[382]={'FA 1433:33.39,49.08'}
G[391]={'1436:35.44,86.13 1436:31.98,82.12 1436:29.88,78.56 1436:28.74,72.32 1436:26.07,65.12'}
G[392]={'FA 1436:30.02,86.01'}
G[415]={'FA 1433:30.97,47.27'}
G[448]={'1429:25.15,93.75 1429:27.14,92.63 1429:25.63,90.16'}
G[456]={'1436:35.86,19.56 1436:38.95,14.55 1436:43.88,10.51 1436:47.69,10.73'}
G[458]={'1436:26.40,62.13 1436:27.08,56.22 1436:26.86,48.94 1436:27.78,39.50 1436:29.17,33.58 1436:31.54,27.41'}
G[459]={'FA 1429:49.87,42.65'}
G[460]={'FA 1426:28.65,66.14'}
G[464]={'FA 1433:17.37,69.55'}
G[466]={'FA 1453:63.99,75.34'}
G[467]={'FA 1436:55.68,47.51'}
G[469]={'FA 1434:38.04,3.01'}
G[474]={'1429:73.14,49.60 1429:74.40,53.80 1429:76.60,53.60 1429:76.60,49.80 1429:87.08,78.82 1429:50.60,82.80 1429:52.80,59.20 1429:29.80,61.00'}
G[478]={'1429:24.46,91.58 1429:27.26,90.14 1429:24.54,84.49 1429:26.91,83.04 1429:67.82,51.25 1429:66.77,43.62 1429:67.91,38.37 1429:71.41,37.45'}
G[482]={'FA 1453:60.02,64.38'}
G[491]={'FA 1436:56.99,47.17'}
G[513]={'1436:44.05,9.12 1436:40.79,12.25 1436:37.86,15.86 1436:35.71,19.62 1436:32.74,23.77 1436:30.07,31.41'}
G[514]={'FA 1429:41.71,65.55'}
G[515]={'1436:56.68,9.06 1436:52.21,9.12 1436:48.37,10.15 1436:45.04,8.64'}
G[517]={'1436:34.96,84.33 1436:29.28,75.99 1436:28.28,71.08 1436:26.32,60.67 1436:26.96,54.29'}
G[519]={'1436:53.96,11.70 1436:45.11,9.56 1436:37.68,16.29 1436:32.51,23.69 1436:27.53,40.11 1436:27.19,54.72 1436:28.92,73.93 1436:33.78,83.68'}
G[523]={'FA 1436:56.55,52.65'}
G[576]={'FA 1431:73.75,47.23'}
G[633]={'FA 1431:75.34,48.72'}
G[656]={'FA 1453:65.43,21.19'}
G[658]={'FA 1426:29.93,71.21'}
G[661]={'FA 1431:75.32,49.02'}
G[663]={'FA 1431:75.30,48.04'}
G[713]={'FA 1426:29.71,71.25'}
G[714]={'FA 1426:22.60,71.43'}
G[715]={'1434:35.70,10.80'}
G[733]={'FA 1434:38.02,3.33'}
G[738]={'FA 1434:37.98,3.42'}
G[739]={'FA 1434:37.83,3.56'}
G[773]={'1434:26.99,77.22'}
G[786]={'FA 1426:25.08,75.71'}
G[820]={'FA 1436:56.67,47.35'}
G[821]={'FA 1436:56.42,47.62'}
G[823]={'FA 1429:48.16,42.95'}
G[836]={'FA 1426:28.77,66.38'}
G[837]={'FA 1426:28.60,66.39'}
G[840]={'FA 1431:72.26,36.62'}
G[878]={'FA 1436:53.98,52.97'}
G[888]={'FA 1431:45.12,67.02'}
G[893]={'FA 1431:7.74,33.26'}
G[895]={'FA 1426:29.17,67.46'}
G[900]={'FA 1433:29.70,44.26'}
G[903]={'FA 1433:31.54,57.87'}
G[911]={'FA 1429:50.24,42.28'}
G[912]={'FA 1426:28.83,67.24'}
G[913]={'FA 1429:41.09,65.77'}
G[915]={'FA 1429:50.32,39.92'}
G[916]={'FA 1426:28.37,67.51'}
G[917]={'FA 1429:43.87,65.93'}
G[925]={'FA 1429:50.43,42.13'}
G[926]={'FA 1426:28.83,68.33'}
G[944]={'FA 1426:28.71,66.37'}
G[951]={'FA 1429:49.56,40.42'}
G[952]={'FA 1429:49.46,41.47'}
G[963]={'FA 1429:24.23,74.46'}
G[1070]={'FA 1433:30.74,60.00'}
G[1071]={'FA 1437:49.79,18.28'}
G[1073]={'FA 1437:50.09,18.23'}
G[1074]={'FA 1437:49.70,18.31'}
G[1075]={'FA 1437:49.86,18.28'}
G[1076]={'FA 1437:38.79,52.31'}
G[1077]={'FA 1437:38.79,52.31'}
G[1078]={'FA 1437:38.26,50.80'}
G[1089]={'FA 1432:22.07,73.12'}
G[1090]={'FA 1432:23.47,74.53'}
G[1091]={'FA 1432:23.53,76.40'}
G[1092]={'FA 1432:23.23,73.69'}
G[1093]={'FA 1432:45.95,13.67'}
G[1105]={'FA 1432:37.23,47.40'}
G[1139]={'FA 1432:34.65,43.17'}
G[1154]={'FA 1432:81.83,61.75'}
G[1156]={'FA 1432:81.83,64.16'}
G[1187]={'FA 1432:83.44,65.24'}
G[1212]={'FA 1453:39.44,27.95'}
G[1217]={'FA 1437:10.58,60.58'}
G[1229]={'FA 1426:47.35,52.59'}
G[1234]={'FA 1426:47.57,52.61'}
G[1239]={'FA 1437:10.88,59.67'}
G[1242]={'FA 1437:8.35,58.55'}
G[1243]={'FA 1426:40.70,65.08'}
G[1244]={'FA 1437:56.33,40.30'}
G[1252]={'FA 1426:46.71,53.85'}
G[1254]={'FA 1426:69.08,56.33'}
G[1265]={'FA 1426:63.08,49.85'}
G[1266]={'FA 1426:34.60,51.62'}
G[1267]={'FA 1426:46.82,52.39'}
G[1268]={'FA 1426:45.88,49.28'}
G[1269]={'FA 1426:45.87,49.33'}
G[1274]={'FA 1455:39.50,57.21'}
G[1284]={'FA 1453:39.60,27.55'}
G[1309]={'FA 1453:41.66,76.40'}
G[1323]={'FA 1453:74.30,47.24'}
G[1340]={'FA 1432:34.24,47.73'}
G[1342]={'FA 1432:25.44,10.39'}
G[1343]={'FA 1432:24.76,18.40'}
G[1344]={'FA 1432:65.93,65.61'}
G[1345]={'FA 1432:64.90,66.65'}
G[1356]={'FA 1455:74.64,11.76'}
G[1357]={'1436:35.86,19.56 1436:38.95,14.55 1436:43.88,10.51 1436:47.69,10.73'}
G[1373]={'FA 1426:47.63,52.65'}
G[1374]={'FA 1426:30.24,45.78'}
G[1375]={'FA 1426:30.19,45.59'}
G[1376]={'FA 1426:50.43,49.08'}
G[1377]={'FA 1426:49.62,48.61'}
G[1378]={'FA 1426:49.43,48.41'}
G[1379]={'FA 1432:52.22,69.30'}
G[1416]={'FA 1453:51.74,12.10'}
G[1427]={'FA 1453:55.11,56.21'}
G[1428]={'FA 1453:49.65,55.63'}
G[1429]={'FA 1453:42.53,76.21'}
G[1431]={'FA 1453:52.47,67.61'}
G[1432]={'FA 1453:56.99,63.52'}
G[1435]={'FA 1453:26.51,78.36'}
G[1439]={'FA 1453:75.14,31.46'}
G[1440]={'FA 1453:73.95,7.21'}
G[1444]={'FA 1453:45.78,38.63'}
G[1470]={'FA 1432:37.07,49.37'}
G[1518]={'FH 1420:59.45,52.39'}
G[1519]={'FH 1420:40.92,54.17'}
G[1568]={'FH 1420:30.22,71.65'}
G[1569]={'FH 1420:30.84,66.19'}
G[1572]={'FA 1432:33.92,50.95'}
G[1573]={'FA 1455:55.77,47.45'}
G[1646]={'FA 1453:49.18,30.27'}
G[1661]={'FH 1420:30.86,66.05'}
G[1681]={'FA 1432:37.22,46.89'}
G[1694]={'FA 1426:50.08,49.41'}
G[1872]={'FA 1426:46.04,51.71'}
G[1959]={'FA 1426:86.29,48.85'}
G[1960]={'FA 1426:83.89,39.19'}
G[1963]={'FA 1432:34.83,49.11'}
G[1965]={'FA 1426:33.47,71.86'}
G[1977]={'FA 1426:68.67,55.96'}
G[1992]={'FA 1438:57.73,45.05'}
G[2057]={'FA 1432:52.22,69.30'}
G[2077]={'FA 1438:59.92,42.48'}
G[2078]={'FA 1438:55.95,57.27'}
G[2079]={'FA 1438:58.69,44.27'}
G[2080]={'FA 1438:60.90,68.49'}
G[2081]={'FA 1438:56.01,59.47'}
G[2082]={'FA 1438:57.81,41.66'}
G[2083]={'FA 1438:56.08,57.72'}
G[2086]={'FA 1437:10.14,56.80'}
G[2092]={'FA 1455:72.37,93.89'}
G[2093]={'FA 1437:49.92,39.38'}
G[2094]={'FA 1437:8.49,55.71'}
G[2096]={'FA 1437:11.44,52.27'}
G[2097]={'FA 1437:10.82,55.80'}
G[2104]={'FA 1437:9.86,57.49'}
G[2107]={'FA 1438:66.26,58.52'}
G[2111]={'FA 1437:11.79,57.99'}
G[2150]={'FA 1438:60.49,56.17'}
G[2151]={'FA 1438:55.81,58.31'}
G[2207]={'1439:31.22,87.44'}
G[2228]={'FA 1424:51.41,58.55'}
G[2263]={'FA 1424:49.53,58.75'}
G[2276]={'FA 1424:48.17,59.25'}
G[2277]={'FA 1424:50.49,56.97'}
G[2285]={'FA 1453:74.20,30.04'}
G[2382]={'FA 1424:52.36,56.02'}
G[2430]={'FA 1424:51.80,58.72'}
G[2438]={'FA 1424:49.47,55.64'}
G[2439]={'FA 1453:72.74,16.12'}
G[2496]={'1434:27.20,76.93'}
G[2498]={'1434:27.11,77.27'}
G[2610]={'1417:32.20,81.48'}
G[2616]={'FA 1445:67.72,51.71'}
G[2695]={'FA 1455:63.77,67.83'}
G[2696]={'FA 1417:43.18,92.58'}
G[2700]={'FA 1417:45.91,47.54'}
G[2705]={'FA 1424:52.15,58.69'}
G[2711]={'FA 1424:50.28,58.99'}
G[2712]={'FA 1417:60.08,53.77'}
G[2713]={'FA 1417:60.20,53.92'}
G[2766]={'1417:31.81,82.63'}
G[2767]={'1417:32.70,81.47'}
G[2768]={'1417:33.81,80.61'}
G[2769]={'1417:33.95,80.75'}
G[2774]={'1417:33.83,80.54'}
G[2784]={'FA 1455:39.48,55.81'}
G[2785]={'1418:51.31,76.98'}
G[2786]={'FA 1455:50.42,6.25'}
G[2788]={'FA 1417:46.13,47.68'}
G[2789]={'FA 1417:46.59,47.07'}
G[2790]={'FA 1455:38.87,87.61'}
G[2817]={'1418:42.31,52.71'}
G[2911]={'FA 1437:10.76,60.40'}
G[2912]={'FA 1457:31.24,84.47'}
G[2913]={'FA 1439:37.44,41.84'}
G[2917]={'FA 1439:35.76,83.71'}
G[2930]={'FA 1439:37.70,43.38'}
G[2947]={'FH 1412:48.70,59.33'}
G[2948]={'FH 1412:48.53,60.38'}
G[2980]={'FH 1412:44.88,77.09'}
G[2981]={'FH 1412:44.18,76.05'}
G[2982]={'FH 1412:42.57,92.17'}
G[2984]={'FH 1412:32.72,36.09','In cave'}
G[2985]={'FH 1412:47.36,62.01'}
G[2987]={'FH 1456:37.65,59.70'}
G[2988]={'FH 1412:55.09,60.64'}
G[2991]={'FH 1412:50.03,81.15'}
G[2993]={'FH 1412:47.52,60.17'}
G[2994]={'FH 1412:61.45,21.02'}
G[3033]={'FH 1456:76.48,27.25'}
G[3052]={'FH 1412:46.76,60.23'}
G[3054]={'FH 1412:47.75,57.54'}
G[3055]={'FH 1412:46.99,57.07'}
G[3057]={'FH 1456:60.32,51.69'}
G[3060]={'FH 1412:45.08,75.94'}
G[3064]={'FH 1412:48.48,59.64'}
G[3085]={'FA 1433:26.62,46.56'}
G[3140]={'FH 1411:54.44,74.36'}
G[3142]={'FH 1411:52.20,43.20'}
G[3143]={'FH 1411:42.06,68.33'}
G[3145]={'FH 1411:42.85,69.14'}
G[3153]={'FH 1411:42.89,69.43'}
G[3154]={'FH 1411:42.84,69.33'}
G[3155]={'FH 1411:41.28,68.01'}
G[3156]={'FH 1411:40.65,68.52'}
G[3157]={'FH 1411:42.39,69.00'}
G[3188]={'FH 1411:55.95,74.72'}
G[3194]={'FH 1411:55.95,73.93'}
G[3209]={'FH 1412:44.41,76.32'}
G[3233]={'FH 1412:59.86,25.62'}
G[3287]={'FH 1411:40.60,62.59'}
G[3304]={'FH 1411:55.94,74.39'}
G[3391]={'1413:62.67,36.27'}
G[3442]={'1413:62.97,37.17'}
G[3446]={'1413:62.40,37.64'}
G[3453]={'1413:63.33,38.42'}
G[3514]={'FA 1438:59.07,39.44'}
G[3515]={'FA 1438:56.14,61.71'}
G[3516]={'FA 1457:34.82,8.70'}
G[3517]={'FA 1457:38.21,21.63'}
G[3519]={'FA 1438:38.29,34.44'}
G[3567]={'FA 1438:55.52,56.92'}
G[3568]={'FA 1438:31.52,31.52'}
G[3583]={'FA 1439:37.32,43.65'}
G[3584]={'FA 1439:38.62,87.39'}
G[3585]={'FA 1440:22.70,51.91'}
G[3593]={'FA 1438:59.63,38.45'}
G[3594]={'FA 1438:59.63,38.67'}
G[3595]={'FA 1438:59.18,40.45'}
G[3596]={'FA 1438:58.65,40.45'}
G[3597]={'FA 1438:58.62,40.28'}
G[3599]={'FA 1438:56.38,60.14'}
G[3601]={'FA 1438:56.65,59.38'}
G[3602]={'FA 1438:55.96,61.53'}
G[3616]={'FA 1439:43.57,76.36'}
G[3639]={'FA 1439:40.28,59.73'}
G[3644]={'FA 1439:35.74,43.70'}
G[3649]={'FA 1439:37.40,40.13'}
G[3650]={'FA 1439:44.22,36.32'}
G[3657]={'FA 1439:39.06,43.54'}
G[3661]={'FA 1439:54.97,24.89'}
G[3663]={'FA 1440:26.20,38.62'}
G[3665]={'1413:63.06,37.61'}
G[3666]={'FA 1439:36.97,44.13','Upstairs'}
G[3691]={'FA 1440:36.61,49.61'}
G[3692]={'FA 1439:45.03,85.37'}
G[3693]={'FA 1439:39.37,43.48'}
G[3694]={'FA 1439:39.30,43.47'}
G[3701]={'FA 1439:38.84,43.42'}
G[3702]={'FA 1439:37.67,40.74'}
G[3707]={'FH 1411:42.36,68.81'}
G[3838]={'FA 1438:58.36,93.99'}
G[3845]={'FA 1440:34.68,48.87'}
G[3846]={'FA 1440:14.82,31.26'}
G[3847]={'FA 1440:26.40,38.57'}
G[3848]={'FA 1440:85.30,44.71'}
G[3880]={'FA 1440:22.26,52.91'}
G[3885]={'FA 1440:49.84,67.18'}
G[3891]={'FA 1440:20.30,42.25'}
G[3894]={'FA 1440:37.34,51.80'}
G[3897]={'FA 1440:50.87,75.11'}
G[3901]={'FA 1440:21.75,53.26'}
G[3916]={'FA 1440:53.46,46.34'}
G[3920]={'FA 1440:78.30,44.89'}
G[3945]={'1434:27.31,74.08'}
G[3994]={'FA 1442:37.10,8.13'}
G[3996]={'FA 1440:35.79,49.10'}
G[4048]={'FA 1444:89.60,46.59'}
G[4077]={'FA 1442:59.56,67.08'}
G[4078]={'FA 1453:42.98,80.24'}
G[4079]={'FA 1440:34.92,49.81'}
G[4080]={'FA 1442:59.86,66.87'}
G[4081]={'FA 1455:71.75,51.34'}
G[4146]={'FA 1457:40.32,8.72'}
G[4163]={'FA 1457:36.99,21.92'}
G[4200]={'FA 1439:36.76,44.36'}
G[4201]={'1442:58.99,62.50'}
G[4214]={'FA 1457:34.54,25.92'}
G[4217]={'FA 1457:35.30,8.59'}
G[4241]={'FA 1457:70.66,44.86'}
G[4256]={'FA 1455:51.20,25.94'}
G[4452]={'1441:77.83,77.24'}
G[4453]={'1441:78.08,77.09'}
G[4454]={'1441:78.01,77.11'}
G[4455]={'FA 1437:9.96,57.95'}
G[4456]={'FA 1445:66.45,45.14'}
G[4618]={'1418:42.28,52.64'}
G[4630]={'1441:80.10,75.85'}
G[4706]={'1441:80.26,76.13'}
G[4708]={'1446:51.01,27.21'}
G[4709]={'1441:79.77,76.94'}
G[4921]={'FA 1445:66.15,46.08'}
G[4959]={'FA 1453:73.06,78.62'}
G[4960]={'FA 1453:78.23,25.06'}
G[4961]={'FA 1453:70.38,44.84'}
G[4962]={'FA 1437:10.55,60.26'}
G[4963]={'FA 1437:10.64,60.79'}
G[4982]={'FA 1453:39.44,27.95'}
G[5082]={'FA 1437:10.82,60.40'}
G[5083]={'FA 1445:67.90,48.20'}
G[5144]={'FA 1455:27.11,8.24'}
G[5165]={'FA 1455:51.93,14.85'}
G[5413]={'FA 1453:58.09,16.56'}
G[5480]={'FA 1453:78.49,45.72'}
G[5497]={'FA 1453:38.64,79.29'}
G[5594]={'1446:50.89,26.97'}
G[5637]={'FA 1455:69.96,20.61'}
G[5667]={'FH 1420:30.98,66.41'}
G[5688]={'FH 1420:61.71,52.05'}
G[5765]={'FH 1411:42.59,69.00'}
G[5769]={'FH 1456:78.60,28.56'}
G[5884]={'FH 1411:42.51,69.04'}
G[5901]={'1413:65.83,43.78'}
G[6031]={'FA 1455:48.84,42.51'}
G[6034]={'FA 1457:64.34,21.92'}
G[6089]={'FA 1453:74.28,37.27'}
G[6090]={'FA 1453:73.79,36.32'}
G[6114]={'FA 1455:70.73,90.63'}
G[6286]={'FA 1438:57.09,61.29'}
G[6301]={'FA 1439:38.11,41.17'}
G[6569]={'FA 1455:69.21,50.56'}
G[6577]={'FA 1432:63.56,47.92'}
G[6579]={'FA 1453:55.51,12.53'}
G[6667]={'FA 1439:56.67,13.51'}
G[6736]={'FA 1438:55.62,59.79'}
G[6746]={'FH 1456:45.81,64.67'}
G[6747]={'FH 1412:46.62,61.09'}
G[6774]={'FA 1429:45.57,47.75'}
G[6775]={'FH 1412:38.53,81.56'}
G[6780]={'FA 1438:61.16,47.64'}
G[6782]={'FA 1426:33.81,72.20'}
G[6784]={'FH 1420:38.25,56.76'}
G[6786]={'FH 1411:52.06,68.30'}
G[6806]={'FA 1426:47.26,52.21'}
G[6846]={'1429:48.20,87.60'}
G[6886]={'FA 1426:25.17,44.45'}
G[6927]={'1429:47.60,85.40'}
G[6946]={'FA 1453:75.78,60.36'}
G[6966]={'FA 1433:28.07,52.03'}
G[6986]={'FH 1454:59.48,36.60'}
G[7010]={'FH 1454:56.27,46.67'}
G[7312]={'FA 1455:27.09,8.43'}
G[7313]={'FA 1457:36.64,85.91','Upstairs'}
G[7316]={'FA 1457:28.94,45.78'}
G[7317]={'FA 1438:44.94,61.50'}
G[7724]={'1446:50.21,27.48'}
G[7801]={'1425:26.71,48.60'}
G[7944]={'FA 1455:69.57,50.47'}
G[7950]={'FA 1455:70.11,47.62'}
G[7999]={'FA 1457:39.19,81.32'}
G[8026]={'FA 1457:61.93,39.14'}
G[8125]={'1446:52.60,28.11'}
G[8416]={'FA 1426:28.48,67.67'}
G[8583]={'FA 1438:60.90,41.96'}
G[8584]={'FA 1438:54.59,32.99'}
G[8962]={'FA 1433:29.24,53.63'}
G[8965]={'FA 1433:29.32,53.61'}
G[8997]={'FA 1439:38.33,43.04'}
G[9296]={'FA 1429:50.69,39.35'}
G[9796]={'FH 1411:42.73,67.24'}
G[10118]={'FA 1438:56.26,92.33'}
G[10176]={'FH 1411:43.28,68.54'}
G[10216]={'FA 1439:36.10,44.93'}
G[10219]={'FA 1439:36.62,45.59'}
G[10616]={'FA 1429:81.40,66.09'}
G[11218]={'FA 1439:44.37,76.37'}
G[11219]={'FA 1440:27.24,35.66'}
G[11378]={'FH 1411:44.62,68.65'}
G[11711]={'FA 1439:45.95,90.32'}
G[11799]={'1450:36.60,40.20'}
G[11802]={'1450:56.21,30.64','Upstairs'}
G[11806]={'FA 1440:26.59,36.72'}
G[11833]={'FH 1456:70.53,31.80'}
G[12676]={'1440:72.21,70.60'}
G[12677]={'1440:72.21,70.60'}
G[12678]={'1440:42.60,68.60'}
G[12696]={'FH 1440:73.78,61.46'}
G[12737]={'FH 1440:73.66,60.00'}
G[12738]={'FA 1426:24.98,75.94'}
G[12997]={'FA 947:0.00,0.00 1455:76.19,51.00>947','Deeprun Tram Ironforge end'}
G[13018]={'FA 947:0.00,0.00 1453:51.77,12.08>947','Deeprun Tram Stormwind end'}
G[15383]={'FA 1455:63.53,68.59'} -- Sergeant Stonebrow
G[15431]={'FA 1455:65.38,65.70'} -- Corporal Carnes
G[15432]={'FA 1455:63.00,69.53'} -- Dame Twinbraid
G[15434]={'FA 1455:70.30,74.46'} -- Private Draxlegauge
G[15437]={'FA 1455:71.77,70.16'} -- Master Nightsong
G[15445]={'FA 1455:70.25,74.16'} -- Sergeant Major Germaine
G[15446]={'FA 1455:57.39,76.07'} -- Bonnie Stoneflayer
G[15448]={'FA 1455:58.63,75.60'} -- Private Porter
G[15450]={'FA 1455:59.22,75.43'} -- Marta Finespindle
G[15451]={'FA 1455:55.79,75.94'} -- Sentinel Silversky
G[15452]={'FA 1455:54.22,77.72'} -- Nurse Stonefield
G[15453]={'FA 1455:53.53,78.01'} -- Keeper Moonshade
G[15455]={'FA 1455:71.34,70.20'} -- Slicky Gastronome
G[15456]={'FA 1455:70.12,68.83'} -- Sarah Sadwhistle
G[15457]={'FA 1455:71.68,69.21'} -- Huntress Swiftriver
G[15459]={'FH 1454:30.25,65.18'} -- Miner Cromwell
G[15460]={'FH 1454:29.61,62.18'} -- Grunt Maug
G[15469]={'FH 1454:30.72,62.73'} -- Senior Sergeant T'kelah
G[15477]={'FH 1454:33.59,69.70'} -- Herbalist Proudfeather
G[15508]={'FH 1454:33.18,68.03'} -- Batrider Pele'keiki
G[15512]={'FH 1454:32.79,67.01'} -- Apothecary Jezel
G[15515]={'FH 1454:36.49,72.70'} -- Skinner Jamani
G[15522]={'FH 1454:35.49,72.69'} -- Sergeant Umala
G[15525]={'FH 1454:35.93,73.06'} -- Doctor Serratus
G[15528]={'FH 1454:31.00,72.78'} -- Healer Longrunner
G[15529]={'FH 1454:31.46,73.39'} -- Lady Callow
G[15532]={'FH 1454:32.28,73.72'} -- Stoneguard Clayhoof
G[15533]={'FH 1454:29.13,67.64'} -- Bloodguard Rawtar
G[15534]={'FH 1454:29.52,68.65'} -- Fisherman Lin'do
G[15535]={'FH 1454:29.37,67.74'} -- Chief Sharpclaw
G[15700]={'FH 1454:29.11,62.91','1454:37.02,74.23-1454:29.11,62.91-1454:31.17,71.68'} -- Warlord Gorchuk
G[15701]={'FA 1455:70.25,74.16'} -- Field Marshal Snowfall -- accurate mapping to follow
G[15702]={'FH 1456:42.36,56.62'} -- Senior Sergeant Taiga
G[15703]={'FH 1458:68.59,40.14'} -- Senior Sergeant Grimsford
G[15704]={'FH 1454:51.31,65.26'} -- Senior Sergeant Kai'jin
G[15707]={'FA 1455:27.50,73.32'} -- Master Sergeant Fizzlebolt
G[15708]={'FA 1453:54.12,57.62'} -- Master Sergeant Maclure
G[15709]={'FA 1457:41.13,39.58'} -- Master Sergeant Moonshadow
G[15731]={'FA 1455:61.42,70.35'} -- Darnassus Commendation Officer
G[15733]={'FA 1455:58.70,72.60'} -- Gnomeregan Commendation Officer
G[15734]={'FA 1455:60.94,77.83'} -- Ironforge Commendation Officer
G[15735]={'FA 1455:63.46,69.15'} -- Stormwind Commendation Officer
G[15736]={'FH 1454:32.99,74.62'} -- Orgrimmar Commendation Officer
G[15737]={'FH 1454:30.16,70.54'} -- Darkspear Commendation Officer
G[15738]={'FH 1454:30.26,65.10'} -- Undercity Commendation Officer
G[15739]={'FH 1454:33.20,72.12'} -- Thunder Bluff Commendation Officer
G[15761]={'FH 1454:46.31,35.12'}
G[15762]={'FA 1457:38.23,38.64'}
G[15763]={'FA 1455:69.74,46.03'}
G[15764]={'FA 1455:43.22,46.47'}
G[15765]={'FH 1454:42.50,38.70'}
G[15766]={'FA 1453:55.24,64.73'}
G[15767]={'FH 1456:42.38,56.97'}
G[15768]={'FH 1458:61.90,45.31'}
G[700000]={'1438:52.83,56.97 A:2151'}
G[700001]={'1432:35.62,46.69 A:1340'}
G[700002]={'1432:37.09,46.06 A:1340'}
G[700003]={'1433:17.38,69.59 A:464'}
G[700004]={'1432:33.15,49.33 A:1340'}
G[700005]={'1412:58.48,61.79 A:2988'}
G[1000031]={'1433:84.51,47.05'}
G[1000033]={'1436:25.97,16.91'}
G[1000034]={'1436:40.63,17.03'}
G[1000035]={'1436:25.91,47.76'}
G[1000036]={'1436:40.51,47.80'}
G[1000047]={'1433:26.75,46.47'}
G[1000055]={'1429:72.66,60.33'}
G[1000056]={'1429:79.80,55.50'}
G[1000059]={'1431:49.89,77.65'}
G[1000060]={'1433:29.62,46.18'}
G[1000061]={'1431:17.63,29.08'}
G[1000068]={'1429:24.46,74.73'}
G[1000076]={'1433:63.15,49.80'}
G[1000256]={'1432:37.22,46.47'}
G[1000257]={'1432:56.19,13.27'}
G[1000259]={'1437:13.90,34.91'}
G[1000261]={'1437:13.59,41.48'}
G[1000270]={'1426:47.67,52.66'}
G[1001561]={'1453:29.46,61.52'}
G[1001585]={'1432:50.57,14.39'}
G[1001609]={'1437:47.40,46.90'}
G[1001740]={'FA 1416:58.34,67.70'}
G[1002059]={'1426:79.68,36.17'}
G[1002652]={'1437:51.20,7.97'}
G[1002688]={'1417:36.05,57.92'}
G[1002701]={'1417:84.30,30.84'}
G[1002702]={'1417:36.37,57.29'}
G[1002734]={'1437:12.07,64.08'}
G[1002908]={'1412:53.73,48.17'}
G[1003643]={'1436:41.50,66.82'}
G[1004141]={'1413:52.43,11.64'}
G[1006751]={'1438:42.62,76.07'}
G[1006752]={'1438:34.70,28.69'}
G[1007510]={'1438:60.77,68.48'}
G[1010076]={'1439:39.56,86.23'}
G[1012666]={'1439:38.59,86.13'}
G[1017182]={'1439:36.61,46.32'}
G[1017183]={'1439:41.96,28.70'}
G[1017184]={'1439:51.25,24.59'}
G[1017185]={'1439:41.43,80.65'}
G[1019024]={'1440:56.43,49.27'}
G[1020805]={'1441:77.25,77.41'}
G[1051708]={'1431:28.86,30.80'}
G[1112948]={'1437:14.37,23.88'}
G[1113791]={'1421:38.45,44.92'}
G[1138492]={'1417:62.48,33.82'}
G[1142151]={'1437:13.61,38.14'}
G[1156561]={'1429:24.58,78.24'}
G[1175226]={'1439:35.99,70.97'}
G[1175227]={'1439:32.75,80.74'}
G[1175233]={'1439:41.86,31.57'}
G[1175524]={'1439:47.31,48.74'}
G[1176190]={'1439:37.14,62.11'}
G[1176191]={'1439:31.23,85.51'}
G[1176196]={'1439:53.07,18.15'}
G[1176197]={'1439:44.21,20.71'}
G[1176198]={'1439:31.74,83.67'}
G[100001307]={'D:100,478,97,448 Q:123'}
G[100001357]={'D:126,127,171,391,456,458,513,515,517,519,1357 Q:136'}
G[100001972]={'D:6846,6927,116,474 Q:184'}
G[100016303]={'D:12678 Q:184'}
G[100016304]={'D:12677 Q:24'}
G[100016305]={'D:12676 Q:2'}
end

local N = Grail.npc
for key, value in pairs(Grail.npcs) do
	if value[1] then
		N.locations[key] = {}
		local codeArray = { strsplit(" ", value[1]) }
		local controlCode
		for _, code in pairs(codeArray) do
			controlCode = strsub(code, 1, 1)
			if 'A' == controlCode then
				if 2 < strlen(code) and ':' == strsub(code, 2, 2) then
					local alias = tonumber(strsub(code, 3))
					if nil ~= alias then
						N.nameIndex[key] = alias
						N.aliases[alias] = N.aliases[alias] or {}
						tinsert(N.aliases[alias], key)
					else
						print("*** NPC processing of",key,"has improper alias")
					end
				end
			elseif 'C' == controlCode then
				tinsert(N.locations[key], { created = true })
			elseif 'D' == controlCode then
				if 2 < strlen(code) and ':' == strsub(code, 2, 2) then
					N.droppedBy[key] = N.droppedBy[key] or {}
					local npcIds = { strsplit(',', strsub(code, 3)) }
					for _, anNPCId in pairs(npcIds) do
						local npcNumber = tonumber(anNPCId)
						if nil ~= npcNumber then
							tinsert(N.droppedBy[key], npcNumber)
							N.has[npcNumber] = N.has[npcNumber] or {}
							tinsert(N.has[npcNumber], key)
						end
					end
				end
			elseif 'F' == controlCode then
				if 1 < strlen(code) then
					N.faction[key] = strsub(code, 2, 2)
				end
			elseif 'H' == controlCode then
				-- the "has" codes are deprecated as we will populate the data based on "drop" codes instead
				if 2 < strlen(code) then
					local subcode = strsub(code, 2, 2)
					if ':' ~= subcode then
						local holidays = N.holiday[key]
						if nil == holidays then
							holidays = ''
						end
						N.holiday[key] = holidays .. subcode
					end
				end
			elseif 'K' == controlCode then
				if 2 < strlen(code) and ':' == strsub(code, 2, 2) then
					N.kill[key] = N.kill[key] or {}
					local questList = { strsplit(',', strsub(code, 3)) }
					for _, questId in pairs(questList) do
						tinsert(N.kill[key], tonumber(questId))
					end
				end
			elseif 'M' == controlCode then
				local t1 = { mailbox = true }
				if 7 < strlen(code) then
					t1.mapArea = tonumber(strsub(code, 8))
				end
				tinsert(N.locations[key], t1)
			elseif 'N' == controlCode then
				if 2 < strlen(code) and ':' == strsub(code, 2, 2) then
					local nameIndexToUse = tonumber(strsub(code, 3))
					N.nameIndex[key] = nameIndexToUse
				else
					local t1 = { near = true }
					if 4 < strlen(code) then
						t1.mapArea = tonumber(strsub(code, 5))
					end
					tinsert(N.locations[key], t1)
				end
			elseif 'P' == controlCode then
				-- we do nothing special for "Preowned" at the moment
			elseif 'Q' == controlCode then
				if 2 < strlen(code) and ':' == strsub(code, 2, 2) then
					N.questAssociations[key] = N.questAssociations[key] or {}
					local questList = { strsplit(',', strsub(code, 3)) }
					for _, questId in pairs(questList) do
						tinsert(N.questAssociations[key], tonumber(questId))
					end
				end
			elseif 'S' == controlCode then
				-- we do nothing special for "Self" at the moment
			elseif 'X' == controlCode then
				N.heroic[key] = true
			elseif 'Z' == controlCode then
				tinsert(N.locations[key], { ["mapArea"]=tonumber(strsub(code, 2)) })
			else	-- a real coordinate
				tinsert(N.locations[key], Grail:_LocationStructure(code))
			end
		end
	end
	if value[2] then N.comment[key] = value[2] end
	if value[3] then N.faction[key] = value[3] end

end
-- TODO: Go through all the Grail.npc.droppedBy values and make sure the locations for the NPCs are added to those keys

Grail.npcs = nil
--	18.84/19.29 idle after a couple minutes at startup without these changes.
--	18.25/18.69	idle after a couple minutes at startup WITH these changes.

Grail.memoryUsage.NPCs = gcinfo() - originalMem

-- 81152 garrison level 1: 582:46.56,54.33 539:30.46,18.28

