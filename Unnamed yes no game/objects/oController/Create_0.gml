randomise();

// --- NPC IDENTITY DATABASE ---
npc_master_list = [
	{name: "Mr. Deepwater Profit", dialogue1: "Relax. It's just a small offshore project", dialogue2: "Statistically, spills are rare.", dialogue3: "Let's not focus on outliers.", approve: "We'll name the rig after you.", reject: "We'll do it somewhere poorer.", sprite: sNPC_1, gain: 130, lost: -40},
	{name: "Chad Ecovision tm", dialogue1: "Imagine untouched nature...", dialogue2: "...from your tiny private infinity pool.", dialogue3: "We remove only what's necessary", approve: "Absolute GIGACHAD.", reject: "We'll rebrand another forest.", sprite: sNPC_1, gain: 110, lost: -20},
	{name: "Synergy Sam", dialogue1: "I've reviewed your ecosystem KPIs.", dialogue2: "They're underperforming", dialogue3: "Let's unlock value.", approve: "That's scalable destruction.", reject: "I'll invoice you anyway.", sprite: sNPC_1, gain: 90, lost: -30},
	{name: "Tim Burr, CEO", dialogue1: "You see trees.", dialogue2: "I see quarterly revenue.", dialogue3: "Let's compromise.", approve: "Beautiful margins.", reject: "We'll cut corners. And trees.", sprite: sNPC_1, gain: 120, lost: -10},
	{name: "Captain Overcatch", dialogue1: "The ocean is big.", dialogue2: "Our nets are bigger.", dialogue3: "Maximum yield achievable.", approve: "Zero fish left behind.", reject: "Off the books, off the hooks.", sprite: sNPC_1, gain: 100, lost: -20},
	{name: "Datuk Highway Bin Shortcut", dialogue1: "Straight road.", dialogue2: "Straight profit.", dialogue3: "Forest is just... in the way.", approve: "I love city planning.", reject: "Well I hope you enjoy traffic.", sprite: sNPC_1, gain: 110, lost: -40},
	{name: "Mr. Clean Coal tm", dialogue1: "Coal is reliable.", dialogue2: "The ocean is nearby.", dialogue3: "That's synergy.", approve: "Clean enough.", reject: "Coal for Christmas.", sprite: sNPC_1, gain: 120, lost: -30},
	{name: "Dr. Spillwell", dialogue1: "We have waste.", dialogue2: "You have ocean.", dialogue3: "I see alignment.", approve: "Dilution is innovation.", reject: "We'll dump discreetly.", sprite: sNPC_1, gain: 140, lost: -50},
	{name: "Encik KPI", dialogue1: "You are behind quota.", dialogue2: "This is unacceptable.", dialogue3: "Fix it.", approve: "Output maintained.", reject: "We'll have to replace you.", sprite: sNPC_1, gain: 80, lost: -80},
	{name: "Kripto Paul", dialogue1: "This deal is huge.", dialogue2: "It's risky.", dialogue3: "That's why I love it.", approve: "That's legacy money.", reject: "That's small thinking.", sprite: sNPC_1, gain: 150, lost: -60},
	{name: "Supreme Leader", dialogue1: "This forest is mine.", dialogue2: "It serves the state.", dialogue3: "Approve.", approve: "Good citizen.", reject: "Unacceptable.", sprite: sJongun, gain: 120, lost: -80},
	{name: "Rocket Billionaire", dialogue1: "We'll leave Earth soon.", dialogue2: "But first...", dialogue3: "...we use it.", approve: "Future secured.", reject: "You lack vision.", sprite: sElon, gain: 150, lost: -60},
	{name: "Orange Tycoon", dialogue1: "Best deal ever.", dialogue2: "Huge profits.", dialogue3: "No trees needed.", approve: "Tremendous.", reject: "Worst decision.", sprite: sDonald_trump, gain: 140, lost: -50},
	{name: "Mr. Cash Crab", dialogue1: "Money money!", dialogue2: "Nature is useless!", dialogue3: "Approve it!", approve: "Profit!!", reject: "My money...", sprite: sMr_Crabs, gain: 160, lost: -50},
	{name: "Endministrator", dialogue1: "System optimization required.", dialogue2: "Organic life inefficient.", dialogue3: "Proceed?", approve: "Optimization complete.", reject: "Error logged.", sprite: sNPC_1, gain: 130, lost: -30},
	{name: "Dark Enforcer", dialogue1: "The forest resists.", dialogue2: "It will fall.", dialogue3: "You decide.", approve: "Inevitable.", reject: "You delay fate.", sprite: sNPC_1, gain: 120, lost: -40},
	{name: "Perfect Being", dialogue1: "I seek perfection.", dialogue2: "Nature is flawed.", dialogue3: "I will improve it.", approve: "Closer to perfection.", reject: "You deny evolution.", sprite: sCell, gain: 140, lost: -50},
	{name: "Dr. Eggplant", dialogue1: "Machines > nature.", dialogue2: "Efficiency matters.", dialogue3: "Approve.", approve: "Progress!", reject: "I'll be back.", sprite: sNPC_1, gain: 130, lost: -20},
	{name: "Handsome Exec", dialogue1: "You're the hero.", dialogue2: "I'm the genius.", dialogue3: "Approve my project.", approve: "Of course you did.", reject: "You'll regret that.", sprite: sHandsome_Jack, gain: 150, lost: -60},
	{name: "Corporate Devil", dialogue1: "It's just business.", dialogue2: "No souls involved.", dialogue3: "Sign here.", approve: "Pleasure doing business.", reject: "We'll meet again.", sprite: sSatan, gain: 180, lost: -70},
	{name: "Mr. O'Haze", dialogue1: "Pollution is profitable.", dialogue2: "Air, water... optional.", dialogue3: "Approve.", approve: "Smells like success.", reject: "You'll choke later.", sprite: sNPC_1, gain: 140, lost: -40},
	{name: "Mukbang Mogul", dialogue1: "I need MORE seafood.", dialogue2: "Like... way more.", dialogue3: "Approve?", approve: "Let's feast!", reject: "I'll order anyway...", sprite: sNPC_1, gain: 120, lost: -30},
	{name: "The Deep Guy", dialogue1: "The ocean trusts me...", dialogue2: "...I think.", dialogue3: "I need this.", approve: "They'll forgive me.", reject: "...thank you.", sprite: sNPC_1, gain: 100, lost: -10},
	{name: "BigEater", dialogue1: "That's a LOT of food.", dialogue2: "Where's it from?", dialogue3: "Oh... the ocean.", approve: "W meal.", reject: "Still eating.", sprite: sNPC_1, gain: 90, lost: 0},
	{name: "Pale Romantic", dialogue1: "I love nature...", dialogue2: "...but I love profit more.", dialogue3: "What a dilemma.", approve: "Tempting choice.", reject: "How noble...", sprite: sNPC_1, gain: 100, lost: -20},
	{name: "Charity Beast", dialogue1: "If we destroy this forest...", dialogue2: "I'll donate 1%.", dialogue3: "Deal?", approve: "Good content!", reject: "You hate charity?", sprite: sNPC_1, gain: 160, lost: -60},
	{name: "Drunken Captain", dialogue1: "There's treasure under them reefs!", dialogue2: "Gold!", dialogue3: "Approve, savvy?", approve: "Riches!", reject: "Cursed luck...", sprite: sCaptain_Jack, gain: 130, lost: -20},
	{name: "Crunch Dev", dialogue1: "We need funding.", dialogue2: "We cut trees, we ship faster.", dialogue3: "Simple.", approve: "Game shipped.", reject: "We crunch harder...", sprite: sNPC_1, gain: 110, lost: -30},
	{name: "AI Engineer", dialogue1: "Model says destroy.", dialogue2: "Accuracy: 98%.", dialogue3: "Trust it.", approve: "Prediction confirmed.", reject: "Human error.", sprite: sAIDev_Vedal, gain: 140, lost: -50},
	{name: "Robot Man", dialogue1: "I build.", dialogue2: "I do not think.", dialogue3: "Approve.", approve: "Done.", reject: "Waiting.", sprite: sRobot_c3po, gain: 90, lost: 0},
	{name: "Virus Man", dialogue1: "I erase ecosystems.", dialogue2: "Fast.", dialogue3: "Efficient.", approve: "It spreads.", reject: "Your loss.", sprite: sBacteria_Man, gain: 120, lost: -20},
	{name: "Grandma", dialogue1: "We had forests once...", dialogue2: "...now we have money.", dialogue3: "Which is better?", approve: "Good returns.", reject: "...I miss them.", sprite: sGrandma_ethel, gain: 70, lost: -20},
	{name: "Mutant Fish Leader", dialogue1: "We evolved.", dialogue2: "We thrive in poison.", dialogue3: "Make more.", approve: "We grow.", reject: "We adapt anyway.", sprite: sFishOuttaWotah, gain: 80, lost: -10},
	{name: "Lonely Skeleton", dialogue1: "I need more graves.", dialogue2: "More friends.", dialogue3: "Cut trees.", approve: "More company.", reject: "...still alone.", sprite: sSkeleton_Papyrus, gain: 60, lost: 0},
	{name: "Wife", dialogue1:"Honey, can I have money?", dialogue2: "All my friends got the new handbag,", dialogue3: "Pretty pleaseeeee", approve: "Yayyy I love you! :3  Best husband ever!! >w<", reject: "I'm filing a divorce.", sprite: sNPC_1,  gain: -100, lost: -20}
];

array_shuffle_ext(npc_master_list);

day = 1;
npc_limit = 0;
day1_quota = 400;
day2_quota = 800;
day3_quota = 1200;
revenue = 0;
nature = 0;
npc_count = 0;
player_choice = "WAITING";
show_result = false;
depth = -10;