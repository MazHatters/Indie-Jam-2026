randomise();

// Set base resolution for GUI scaling
base_gui_width = 1280;
base_gui_height = 720;
display_set_gui_size(base_gui_width, base_gui_height);

// --- NPC IDENTITY DATABASE ---
npc_master_list = [
//	{name: "Mr. Deepwater Profit", dialogue1: "Relax. It's just a small offshore project", dialogue2: "Statistically, spills are rare.", dialogue3: "Let's not focus on outliers.", approve: "We'll name the rig after you.", reject: "We'll do it somewhere poorer.", sprite: sMr_deep_water_profit, gain: 130, lost: -40},
//	{name: "Chad Ecovision tm", dialogue1: "Imagine untouched nature...", dialogue2: "...from your tiny private infinity pool.", dialogue3: "We remove only what's necessary", approve: "Absolute GIGACHAD.", reject: "We'll rebrand another forest.", sprite: sGigachad, gain: 110, lost: -20},
//	{name: "Synergy Sam", dialogue1: "I've reviewed your ecosystem KPIs.", dialogue2: "They're underperforming", dialogue3: "Let's unlock value.", approve: "That's scalable destruction.", reject: "I'll invoice you anyway.", sprite: sSynergy_sam, gain: 90, lost: -30},
//	{name: "Tim Burr, CEO", dialogue1: "You see trees.", dialogue2: "I see quarterly revenue.", dialogue3: "Let's compromise.", approve: "Beautiful margins.", reject: "We'll cut corners. And trees.", sprite: sTim_burr, gain: 120, lost: -10},
//	{name: "Captain Overcatch", dialogue1: "The ocean is big.", dialogue2: "Our nets are bigger.", dialogue3: "We can reach maximum yield.", approve: "Zero fish left behind.", reject: "Off the books, off the hooks.", sprite: sCaptain_overcatch, gain: 100, lost: -20},
//	{name: "Datuk Highway Bin Shortcut", dialogue1: "Straight road.", dialogue2: "Straight profit.", dialogue3: "Forest is just... in the way.", approve: "I love city planning.", reject: "Well I hope you enjoy traffic.", sprite: sDatuk_highway, gain: 110, lost: -40},
//	{name: "Mr. Clean Coal tm", dialogue1: "Coal is reliable.", dialogue2: "The ocean is nearby.", dialogue3: "That's synergy.", approve: "Clean enough.", reject: "Coal for Christmas.", sprite: sMr_clean_coal, gain: 120, lost: -30},
//	{name: "Dr. Spillwell", dialogue1: "We have waste.", dialogue2: "You have ocean.", dialogue3: "I see alignment.", approve: "Dilution is innovation.", reject: "We'll dump it discreetly.", sprite: sDr_spill_well, gain: 140, lost: -50},
//	{name: "Encik KPI", dialogue1: "You are behind quota.", dialogue2: "This is unacceptable.", dialogue3: "Fix it.", approve: "Output maintained.", reject: "We'll have to replace you.", sprite: sMr_kpi, gain: 80, lost: -80},
//	{name: "High Risk Paul", dialogue1: "This deal is huge.", dialogue2: "It's risky.", dialogue3: "That's why I love it.", approve: "That's legacy money.", reject: "That's small thinking.", sprite: sHigh_risk_Paul, gain: 150, lost: -60},
//	{name: "Supreme Leader", dialogue1: "This forest is mine.", dialogue2: "It serves the state.", dialogue3: "Approve.", approve: "Good citizen.", reject: "Unacceptable.", sprite: sJongun, gain: 120, lost: -80},
//	{name: "Rocket Billionaire", dialogue1: "We'll leave Earth soon.", dialogue2: "But first...", dialogue3: "...we use it.", approve: "Future secured.", reject: "You lack vision.", sprite: sElon, gain: 150, lost: -60},
//	{name: "Trump McDonald", dialogue1: "The world needs healing.", dialogue2: "Let's send A GAJIBILLION dollars to Yahu Nation.", dialogue3: "No trees needed.", approve: "Tremendous.", reject: "Worst decision.", sprite: sDonald_trump, gain: -500, lost: -160},
//	{name: "Mr. Cash Crab", dialogue1: "Money money!", dialogue2: "Nature is useless!", dialogue3: "Approve it!", approve: "Moneyy!!", reject: "You can't see it but I'm playing the world's smallest violin", sprite: sMr_Crabs, gain: 160, lost: -50},
//	{name: "Endministrator", dialogue1: "System optimization required.", dialogue2: "Organic life inefficient.", dialogue3: "Proceed?", approve: "Optimization complete.", reject: "Error logged.", sprite: sEndministrator, gain: 130, lost: -30},
//	{name: "Dark Enforcer", dialogue1: "The forest rebels.", dialogue2: "It will fall.", dialogue3: "You decide.", approve: "For the Empire.", reject: "I find your lack of faith... disturbing.", sprite: sDarth_Vader, gain: 120, lost: -40},
//	{name: "Perfect Being", dialogue1: "I seek perfection.", dialogue2: "Nature is flawed.", dialogue3: "Grant me land so that I can make an arena to test my perfection.", approve:  "Look at me, I'm perfect.", reject: "You're either perfect or you’re not me.", sprite: sCell, gain: 140, lost: -50},
//	{name: "Dr. Eggplant", dialogue1: "Machines > nature.", dialogue2: "Efficiency matters.", dialogue3: "Help me find that blue rodent.", approve:  "Eggplant Land will finally come to be!", reject:  "You'll pay for this.", sprite: sRobotnik, gain: 130, lost: -20},
//	{name: "Handsome Exec", dialogue1: "We'll be the hero.", dialogue2: "But I'm the handsome one.", dialogue3: "Approve my idea to put BORDERs between the LANDS.", approve: "I just want you to remember one thing; you’re a sellout.", reject: "I'll pay you to kill yourself.", sprite: sHandsome_Jack, gain: 10, lost: 150},
//	{name: "Corporate Devil", dialogue1: "Give me 100 human souls.", dialogue2: "I'll make it worth your while.", dialogue3: "Sign here.", approve: "Pleasure doing business.", reject: "Just think about it.", sprite: sSatan, gain: 150, lost: 0},
//	{name: "Mr. O'Haze", dialogue1: "Pollution is profitable.", dialogue2: "Air, water... optional.", dialogue3: "Factory is necessity.", approve: "I say let it die, let it die, let it shrivel up and die.", reject: "You gotta be kidding me.", sprite: sOHare, gain: 140, lost: -40},
	{name: "Mukbang Mogul", dialogue1: "I need MORE seafood.", dialogue2: "Like... way more.", dialogue3: "Help a brother out?", approve: "Two steps ahead", reject: "*cries*", sprite: sNikokado_avocado, gain: 120, lost: -30},
//	{name: "The Deep Guy", dialogue1: "The ocean trusts me...", dialogue2: "...I think.", dialogue3: "Help me save the dolphins.", approve: "They'll forgive me.", reject: "...thank you.", sprite: sThe_deep, gain: 0, lost: 0},
	{name: "BigEater", dialogue1: "That's a LOT of food.", dialogue2: "Where's it from?", dialogue3: "Oh... the ocean.", approve: "W meal.", reject: "Mods ban him.", sprite: sCaseoh, gain: 90, lost: 0},
//	{name: "Count Edward", dialogue1: "I'm hunting vermins.", dialogue2: "But the forest blocks my path.", dialogue3: "Solve it.", approve: "How... intoxicating.", reject: "How... moral.", sprite: sEdward_Cullen, gain: 100, lost: -20},
//	{name: "Charity Beast", dialogue1: "For every land we clear...", dialogue2: "I'll donate 1%.", dialogue3: "Deal?", approve: "Good content!", reject: "You hate charity?", sprite: sMr_fake_beast, gain: 80, lost: 0},
//	{name: "Drunken Captain", dialogue1: "There's treasure under them reefs!", dialogue2: "Gold!", dialogue3: "Approve, savvy?", approve: "The CAPTAIN has given orders!", reject: "Cursed luck...", sprite: sCaptain_Jack, gain: -130, lost: -20},
//	{name: "Crunch Dev", dialogue1: "We need more polygons.", dialogue2: "Invest in less framerates.", dialogue3: "Simple.", approve: "MORE POLYGONS!.", reject: "if else...{}", sprite: sYandereGame_Dev, gain: 110, lost: -30},
//	{name: "AI Engineer", dialogue1: "Model too big.", dialogue2: "Model needs water and land.", dialogue3: "We demand your trust.", approve: "RAM prices increase.", reject: "A human error.", sprite: sAIDev_Vedal, gain: 140, lost: -50},
//	{name: "Robot Man", dialogue1: "I build.", dialogue2: "I could make things beautiful.", dialogue3: "Help us take over the world.", approve: "Boop.", reject: "I'll be back.", sprite: sRobot_c3po, gain: 90, lost: 0},
//	{name: "Virus Man", dialogue1: "We erase ecosystems.", dialogue2: "Fast and efficient.", dialogue3: "Help us spread.", approve: "The swarm will remember your name.", reject: "We will infect everyone you love.", sprite: sBacteria_Man, gain: 120, lost: -20},
//	{name: "Grandma", dialogue1: "Hey sweetie!", dialogue2: "I've made some money seling cookies.", dialogue3: "Heres some pocket money", approve: "Don't push yourself too hard.", reject: "Aww you shouldn't have.", sprite: sGrandma_ethel, gain: 1, lost: -20},
//	{name: "Mutant Fish Leader", dialogue1: "We evolved.", dialogue2: "We thrive in poison.", dialogue3: "Make more.", approve: "We grow.", reject: "We adapt anyway.", sprite: sFishOuttaWotah, gain: 80, lost: -10},
//	{name: "Lonely Skeleton", dialogue1: "I need more graves.", dialogue2: "More friends.", dialogue3: "Cut trees.", approve: "More friends <:", reject: "I forgive you.", sprite: sSkeleton_Papyrus, gain: 60, lost: 0},
//	{name: "Wife", dialogue1:"Honey, can I have money?", dialogue2: "All my friends got the new handbag,", dialogue3: "Pretty pleaseeeee", approve: "Yayyy I love you! :3  Best husband ever!! >w<", reject: "I'm filing a divorce.", sprite: sWife,  gain: -100, lost: -200}
];

array_shuffle_ext(npc_master_list);

day = 1;
npc_limit = 0;
day1_quota = 400;
day2_quota = 700;
day3_quota = 1000;
revenue = 0;
nature = 0;
npc_count = 0;
player_choice = "WAITING";
show_result = false;
depth = -10;

current_music = -1;

if (room == Main_menu) 
{
    current_music = audio_play_sound(soMain_menu_Dagored___Harlem_Heat__freetouse_com_, 100, true);
    audio_sound_gain(current_music, 1, 0);
}