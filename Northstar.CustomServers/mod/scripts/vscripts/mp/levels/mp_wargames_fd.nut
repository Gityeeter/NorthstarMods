global function initFrontierDefenseData
void function initFrontierDefenseData()
{
	AddCallback_RegisterCustomFDContent( RegisterCustomFDContentOGSetup )
    PlaceFDShop( < -1280, 2237, -191 >, < 0, 90, 0 > )
	SetFDDropshipSpawn( < -2033, 2288, 0 > )
	SetFDGroundSpawn( < -960, 1604, -127 >, < 0, 90, 0 > )
	
	AddFDDropPodSpawn( < -200, 2685, 256 > )
	AddFDDropPodSpawn( < -1281, 2856, 48 > )
	AddFDDropPodSpawn( < -1475, 1522, 112 > )
	
	AddWaveAnnouncement( "fd_introEasy" )
	AddWaveAnnouncement( "fd_waveTypeMortarSpectre" )
	AddWaveAnnouncement( "fd_soonArcTitans" )
	AddWaveAnnouncement( "fd_waveTypeTicks" )
	AddWaveAnnouncement( "fd_introMedium" )
	
	AddFDCustomTitanStart( < -1601, 3696, -255 >, < 0, -135, 0 > )
	AddFDCustomTitanStart( < -947, 3696, -255 >, < 0, -45, 0 > )
	
	AI_CreateDangerousArea_Static( svGlobal.worldspawn, null, 160, TEAM_INVALID, true, true, < 2259, 2363, -127 > )

	/*
	 __      __                 _ 
	 \ \    / /__ _ __ __ ___  / |
	  \ \/\/ // _` |\ V // -_) | |
	   \_/\_/ \__,_| \_/ \___| |_|
	
	*/
    array<WaveSpawnEvent> wave1
	WaveSpawn_InfantrySpawn( wave1, "DropshipGrunt", < 1174, 2263, -256 >, 250, "", 1.5, "fd_waveTypeInfantry", 0.0, eFDSD.ALL, 6 )
	WaveSpawn_InfantrySpawn( wave1, "PodGrunt", < -699, 815, -127 >, 0.0, "", 1.0 )
	WaveSpawn_InfantrySpawn( wave1, "PodGrunt", < -507, 970, -127 >, 0.0, "", 0.5 )
	WaveSpawn_InfantrySpawn( wave1, "PodGrunt", < -196, -588, -127 >, 0.0, "", 0.5 )
	WaveSpawn_WaitEnemyAliveAmount( wave1, 4 )
	
	WaveSpawn_InfantrySpawn( wave1, "PodGrunt", < -460, -737, -127 >, 0.0, "", 0.2 )
	WaveSpawn_InfantrySpawn( wave1, "PodGrunt", < -2353, -608, -128 >, 0.0, "", 0.4 )
	WaveSpawn_InfantrySpawn( wave1, "PodGrunt", < -2087, 169, -127 >, 0.0, "", 0.6 )
	WaveSpawn_InfantrySpawn( wave1, "PodGrunt", < -4586, 1052, -127 >, 0.0, "", 0.8 )
	WaveSpawn_InfantrySpawn( wave1, "PodGrunt", < -4292, 1510, -127 >, 0.0, "", 1.0 )
	WaveSpawn_InfantrySpawn( wave1, "PodGrunt", < -2218, -1428, -127 >, 0.0, "", 1.0 )
	WaveSpawn_InfantrySpawn( wave1, "CloakDrone", < -2948, -1334, 2560 >, 0.0, "", 0.5, "fd_waveTypeCloakDrone" )
	WaveSpawn_WaitEnemyAliveAmount( wave1, 4 )
	
	WaveSpawn_InfantrySpawn( wave1, "PodGrunt", < 2532, 0, -228 >, 0.0, "", 1.0 )
	WaveSpawn_InfantrySpawn( wave1, "PodGrunt", < 2804, 488, -129 >, 0.0, "", 0.8 )
	WaveSpawn_InfantrySpawn( wave1, "PodGrunt", < -699, 815, -127 >, 0.0, "", 0.6 )
	WaveSpawn_InfantrySpawn( wave1, "PodGrunt", < -507, 970, -127 >, 0.0, "", 0.4 )
	WaveSpawn_InfantrySpawn( wave1, "PodGrunt", < -196, -588, -127 >, 0.0, "", 0.2 )
	WaveSpawn_InfantrySpawn( wave1, "MortarSpectre", < 760, -2046, -127 >, 0.0, "", 1.5 )
	WaveSpawn_InfantrySpawn( wave1, "CloakDrone", < 2365, 944, 2560 >, 0.0, "", 0.5 )
	WaveSpawn_WaitEnemyAliveAmount( wave1, 4 )
	
	WaveSpawn_InfantrySpawn( wave1, "PodGrunt", < -460, -737, -127 >, 0.0, "", 0.2 )
	WaveSpawn_InfantrySpawn( wave1, "PodGrunt", < 2532, 0, -228 >, 0.0, "", 0.3 )
	WaveSpawn_InfantrySpawn( wave1, "PodGrunt", < 2804, 488, -129 >, 0.0, "", 1.5 )
	WaveSpawn_InfantrySpawn( wave1, "DropshipGrunt", < -3626, -711, -128 >, 190, "", 1.0, "", 0.0, eFDSD.ALL, 6 )
	WaveSpawn_InfantrySpawn( wave1, "CloakDrone", < 361, -2774, 2560 >, 0.0, "", 0.5 )
	WaveSpawn_ReaperSpawn( wave1, "TickReaper", < 2050, 1107, -132 >, 90, "", 0.5 )
	
    WaveSpawnEvents.append( wave1 )
	
	/*
	 __      __                 ___ 
	 \ \    / /__ _ __ __ ___  |_  )
	  \ \/\/ // _` |\ V // -_)  / / 
	   \_/\_/ \__,_| \_/ \___| /___|
	
	*/
	array<WaveSpawnEvent> wave2
	WaveSpawn_TitanSpawn( wave2, "Ion", < -3443, -1215, -128 >, 90, "", 1.5, "fd_waveTypeTitanReg" )
	WaveSpawn_ReaperSpawn( wave2, "Reaper", < -3160, -2090, -127 >, 90, "", 2.5 )
	WaveSpawn_InfantrySpawn( wave2, "PodGrunt", < -681, 834, -127 >, 0.0, "", 1.5 )
	WaveSpawn_ReaperSpawn( wave2, "TickReaper", < 744, -2090, -127 >, 90, "", 2.5 )
	WaveSpawn_TitanSpawn( wave2, "Ion", < -280, -3195, -127 >, 90, "", 1.5 )
	WaveSpawn_InfantrySpawn( wave2, "PodGrunt", < -570, 732, -127 >, 0.0, "", 2.5 )
	WaveSpawn_ReaperSpawn( wave2, "Reaper", < -4566, -833, -127 >, 90, "", 2.5 )
	WaveSpawn_InfantrySpawn( wave2, "PodGrunt", < -2347, 144, -127 >, 0.0, "", 1.5 )
	WaveSpawn_TitanSpawn( wave2, "Legion", < 3184, 1456, -128 >, 90, "", 5.0 )
	WaveSpawn_InfantrySpawn( wave2, "MortarSpectre", < 1385, 863, -127 >, 0.0, "", 0.5 )
	WaveSpawn_InfantrySpawn( wave2, "MortarSpectre", < -1902, 290, -127 >, 0.0, "", 1.5 )
	WaveSpawn_Announce( wave2, "PreMortarTitan", 0.2 )
	WaveSpawn_WaitEnemyAliveAmount( wave2, 0 )
	
	WaveSpawn_InfantrySpawn( wave2, "PodGrunt", < -4580, 265, -143 >, 0.0, "", 1.0 )
	WaveSpawn_ReaperSpawn( wave2, "Reaper", < -2005, -938, -127 >, 90, "", 1.0 )
	WaveSpawn_InfantrySpawn( wave2, "PodGrunt", < 2680, 610, -127 >, 0.0, "", 1.0 )
	WaveSpawn_ReaperSpawn( wave2, "Reaper", < 233, -3247, -128 >, 90, "", 1.0 )
	WaveSpawn_InfantrySpawn( wave2, "PodGrunt", < 2950, -122, -127 >, 0.0, "", 1.0 )
	WaveSpawn_ReaperSpawn( wave2, "Reaper", < -716, -1114, -127 >, 90, "", 2.5 )
	WaveSpawn_TitanSpawn( wave2, "Ronin", < -5044, -453, -127 >, 90, "", 1.0 )
	WaveSpawn_InfantrySpawn( wave2, "MortarSpectre", < -602, 775, -127 >, 0.0, "", 0.5 )
	WaveSpawn_InfantrySpawn( wave2, "MortarSpectre", < -4530, 1014, -128 >, 0.0, "", 3.0 )
	WaveSpawn_InfantrySpawn( wave2, "CloakDrone", < -2948, -1334, 2560 >, 0.0, "" )
	WaveSpawn_WaitEnemyAliveAmount( wave2, 2 )
	
	WaveSpawn_TitanSpawn( wave2, "Sniper", < -594, -1096, -127 >, 90, "", 1.5 )
	WaveSpawn_InfantrySpawn( wave2, "Ticks", < -4593, 1921, -112 >, 0.0, "", 1.5 )
	WaveSpawn_ReaperSpawn( wave2, "TickReaper", < -664, -2363, -254 >, 90, "", 1.0 )
	WaveSpawn_InfantrySpawn( wave2, "Ticks", < -4235, 1615, -128 >, 0.0, "", 1.5 )
	WaveSpawn_ReaperSpawn( wave2, "TickReaper", < -2390, -3278, -127 >, 90, "", 1.5 )
	WaveSpawn_InfantrySpawn( wave2, "MortarSpectre", < 2056, 1105, -131 >, 0.0, "", 2.5 )
	WaveSpawn_TitanSpawn( wave2, "Mortar", < 3259, 507, -127 >, 90, "", 0.5, "fd_waveTypeTitanMortar" )
	WaveSpawn_InfantrySpawn( wave2, "CloakDrone", < 361, -2774, 2560 >, 0.0, "", 1.0 )
	WaveSpawn_ReaperSpawn( wave2, "Reaper", < 3149, -149, -126 >, 90, "", 1.0 )
	WaveSpawn_ReaperSpawn( wave2, "Reaper", < 2536, 605, -125 >, 90, "", 2.5 )
	WaveSpawn_InfantrySpawn( wave2, "PodGrunt", < 1179, 2633, -126 >, 0.0, "", 0.5 )
	WaveSpawn_InfantrySpawn( wave2, "PodGrunt", < 857, -2375, -127 >, 0.0, "", 0.5 )
	WaveSpawn_InfantrySpawn( wave2, "PodGrunt", < 962, -1182, 39 >, 0.0, "" )
	WaveSpawn_WaitEnemyAliveAmount( wave2, 4 )
	
	WaveSpawn_TitanSpawn( wave2, "Monarch", < -898, -2900, -254 >, 90, "airbase_farRoute", 0.5 )
	WaveSpawn_TitanSpawn( wave2, "Monarch", < -1698, -2900, -254 >, 90, "ac_farRouteAlt1", 1.5 )
	WaveSpawn_InfantrySpawn( wave2, "PodGrunt", < 43, -456, -132 >, 0.0, "", 0.5 )
	WaveSpawn_InfantrySpawn( wave2, "PodGrunt", < -1951, -1610, -127 >, 0.0, "", 1.5 )
	WaveSpawn_ReaperSpawn( wave2, "TickReaper", < -1389, -1083, -127 >, 90, "", 0.5 )
	WaveSpawn_InfantrySpawn( wave2, "PodGrunt", < -3664, -1638, -127 >, 0.0, "", 1.5 )
	WaveSpawn_ReaperSpawn( wave2, "TickReaper", < 2284, 1130, -131 >, 90, "", 0.5 )
	WaveSpawn_ReaperSpawn( wave2, "Reaper", < -4121, -1045, -127 >, 90, "", 1.0 )
	WaveSpawn_ReaperSpawn( wave2, "Reaper", < 654, -2589, -127 >, 90, "", 1.0 )
	WaveSpawn_ReaperSpawn( wave2, "Reaper", < 28, -1077, -127 >, 90, "", 2.5 )
	WaveSpawn_InfantrySpawn( wave2, "CloakDrone", < 2365, 944, 2560 >, 0.0, "", 2.0 )
	WaveSpawn_InfantrySpawn( wave2, "Drones", < -4571, 595, 2560 >, 90, "ac_dronePatrol", 1.5, "fd_waveTypeFlyers" )
	WaveSpawn_InfantrySpawn( wave2, "Drones", < -4571, 595, 2560 >, 90, "ac_dronePatrol", 3.0 )
	WaveSpawn_InfantrySpawn( wave2, "MortarSpectre", < -1902, 290, -127 >, 0.0, "", 1.0 )
	WaveSpawn_InfantrySpawn( wave2, "MortarSpectre", < -602, 775, -127 >, 0.0, "" )
	
    WaveSpawnEvents.append( wave2 )
	
	/*
	 __      __                 ____
	 \ \    / /__ _ __ __ ___  |__ /
	  \ \/\/ // _` |\ V // -_)  |_ \
	   \_/\_/ \__,_| \_/ \___| |___/
	
	*/
	array<WaveSpawnEvent> wave3
	WaveSpawn_TitanSpawn( wave3, "Ronin", < -2061, -865, -127 >, 90, "", 0.5 )
	WaveSpawn_TitanSpawn( wave3, "Ronin", < 2865, 1023, -126 >, 90, "", 1.5 )
	WaveSpawn_TitanSpawn( wave3, "Monarch", < -2384, -3143, -127 >, 90, "", 2.5 )
	WaveSpawn_ReaperSpawn( wave3, "Reaper", < -3160, -2090, -127 >, 90, "", 0.6, "fd_incReaperClump" )
	WaveSpawn_InfantrySpawn( wave3, "PodGrunt", < -4580, 265, -143 >, 0.0, "", 0.6 )
	WaveSpawn_ReaperSpawn( wave3, "Reaper", < 233, -3247, -128 >, 90, "", 0.6 )
	WaveSpawn_InfantrySpawn( wave3, "PodGrunt", < -681, 834, -127 >, 0.0, "", 0.6 )
	WaveSpawn_ReaperSpawn( wave3, "Reaper", < -716, -1114, -127 >, 90, "", 0.6 )
	WaveSpawn_ReaperSpawn( wave3, "TickReaper", < -1389, -1083, -127 >, 90, "", 0.6 )
	WaveSpawn_InfantrySpawn( wave3, "Ticks", < -1194, -862, -127 >, 0.0, "", 0.5 )
	WaveSpawn_WaitEnemyAliveAmount( wave3, 4 )
	
	WaveSpawn_TitanSpawn( wave3, "Monarch", < -2881, -2775, -127 >, 90, "", 1.0 )
	WaveSpawn_TitanSpawn( wave3, "Sniper", < -594, -1096, -127 >, 90, "", 1.0 )
	WaveSpawn_TitanSpawn( wave3, "Northstar", < 3377, -105, -127 >, 90, "", 1.5 )
	WaveSpawn_ReaperSpawn( wave3, "TickReaper", < 2284, 1130, -131 >, 90, "", 0.2 )
	WaveSpawn_InfantrySpawn( wave3, "Ticks", < -4511, 1598, -118 >, 0.0, "", 0.4 )
	WaveSpawn_InfantrySpawn( wave3, "Ticks", < -4593, 1921, -112 >, 0.0, "", 1.5 )
	WaveSpawn_InfantrySpawn( wave3, "CloakDrone", < 361, -2774, 2560 >, 0.0, "", 0.5 )
	WaveSpawn_InfantrySpawn( wave3, "PodGrunt", < -3664, -1638, -127 >, 0.0, "", 1.0 )
	WaveSpawn_ReaperSpawn( wave3, "Reaper", < -2005, -938, -127 >, 90, "", 0.5 )
	WaveSpawn_InfantrySpawn( wave3, "PodGrunt", < 43, -456, -132 >, 0.0, "", 1.0 )
	WaveSpawn_ReaperSpawn( wave3, "Reaper", < -4121, -1045, -127 >, 90, "" )
	WaveSpawn_WaitEnemyAliveAmount( wave3, 4 )
	
	WaveSpawn_TitanSpawn( wave3, "Ion", < -1102, -3441, -191 >, 90, "airbase_farRouteAlt", 0.5 )
	WaveSpawn_TitanSpawn( wave3, "Ion", < -1600, -3441, -191 >, 90, "ac_farRoute", 1.5 )
	WaveSpawn_TitanSpawn( wave3, "Scorch", < -3443, -1215, -128 >, 90, "", 0.5 )
	WaveSpawn_InfantrySpawn( wave3, "Ticks", < -2531, -1233, -127 >, 0.0, "", 0.5 )
	WaveSpawn_InfantrySpawn( wave3, "PodGrunt", < 2680, 610, -127 >, 0.0, "", 0.5 )
	WaveSpawn_InfantrySpawn( wave3, "Ticks", < -2865, -925, -127 >, 0.0, "", 0.5 )
	WaveSpawn_InfantrySpawn( wave3, "PodGrunt", < -570, 732, -127 >, 0.0, "", 0.5 )
	WaveSpawn_InfantrySpawn( wave3, "Ticks", < -951, -2354, -255 >, 0.0, "", 0.5 )
	WaveSpawn_InfantrySpawn( wave3, "PodGrunt", < 857, -2375, -127 >, 0.0, "", 0.5 )
	WaveSpawn_ReaperSpawn( wave3, "TickReaper", < -2390, -3278, -127 >, 90, "", 0.5 )
	WaveSpawn_ReaperSpawn( wave3, "Reaper", < 654, -2589, -127 >, 90, "" )
	WaveSpawn_WaitEnemyAliveAmount( wave3, 4 )
	
	WaveSpawn_TitanSpawn( wave3, "Tone", < -5044, -453, -127 >, 90, "", 1.0 )
	WaveSpawn_TitanSpawn( wave3, "Tone", < 749, -3153, -126 >, 90, "", 2.5 )
	WaveSpawn_TitanSpawn( wave3, "ArcTitan", < -898, -2900, -254 >, 90, "airbase_farRoute", 0.5, "fd_waveTypeTitanArc" )
	WaveSpawn_TitanSpawn( wave3, "ArcTitan", < -1698, -2900, -254 >, 90, "ac_farRouteAlt1", 0.5 )
	WaveSpawn_TitanSpawn( wave3, "ArcTitan", < -4326, -531, -127 >, 90, "", 2.5 )
	WaveSpawn_InfantrySpawn( wave3, "Ticks", < 69, -754, -126 >, 0.0, "", 0.2 )
	WaveSpawn_InfantrySpawn( wave3, "Ticks", < -2084, 165, -127 >, 0.0, "", 0.4 )
	WaveSpawn_InfantrySpawn( wave3, "Ticks", < -2196, -619, -127 >, 0.0, "", 1.5 )
	WaveSpawn_ReaperSpawn( wave3, "TickReaper", < -664, -2363, -254 >, 90, "", 10.0 )
	WaveSpawn_TitanSpawn( wave3, "Scorch", < -280, -3195, -127 >, 90, "", 2.5 )
	WaveSpawn_TitanSpawn( wave3, "Legion", < 3184, 1456, -128 >, 90, "", 1.5 )
	WaveSpawn_InfantrySpawn( wave3, "Drones", < -4571, 595, 2560 >, 90,"ac_dronePatrol", 1.0 )
	WaveSpawn_InfantrySpawn( wave3, "Drones", < -4571, 595, 2560 >, 90,"ac_dronePatrol", 0.5 )
	WaveSpawn_InfantrySpawn( wave3, "PodGrunt", < -2347, 144, -127 >, 0.0, "", 0.5 )
	WaveSpawn_InfantrySpawn( wave3, "PodGrunt", < 1179, 2633, -126 >, 0.0, "", 0.5 )
	WaveSpawn_InfantrySpawn( wave3, "Ticks", < 2513, 1106, -127 >, 0.0, "", 0.5 )
	WaveSpawn_InfantrySpawn( wave3, "Ticks", < -4235, 1615, -128 >, 0.0, "", 0.5 )
	WaveSpawn_ReaperSpawn( wave3, "TickReaper", < 744, -2090, -127 >, 90, "", 0.5 )
	WaveSpawn_ReaperSpawn( wave3, "Reaper", < 2536, 605, -125 >, 90, "" )
	
    WaveSpawnEvents.append( wave3 )
	
	/*
	 __      __                 _ _  
	 \ \    / /__ _ __ __ ___  | | | 
	  \ \/\/ // _` |\ V // -_) |_  _|
	   \_/\_/ \__,_| \_/ \___|   |_| 
	
	*/
	array<WaveSpawnEvent> wave4
	WaveSpawn_ReaperSpawn( wave4, "Reaper", < 744, -2090, -127 >, 90, "", 1.0, "fd_waveTypeReaperTicks" )
	WaveSpawn_ReaperSpawn( wave4, "Reaper", < -664, -2363, -254 >, 90, "", 1.0 )
	WaveSpawn_ReaperSpawn( wave4, "Reaper", < -2390, -3278, -127 >, 90, "", 1.0 )
	WaveSpawn_ReaperSpawn( wave4, "Reaper", < -1389, -1083, -127 >, 90, "", 1.0 )
	WaveSpawn_ReaperSpawn( wave4, "Reaper", < 2284, 1130, -131 >, 90, "", 2.5 )
	WaveSpawn_ReaperSpawn( wave4, "TickReaper", < 654, -2589, -127 >, 90, "", 1.0 )
	WaveSpawn_ReaperSpawn( wave4, "TickReaper", < 28, -1077, -127 >, 90, "", 2.5 )
	WaveSpawn_TitanSpawn( wave4, "Scorch", < -898, -2900, -254 >, 90, "airbase_farRoute", 0.5 )
	WaveSpawn_TitanSpawn( wave4, "Scorch", < -1698, -2900, -254 >, 90, "ac_farRouteAlt1", 2.0 )
	WaveSpawn_TitanSpawn( wave4, "Monarch", < -1102, -3441, -191 >, 90, "airbase_farRouteAlt", 1.0 )
	WaveSpawn_TitanSpawn( wave4, "Monarch", < -1600, -3441, -191 >, 90, "ac_farRoute", 2.5 )
	WaveSpawn_InfantrySpawn( wave4, "DropshipGrunt", < -3626, -711, -128 >, 190, "", 1.5 )
	WaveSpawn_InfantrySpawn( wave4, "Ticks", < -4593, 1921, -112 >, 0.0, "", 0.5 )
	WaveSpawn_InfantrySpawn( wave4, "Ticks", < -4235, 1615, -128 >, 0.0, "", 2.5 )
	WaveSpawn_ReaperSpawn( wave4, "Reaper", < -716, -1114, -127 >, 90, "", 1.0 )
	WaveSpawn_ReaperSpawn( wave4, "Reaper", < 3149, -149, -126 >, 90, "" )
	WaveSpawn_WaitEnemyAliveAmount( wave4, 6 )
	
	WaveSpawn_ReaperSpawn( wave4, "Reaper", < -3160, -2090, -127 >, 90, "", 0.8 )
	WaveSpawn_ReaperSpawn( wave4, "Reaper", < -4566, -833, -127 >, 90, "", 0.8 )
	WaveSpawn_ReaperSpawn( wave4, "Reaper", < -2005, -938, -127 >, 90, "", 0.8 )
	WaveSpawn_ReaperSpawn( wave4, "Reaper", < 233, -3247, -128 >, 90, "", 0.8 )
	WaveSpawn_ReaperSpawn( wave4, "Reaper", < -716, -1114, -127 >, 90, "", 0.8 )
	WaveSpawn_ReaperSpawn( wave4, "Reaper", < 3149, -149, -126 >, 90, "", 2.5 )
	WaveSpawn_TitanSpawn( wave4, "Sniper", < -594, -1096, -127 >, 90, "", 2.5 )
	WaveSpawn_InfantrySpawn( wave4, "Ticks", < 69, -754, -126 >, 0.0, "", 0.5 )
	WaveSpawn_InfantrySpawn( wave4, "Ticks", < -2531, -1233, -127 >, 0.0, "", 0.5 )
	WaveSpawn_InfantrySpawn( wave4, "Ticks", < -2865, -925, -127 >, 0.0, "", 1.5 )
	WaveSpawn_InfantrySpawn( wave4, "PodGrunt", < -1951, -1610, -127 >, 0.0, "", 1.0 )
	WaveSpawn_InfantrySpawn( wave4, "PodGrunt", < 2680, 610, -127 >, 0.0, "", 2.5 )
	WaveSpawn_TitanSpawn( wave4, "Ion", < -2061, -865, -127 >, 90, "", 1.0 )
	WaveSpawn_TitanSpawn( wave4, "Ion", < 2865, 1023, -126 >, 90, "", 2.5 )
	WaveSpawn_ReaperSpawn( wave4, "TickReaper", < -664, -2363, -254 >, 90, "", 1.5 )
	WaveSpawn_TitanSpawn( wave4, "Tone", < -2384, -3143, -127 >, 90, "" )
	WaveSpawn_WaitEnemyAliveAmount( wave4, 6 )
	
	WaveSpawn_ReaperSpawn( wave4, "Reaper", < -4566, -833, -127 >, 90, "", 0.5 )
	WaveSpawn_InfantrySpawn( wave4, "Ticks", < -4511, 1598, -118 >, 0.0, "", 1.0 )
	WaveSpawn_ReaperSpawn( wave4, "Reaper", < -2005, -938, -127 >, 90, "", 0.5 )
	WaveSpawn_InfantrySpawn( wave4, "Ticks", < -951, -2354, -255 >, 0.0, "", 1.0 )
	WaveSpawn_ReaperSpawn( wave4, "Reaper", < 233, -3247, -128 >, 90, "", 0.5 )
	WaveSpawn_InfantrySpawn( wave4, "Ticks", < 2513, 1106, -127 >, 0.0, "", 2.0 )
	WaveSpawn_InfantrySpawn( wave4, "Drones", < -4571, 595, 2560 >, 90, "ac_dronePatrol", 1.0 )
	WaveSpawn_InfantrySpawn( wave4, "Drones", < -4571, 595, 2560 >, 90, "ac_dronePatrol", 2.5 )
	WaveSpawn_TitanSpawn( wave4, "ArcTitan", < -898, -2900, -254 >, 90, "airbase_farRoute", 0.5 )
	WaveSpawn_TitanSpawn( wave4, "ArcTitan", < -1698, -2900, -254 >, 90, "ac_farRouteAlt1", 2.5 )
	WaveSpawn_TitanSpawn( wave4, "Legion", < 787, -2517, -128 >, 90, "", 1.0 )
	WaveSpawn_TitanSpawn( wave4, "Mortar", < 3259, 507, -127 >, 90, "", 2.5, "fd_waveTypeTitanMortar" )
	WaveSpawn_InfantrySpawn( wave4, "DropshipGrunt", < 1174, 2263, -256 >, 250, "", 0.5 )
	WaveSpawn_ReaperSpawn( wave4, "Reaper", < 2536, 605, -125 >, 90, "", 1.0 )
	WaveSpawn_ReaperSpawn( wave4, "Reaper", < -4121, -1045, -127 >, 90, "", 1.5 )
	WaveSpawn_ReaperSpawn( wave4, "TickReaper", < 744, -2090, -127 >, 90, "" )
	WaveSpawn_WaitEnemyAliveAmount( wave4, 6 )
	
	WaveSpawn_InfantrySpawn( wave4, "Ticks", < -2084, 165, -127 >, 0.0, "", 0.5 )
	WaveSpawn_InfantrySpawn( wave4, "Ticks", < -1194, -862, -127 >, 0.0, "", 1.0 )
	WaveSpawn_ReaperSpawn( wave4, "TickReaper", < -2390, -3278, -127 >, 90, "", 1.5 )
	WaveSpawn_TitanSpawn( wave4, "Tone", < -2881, -2775, -127 >, 90, "", 1.5 )
	WaveSpawn_ReaperSpawn( wave4, "Reaper", < 2536, 605, -125 >, 90, "", 1.0 )
	WaveSpawn_TitanSpawn( wave4, "Ion", < 3081, 764, -127 >, 90, "", 1.5 )
	WaveSpawn_ReaperSpawn( wave4, "Reaper", < 654, -2589, -127 >, 90, "", 2.5 )
	WaveSpawn_TitanSpawn( wave4, "Tone", < 3067, 1555, -127 >, 90, "", 1.0 )
	WaveSpawn_ReaperSpawn( wave4, "TickReaper", < -1389, -1083, -127 >, 90, "", 2.5 )
	WaveSpawn_TitanSpawn( wave4, "Northstar", < -4880, -885, -128 >, 90, "" )
	WaveSpawn_WaitEnemyAliveAmount( wave4, 6 )
	
	WaveSpawn_TitanSpawn( wave4, "Tone", < -3564, -1587, -127 >, 90, "", 1.0 )
	WaveSpawn_ReaperSpawn( wave4, "TickReaper", < 2284, 1130, -131 >, 90, "", 1.5 )
	WaveSpawn_TitanSpawn( wave4, "Tone", < -4564, -1166, -127 >, 90, "", 1.0 )
	WaveSpawn_ReaperSpawn( wave4, "TickReaper", < -3160, -2090, -127 >, 90, "", 1.5 )
	WaveSpawn_TitanSpawn( wave4, "Tone", < 749, -3153, -126 >, 90, "", 2.5 )
	WaveSpawn_InfantrySpawn( wave4, "PodGrunt", < 962, -1182, 39 >, 0.0, "", 1.0 )
	WaveSpawn_TitanSpawn( wave4, "Sniper", < 3377, -105, -127 >, 90, "", 2.5 )
	WaveSpawn_InfantrySpawn( wave4, "PodGrunt", < -2347, 144, -127 >, 0.0, "", 1.0 )
	WaveSpawn_TitanSpawn( wave4, "Northstar", < -4880, -885, -128 >, 90, "", 2.5 )
	WaveSpawn_InfantrySpawn( wave4, "Ticks", < -2196, -619, -127 >, 0.0, "", 0.5 )
	WaveSpawn_InfantrySpawn( wave4, "Ticks", < -4378, -232, -126 >, 0.0, "", 0.5 )
	WaveSpawn_InfantrySpawn( wave4, "Ticks", < 2741, 183, -186 >, 0.0, "", 2.5 )
	WaveSpawn_TitanSpawn( wave4, "Mortar", < -4846, -1205., -126 >, 90, "", 1.0 )
	WaveSpawn_TitanSpawn( wave4, "Mortar", < 3166, 129, -127 >, 90, "", 2.5 )
	WaveSpawn_InfantrySpawn( wave4, "PodGrunt", < 2950, -122, -127 >, 0.0, "", 0.6 )
	WaveSpawn_ReaperSpawn( wave4, "Reaper", < -4121, -1045, -127 >, 90, "", 0.7 )
	WaveSpawn_ReaperSpawn( wave4, "Reaper", < 28, -1077, -127 >, 90, "", 0.8 )
	WaveSpawn_ReaperSpawn( wave4, "Reaper", < 744, -2090, -127 >, 90, "", 0.9 )
	WaveSpawn_ReaperSpawn( wave4, "Reaper", < -664, -2363, -254 >, 90, "", 1.0 )
	WaveSpawn_TitanSpawn( wave4, "Scorch", < 3184, 1456, -128 >, 90, "" )
	
    WaveSpawnEvents.append( wave4 )
	
	/*
	 __      __                 ___ 
	 \ \    / /__ _ __ __ ___  | __|
	  \ \/\/ // _` |\ V // -_) |__ \
	   \_/\_/ \__,_| \_/ \___| |___/
	
	*/
	array<WaveSpawnEvent> wave5
	WaveSpawn_Announce( wave5, "Everything", 0.1 )
	WaveSpawn_ReaperSpawn( wave5, "Reaper", < 744, -2090, -127 >, 90, "", 0.5 )
	WaveSpawn_ReaperSpawn( wave5, "Reaper", < -664, -2363, -254 >, 90, "", 0.5 )
	WaveSpawn_ReaperSpawn( wave5, "Reaper", < -2390, -3278, -127 >, 90, "", 0.5 )
	WaveSpawn_ReaperSpawn( wave5, "Reaper", < -1389, -1083, -127 >, 90, "", 1.5 )
	WaveSpawn_ReaperSpawn( wave5, "TickReaper", < -664, -2363, -254 >, 90, "", 0.5 )
	WaveSpawn_ReaperSpawn( wave5, "TickReaper", < -2390, -3278, -127 >, 90, "", 1.5 )
	WaveSpawn_TitanSpawn( wave5, "Ion", < -3443, -1215, -128 >, 90, "", 0.5 )
	WaveSpawn_TitanSpawn( wave5, "Ion", < -280, -3195, -127 >, 90, "", 1.5 )
	WaveSpawn_InfantrySpawn( wave5, "PodGrunt", < 857, -2375, -127 >, 0.0, "", 0.5 )
	WaveSpawn_InfantrySpawn( wave5, "PodGrunt", < -3664, -1638, -127 >, 0.0, "", 1.5 )
	WaveSpawn_TitanSpawn( wave5, "Legion", < 3184, 1456, -128 >, 90, "", 0.5 )
	WaveSpawn_TitanSpawn( wave5, "Ronin", < -5044, -453, -127 >, 90, "" )
	WaveSpawn_WaitEnemyAliveAmount( wave5, 6 )
	
	WaveSpawn_ReaperSpawn( wave5, "Reaper", < -4566, -833, -127 >, 90, "", 0.5 )
	WaveSpawn_ReaperSpawn( wave5, "Reaper", < -2005, -938, -127 >, 90, "", 0.5 )
	WaveSpawn_ReaperSpawn( wave5, "Reaper", < 233, -3247, -128 >, 90, "", 1.5 )
	WaveSpawn_TitanSpawn( wave5, "Monarch", < -898, -2900, -254 >, 90, "airbase_farRoute", 0.5 )
	WaveSpawn_TitanSpawn( wave5, "Monarch", < -1698, -2900, -254 >, 90, "ac_farRouteAlt1", 1.5 )
	WaveSpawn_TitanSpawn( wave5, "Sniper", < -594, -1096, -127 >, 90, "", 1.5 )
	WaveSpawn_ReaperSpawn( wave5, "Reaper", < -716, -1114, -127 >, 90, "", 0.5 )
	WaveSpawn_ReaperSpawn( wave5, "Reaper", < 3149, -149, -126 >, 90, "", 0.5 )
	WaveSpawn_ReaperSpawn( wave5, "Reaper", < 2536, 605, -125 >, 90, "", 2.5 )
	WaveSpawn_TitanSpawn( wave5, "Mortar", < 3259, 507, -127 >, 90, "", 0.5, "fd_incTitansMortarClump" )
	WaveSpawn_TitanSpawn( wave5, "Mortar", < -4846, -1205., -126 >, 90, "", 2.5 )
	WaveSpawn_ReaperSpawn( wave5, "TickReaper", < -1389, -1083, -127 >, 90, "", 1.5 )
	WaveSpawn_ReaperSpawn( wave5, "TickReaper", < 2284, 1130, -131 >, 90, "", 1.5 )
	WaveSpawn_InfantrySpawn( wave5, "PodGrunt", < -570, 732, -127 >, 0.0, "", 0.5 )
	WaveSpawn_InfantrySpawn( wave5, "PodGrunt", < -2347, 144, -127 >, 0.0, "", 1.5 )
	WaveSpawn_TitanSpawn( wave5, "Ion", < -3564, -1587, -127 >, 90, "", 1.5 )
	WaveSpawn_TitanSpawn( wave5, "Tone", < -4564, -1166, -127 >, 90, "" )
	WaveSpawn_WaitEnemyAliveAmount( wave5, 6 )
	
	WaveSpawn_TitanSpawn( wave5, "Scorch", < -898, -2900, -254 >, 90, "airbase_farRoute", 0.5 )
	WaveSpawn_TitanSpawn( wave5, "Scorch", < -1698, -2900, -254 >, 90, "ac_farRouteAlt1", 2.5 )
	WaveSpawn_ReaperSpawn( wave5, "Reaper", < -4121, -1045, -127 >, 90, "", 0.5 )
	WaveSpawn_ReaperSpawn( wave5, "Reaper", < 654, -2589, -127 >, 90, "", 1.5 )
	WaveSpawn_TitanSpawn( wave5, "Tone", < -2881, -2775, -127 >, 90, "", 1.5 )
	WaveSpawn_TitanSpawn( wave5, "Ion", < 3081, 764, -127 >, 90, "", 1.5 )
	WaveSpawn_ReaperSpawn( wave5, "Reaper", < 28, -1077, -127 >, 90, "", 0.5 )
	WaveSpawn_ReaperSpawn( wave5, "Reaper", < 744, -2090, -127 >, 90, "", 0.5 )
	WaveSpawn_InfantrySpawn( wave5, "PodGrunt", < 2950, -122, -127 >, 0.0, "", 0.5 )
	WaveSpawn_InfantrySpawn( wave5, "PodGrunt", < -681, 834, -127 >, 0.0, "", 0.5 )
	WaveSpawn_InfantrySpawn( wave5, "Drones", < -4571, 595, 2560 >, 90, "ac_dronePatrol", 1.0 )
	WaveSpawn_InfantrySpawn( wave5, "Drones", < -4571, 595, 2560 >, 90, "ac_dronePatrol", 1.5 )
	WaveSpawn_ReaperSpawn( wave5, "TickReaper", < -3160, -2090, -127 >, 90, "", 1.5 )
	WaveSpawn_TitanSpawn( wave5, "ArcTitan", < -898, -2900, -254 >, 90, "airbase_farRoute", 0.5, "fd_incArcTitanClump" )
	WaveSpawn_TitanSpawn( wave5, "ArcTitan", < -1698, -2900, -254 >, 90, "ac_farRouteAlt1", 2.5 )
	WaveSpawn_InfantrySpawn( wave5, "Ticks", < -4593, 1921, -112 >, 0.0, "", 0.5 )
	WaveSpawn_InfantrySpawn( wave5, "Ticks", < -4235, 1615, -128 >, 0.0, "" )
	WaveSpawn_WaitEnemyAliveAmount( wave5, 6 )
	
	WaveSpawn_TitanSpawn( wave5, "Sniper", < 3377, -105, -127 >, 90, "", 1.5 )
	WaveSpawn_TitanSpawn( wave5, "Northstar", < -4880, -885, -128 >, 90, "", 1.5 )
	WaveSpawn_TitanSpawn( wave5, "Ronin", < 749, -3153, -126 >, 90, "", 1.5 )
	WaveSpawn_TitanSpawn( wave5, "Monarch", < 787, -2517, -128 >, 90, "", 2.5 )
	WaveSpawn_ReaperSpawn( wave5, "TickReaper", < -4566, -833, -127 >, 90, "", 0.5 )
	WaveSpawn_ReaperSpawn( wave5, "TickReaper", < -2005, -938, -127 >, 90, "", 1.5 )
	WaveSpawn_InfantrySpawn( wave5, "Drones", < -4571, 595, 2560 >, 90, "ac_dronePatrol", 1.0 )
	WaveSpawn_InfantrySpawn( wave5, "Drones", < -4571, 595, 2560 >, 90, "ac_dronePatrol", 2.5 )
	WaveSpawn_TitanSpawn( wave5, "Legion", < -1102, -3441, -191 >, 90, "airbase_farRouteAlt", 0.5 )
	WaveSpawn_TitanSpawn( wave5, "Legion", < -1600, -3441, -191 >, 90, "ac_farRoute", 2.5 )
	WaveSpawn_ReaperSpawn( wave5, "TickReaper", < 233, -3247, -128 >, 90, "", 1.5 )
	WaveSpawn_TitanSpawn( wave5, "Tone", < -2384, -3143, -127 >, 90, "", 0.5 )
	WaveSpawn_TitanSpawn( wave5, "Ion", < 3067, 1555, -127 >, 90, "", 1.5 )
	WaveSpawn_TitanSpawn( wave5, "Scorch", < -4818, -620, -127 >, 90, "", 2.5 )
	WaveSpawn_ReaperSpawn( wave5, "Reaper", < 2284, 1130, -131 >, 90, "", 1.5 )
	WaveSpawn_TitanSpawn( wave5, "Ronin", < -2061, -865, -127 >, 90, "", 2.5 )
	WaveSpawn_ReaperSpawn( wave5, "Reaper", < -3160, -2090, -127 >, 90, "", 2.5 )
	WaveSpawn_TitanSpawn( wave5, "Ronin", < 2865, 1023, -126 >, 90, "", 1.5 )
	WaveSpawn_TitanSpawn( wave5, "Mortar", < 3166, 129, -127 >, 90, "", 0.5 )
	WaveSpawn_TitanSpawn( wave5, "Mortar", < -3584, -1673, -126 >, 90, "" )
	
    WaveSpawnEvents.append( wave5 )
}

