// --- NPC IDENTITY DATABASE ---
var npc_pool = [
    {name: "Mr. Deepwater Profit", dialogue1: "Relax. It's just a small offshore project", dialogue2: "Statistically, spills are rare.", dialogue3: "Let's not focus on outliers.", approve: "We'll name the rig after you.", reject: "We'll do it somewhere poorer.", sprite: sNPC_1},
    {name: "Chad Ecovision tm", dialogue1: "Imagine untouched nature...", dialogue2: "...from your tiny private infinity pool.", dialogue3: "We remove only what's necessary", approve: "Absolute GIGACHAD.", reject: "We'll rebrand another forest.", sprite: sNPC_2},
    {name: "Synergy Sam", dialogue1: "I've reviewed your ecosystem KPIs.", dialogue2: "They're underperforming", dialogue3: "Let's unlock value.", approve: "That's scalable destruction.", reject: "I'll invoice you anyway.", sprite: sNPC_3},
    {name: "Tim Burr, CEO", dialogue1: "You see trees.", dialogue2: "I see quarterly revenue.", dialogue3: "Let's compromise.", approve: "Beautiful margins.", reject: "We'll cut corners. And trees.", sprite: sNPC_4},
    {name: "Captain Overcatch", dialogue1: "The ocean is big.", dialogue2: "Our nets are bigger.", dialogue3: "Maximum yield achieved.", approve: "Zero fish left behind.", reject: "Off the books, off the hooks.", sprite: sNPC_5},
    {name: "Datuk Highway Bin Shortcut", dialogue1: "Straight road.", dialogue2: "Straight profit.", dialogue3: "Forest is just... in the way.", approve: "I love city planning.", reject: "Well I hope you enjoy traffic.", sprite: sNPC_6},
    {name: "Mr. Clean Coal tm", dialogue1: "Coal is reliable.", dialogue2: "The ocean is nearby.", dialogue3: "That's synergy.", approve: "Clean enough.", reject: "Coal for Christmas.", sprite: sNPC_7},
    {name: "Dr. Spillwell", dialogue1: "We have waste.", dialogue2: "You have ocean.", dialogue3: "I see alignment.", approve: "Dilution is innovation.", reject: "We'll dump discreetly.", sprite: sNPC_8},
    {name: "Encik KPI", dialogue1: "You are behind quota.", dialogue2: "This is unacceptable.", dialogue3: "Fix it.", approve: "Output maintained.", reject: "We'll have to take your yearly bonus out.", sprite: sNPC_9},
    {name: "Kripto Paul", dialogue1: "This deal is huge.", dialogue2: "It's risky.", dialogue3: "That's why I love it.", approve: "That's legacy money.", reject: "That's small thinking.", sprite: sNPC_10}
];

// Execute Random Roll
var roll = irandom(array_length(npc_pool) - 1);
var chosen = npc_pool[roll];

// Commit Identity Variables
identity = chosen.name;
text1 = chosen.dialogue1;
text2 = chosen.dialogue2;
text3 = chosen.dialogue3;
yes_text = chosen.approve;
no_text = chosen.reject;
sprite_index = chosen.sprite;

// --- STATE MACHINE INITIALIZATION ---
state = "ENTERING";
dialogue_step = 1;
current_response = "";
walk_speed = 4;
target_x = 544;

// Position Reset for New Identity
x = 1408;
y = 512;

depth = -1000;