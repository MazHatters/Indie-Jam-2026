randomise();

// --- NPC IDENTITY DATABASE ---
npc_master_list = [
	{name: "Mr. Deepwater Profit", dialogue1: "Relax. It's just a small offshore project", dialogue2: "Statistically, spills are rare.", dialogue3: "Let's not focus on outliers.", approve: "We'll name the rig after you.", reject: "We'll do it somewhere poorer.", sprite: sSatan, gain: "+130 Money / -60 Water", lost: "-40 Money / -10 Water"},
	{name: "Chad Ecovision tm", dialogue1: "Imagine untouched nature...", dialogue2: "...from your tiny private infinity pool.", dialogue3: "We remove only what's necessary", approve: "Absolute GIGACHAD.", reject: "We'll rebrand another forest.", sprite: sCell, gain: "+110 Money / -50 Trees", lost: "-20 Money"},
	{name: "Synergy Sam", dialogue1: "I've reviewed your ecosystem KPIs.", dialogue2: "They're underperforming", dialogue3: "Let's unlock value.", approve: "That's scalable destruction.", reject: "I'll invoice you anyway.", sprite: sDonald_trump, gain: "+90 Money / -30 Trees / -20 Water", lost: "-30 Money"},
	{name: "Tim Burr, CEO", dialogue1: "You see trees.", dialogue2: "I see quarterly revenue.", dialogue3: "Let's compromise.", approve: "Beautiful margins.", reject: "We'll cut corners. And trees.", sprite: sElon, gain: "+120 Money / -70 Trees", lost: "-10 Money / -10 Trees"},
	{name: "Captain Overcatch", dialogue1: "The ocean is big.", dialogue2: "Our nets are bigger.", dialogue3: "Maximum yield achievable.", approve: "Zero fish left behind.", reject: "Off the books, off the hooks.", sprite: sNaruto, gain: "+100 Money / -60 Water", lost: "-20 Money / -20 Water"},
	{name: "Datuk Highway Bin Shortcut", dialogue1: "Straight road.", dialogue2: "Straight profit.", dialogue3: "Forest is just... in the way.", approve: "I love city planning.", reject: "Well I hope you enjoy traffic.", sprite: sNPC_1, gain: "+110 Money / -55 Trees", lost: "-40 Money"},
	{name: "Mr. Clean Coal tm", dialogue1: "Coal is reliable.", dialogue2: "The ocean is nearby.", dialogue3: "That's synergy.", approve: "Clean enough.", reject: "Coal for Christmas.", sprite: sNPC_2, gain: "+120 Money / -40 Water / -30 Trees", lost: "-30 Money"},
	{name: "Dr. Spillwell", dialogue1: "We have waste.", dialogue2: "You have ocean.", dialogue3: "I see alignment.", approve: "Dilution is innovation.", reject: "We'll dump discreetly.", sprite: sNPC_3, gain: "+140 Money / -70 Water", lost: "-50 Money / -20 Water"},
	{name: "Encik KPI", dialogue1: "You are behind quota.", dialogue2: "This is unacceptable.", dialogue3: "Fix it.", approve: "Output maintained.", reject: "We'll have to replace you.", sprite: sNPC_4, gain: "+80 Money / -20 Trees / -20 Water", lost: "-80 Money"},
	{name: "Kripto Paul", dialogue1: "This deal is huge.", dialogue2: "It's risky.", dialogue3: "That's why I love it.", approve: "That's legacy money.", reject: "That's small thinking.", sprite: sNPC_5, gain: "+150 Money / -50 Trees / -40 Water", lost: "-60 Money"},
	{name: "Supreme Leader", dialogue1: "This forest is mine.", dialogue2: "It serves the state.", dialogue3: "Approve.", approve: "Good citizen.", reject: "Unacceptable.", sprite: sNPC_6, gain: "+120 Money / -60 Trees", lost: "-80 Money"},
	{name: "Rocket Billionaire", dialogue1: "We'll leave Earth soon.", dialogue2: "But first...", dialogue3: "...we use it.", approve: "Future secured.", reject: "You lack vision.", sprite: sNPC_7, gain: "+150 Money / -70 Trees / -40 Water", lost: "-60 Money"},
	{name: "Orange Tycoon", dialogue1: "Best deal ever.", dialogue2: "Huge profits.", dialogue3: "No trees needed.", approve: "Tremendous.", reject: "Worst decision.", sprite: sNPC_8, gain: "+140 Money / -65 Trees", lost: "-50 Money"},
	{name: "Mr. Cash Crab", dialogue1: "Money money!", dialogue2: "Nature is useless!", dialogue3: "Approve it!", approve: "Profit!!", reject: "My money...", sprite: sNPC_9, gain: "+160 Money / -80 Trees", lost: "-50 Money"},
	{name: "Endministrator", dialogue1: "System optimization required.", dialogue2: "Organic life inefficient.", dialogue3: "Proceed?", approve: "Optimization complete.", reject: "Error logged.", sprite: sNPC_10, gain: "+130 Money / -50 Trees / -30 Water", lost: "-30 Money"},
	{name: "Dark Enforcer", dialogue1: "The forest resists.", dialogue2: "It will fall.", dialogue3: "You decide.", approve: "Inevitable.", reject: "You delay fate.", sprite: sNPC_1, gain: "+120 Money / -60 Trees", lost: "-40 Money"},
	{name: "Perfect Being", dialogue1: "I seek perfection.", dialogue2: "Nature is flawed.", dialogue3: "I will improve it.", approve: "Closer to perfection.", reject: "You deny evolution.", sprite: sNPC_2, gain: "+140 Money / -70 Trees / -30 Water", lost: "-50 Money"},
	{name: "Dr. Eggplant", dialogue1: "Machines > nature.", dialogue2: "Efficiency matters.", dialogue3: "Approve.", approve: "Progress!", reject: "I'll be back.", sprite: sNPC_3, gain: "+130 Money / -50 Trees / -30 Water", lost: "-20 Money"},
	{name: "Handsome Exec", dialogue1: "You're the hero.", dialogue2: "I'm the genius.", dialogue3: "Approve my project.", approve: "Of course you did.", reject: "You'll regret that.", sprite: sNPC_4, gain: "+150 Money / -70 Trees", lost: "-60 Money"},
	{name: "Corporate Devil", dialogue1: "It's just business.", dialogue2: "No souls involved.", dialogue3: "Sign here.", approve: "Pleasure doing business.", reject: "We'll meet again.", sprite: sNPC_5, gain: "+180 Money / -90 Trees / -50 Water", lost: "-70 Money"},
	{name: "Mr. O'Haze", dialogue1: "Pollution is profitable.", dialogue2: "Air, water... optional.", dialogue3: "Approve.", approve: "Smells like success.", reject: "You'll choke later.", sprite: sNPC_6, gain: "+140 Money / -60 Trees / -60 Water", lost: "-40 Money"},
	{name: "Mukbang Mogul", dialogue1: "I need MORE seafood.", dialogue2: "Like... way more.", dialogue3: "Approve?", approve: "Let's feast!", reject: "I'll order anyway...", sprite: sNPC_7, gain: "+120 Money / -80 Water", lost: "-30 Money"},
	{name: "The Deep Guy", dialogue1: "The ocean trusts me...", dialogue2: "...I think.", dialogue3: "I need this.", approve: "They'll forgive me.", reject: "...thank you.", sprite: sNPC_8, gain: "+100 Money / -80 Water", lost: "-10 Money / +10 Water"},
	{name: "BigEater", dialogue1: "That's a LOT of food.", dialogue2: "Where's it from?", dialogue3: "Oh... the ocean.", approve: "W meal.", reject: "Still eating.", sprite: sNPC_9, gain: "+90 Money / -40 Water", lost: "0 Money"},
	{name: "Pale Romantic", dialogue1: "I love nature...", dialogue2: "...but I love profit more.", dialogue3: "What a dilemma.", approve: "Tempting choice.", reject: "How noble...", sprite: sNPC_10, gain: "+100 Money / -40 Trees", lost: "-20 Money"},
	{name: "Charity Beast", dialogue1: "If we destroy this forest...", dialogue2: "I'll donate 1%.", dialogue3: "Deal?", approve: "Good content!", reject: "You hate charity?", sprite: sNPC_1, gain: "+160 Money / -80 Trees", lost: "-60 Money"},
	{name: "Drunken Captain", dialogue1: "There's treasure under them reefs!", dialogue2: "Gold!", dialogue3: "Approve, savvy?", approve: "Riches!", reject: "Cursed luck...", sprite: sNPC_2, gain: "+130 Money / -70 Water", lost: "-20 Money"},
	{name: "Crunch Dev", dialogue1: "We need funding.", dialogue2: "We cut trees, we ship faster.", dialogue3: "Simple.", approve: "Game shipped.", reject: "We crunch harder...", sprite: sNPC_3, gain: "+110 Money / -40 Trees", lost: "-30 Money"},
	{name: "AI Engineer", dialogue1: "Model says destroy.", dialogue2: "Accuracy: 98%.", dialogue3: "Trust it.", approve: "Prediction confirmed.", reject: "Human error.", sprite: sNPC_4, gain: "+140 Money / -60 Trees / -40 Water", lost: "-50 Money"},
	{name: "Robot Man", dialogue1: "I build.", dialogue2: "I do not think.", dialogue3: "Approve.", approve: "Done.", reject: "Waiting.", sprite: sNPC_5, gain: "+90 Money / -35 Trees", lost: "0 Money"},
	{name: "Virus Man", dialogue1: "I erase ecosystems.", dialogue2: "Fast.", dialogue3: "Efficient.", approve: "It spreads.", reject: "Your loss.", sprite: sNPC_6, gain: "+120 Money / -70 Trees / -50 Water", lost: "-20 Money"},
	{name: "Grandma", dialogue1: "We had forests once...", dialogue2: "...now we have money.", dialogue3: "Which is better?", approve: "Good returns.", reject: "...I miss them.", sprite: sNPC_7, gain: "+70 Money / -30 Trees", lost: "+10 Trees / -20 Money"},
	{name: "Mutant Fish Leader", dialogue1: "We evolved.", dialogue2: "We thrive in poison.", dialogue3: "Make more.", approve: "We grow.", reject: "We adapt anyway.", sprite: sNPC_8, gain: "+80 Money / -60 Water", lost: "-10 Money"},
	{name: "Lonely Skeleton", dialogue1: "I need more graves.", dialogue2: "More friends.", dialogue3: "Cut trees.", approve: "More company.", reject: "...still alone.", sprite: sNPC_9, gain: "+60 Money / -50 Trees", lost: "0 Money"}
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