void function RegisterCustomFDContentOGSetup()
{
	array<entity> aiPositions = GetEntArrayByClass_Expensive( "info_target" )
	foreach ( entity position in aiPositions )
	{
		if( position.HasKey( "editorclass" ) && position.kv.editorclass == "info_fd_ai_position" )
		{
			if( expect string( position.kv.aiType ).tointeger() == eStationaryAIPositionTypes.LAUNCHER_REAPER || expect string( position.kv.aiType ).tointeger() == eStationaryAIPositionTypes.MORTAR_SPECTRE )
				position.Destroy()
		}
	}
			
	AddStationaryAIPosition(< -2683, -3385, -127 >, eStationaryAIPositionTypes.LAUNCHER_REAPER)
	AddStationaryAIPosition(< -467, -1348, 64 >, eStationaryAIPositionTypes.LAUNCHER_REAPER)
	AddStationaryAIPosition(< 1578, 689, 143 >, eStationaryAIPositionTypes.LAUNCHER_REAPER)
	AddStationaryAIPosition(< 820, -1217, 40 >, eStationaryAIPositionTypes.LAUNCHER_REAPER)
	AddStationaryAIPosition(< 490, -3168, -128 >, eStationaryAIPositionTypes.LAUNCHER_REAPER)
	AddStationaryAIPosition(< -959, 0, -143 >, eStationaryAIPositionTypes.LAUNCHER_REAPER)
	AddStationaryAIPosition(< -4150, -396, -127 >, eStationaryAIPositionTypes.LAUNCHER_REAPER)
	AddStationaryAIPosition(< 1758, 22, -257 >, eStationaryAIPositionTypes.LAUNCHER_REAPER)
	
	AddStationaryAIPosition(< -2096, -185, -128 >, eStationaryAIPositionTypes.MORTAR_SPECTRE)
	AddStationaryAIPosition(< 2291, 625, 64 >, eStationaryAIPositionTypes.MORTAR_SPECTRE)
	AddStationaryAIPosition(< -1090, 1549, 112 >, eStationaryAIPositionTypes.MORTAR_SPECTRE)
	AddStationaryAIPosition(< -3311, 145, 36 >, eStationaryAIPositionTypes.MORTAR_SPECTRE)
	AddStationaryAIPosition(< -4576, 451, -143 >, eStationaryAIPositionTypes.MORTAR_SPECTRE)
}