randomise();

// --- NPC IDENTITY DATABASE ---
npc_master_list = [
    {name: "Mr. Deepwater Profit", dialogue1: "Relax. It's just a small offshore project", dialogue2: "Statistically, spills are rare.", dialogue3: "Let's not focus on outliers.", approve: "We'll name the rig after you.", reject: "We'll do it somewhere poorer.", sprite: sSatan},
    {name: "Chad Ecovision tm", dialogue1: "Imagine untouched nature...", dialogue2: "...from your tiny private infinity pool.", dialogue3: "We remove only what's necessary", approve: "Absolute GIGACHAD.", reject: "We'll rebrand another forest.", sprite: sCell},
    {name: "Synergy Sam", dialogue1: "I've reviewed your ecosystem KPIs.", dialogue2: "They're underperforming", dialogue3: "Let's unlock value.", approve: "That's scalable destruction.", reject: "I'll invoice you anyway.", sprite: sDonald_trump},
    {name: "Tim Burr, CEO", dialogue1: "You see trees.", dialogue2: "I see quarterly revenue.", dialogue3: "Let's compromise.", approve: "Beautiful margins.", reject: "We'll cut corners. And trees.", sprite: sElon},
    {name: "Captain Overcatch", dialogue1: "The ocean is big.", dialogue2: "Our nets are bigger.", dialogue3: "Maximum yield achievable.", approve: "Zero fish left behind.", reject: "Off the books, off the hooks.", sprite: sNaruto},
    {name: "Datuk Highway Bin Shortcut", dialogue1: "Straight road.", dialogue2: "Straight profit.", dialogue3: "Forest is just... in the way.", approve: "I love city planning.", reject: "Well I hope you enjoy traffic.", sprite: sNPC_6},
    {name: "Mr. Clean Coal tm", dialogue1: "Coal is reliable.", dialogue2: "The ocean is nearby.", dialogue3: "That's synergy.", approve: "Clean enough.", reject: "Coal for Christmas.", sprite: sNPC_7},
    {name: "Dr. Spillwell", dialogue1: "We have waste.", dialogue2: "You have ocean.", dialogue3: "I see alignment.", approve: "Dilution is innovation.", reject: "We'll dump discreetly.", sprite: sNPC_8},
    {name: "Encik KPI", dialogue1: "You are behind quota.", dialogue2: "This is unacceptable.", dialogue3: "Fix it.", approve: "Output maintained.", reject: "We'll have to take your yearly bonus out.", sprite: sNPC_9},
    {name: "Kripto Paul", dialogue1: "This deal is huge.", dialogue2: "It's risky.", dialogue3: "That's why I love it.", approve: "That's legacy money.", reject: "That's small thinking.", sprite: sNPC_10}
];

array_shuffle_ext(npc_master_list);

day = 1;
npc_limit = 0;
day1_quota = 400;
day2_quota = 800;
day3_quota = 1200;
revenue = 0;
nature = 0;
player_choice = "WAITING";