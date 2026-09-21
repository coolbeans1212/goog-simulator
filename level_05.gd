extends Node2D
# time (milliseconds), action, params
var schedule = [
	[2100, "dialogue_visible", true],
	[2100, "dialogue", "Hehehehehehe..."],
	[4200, "dialogue", "It is I, EVIL GOOG..."],
	[5400, "dialogue", "and I will END you!!!!!!!!!!!!11!!!!!"],
	[6300, "dialogue_visible", false],
	[6300, "spawn_moving_danger", ["Evil Goog Enemy", 0, 500, 1000, 0, 1]],
	[6800, "spawn_moving_danger", ["Evil Goog Enemy", 525, 0, 500, 700, 1]],
	[7300, "spawn_moving_danger", ["Evil Goog Enemy", 525, 0, 525, 700, 1]],
	[7450, "spawn_moving_danger", ["Evil Goog Enemy", 525, 0, 550, 700, 1]],
	[7600, "spawn_moving_danger", ["Evil Goog Enemy", 525, 0, 575, 700, 1]],
	[7750, "spawn_moving_danger", ["Evil Goog Enemy", 525, 0, 600, 700, 1]],
	[8050, "spawn_moving_danger", ["Evil Goog Enemy", 0, 350, 1200, 350, 0.5]],
	[8050, "spawn_moving_danger", ["Evil Goog Enemy", 1200, 350, 0, 350, 0.5]],
	[8420, "spawn_moving_danger", ["Evil Goog Enemy", 0, 350, 1200, 350, 0.5]],
	[8420, "spawn_moving_danger", ["Evil Goog Enemy", 1200, 350, 0, 350, 0.5]],
	[8950, "spawn_moving_danger", ["Evil Goog Enemy", 525, 0, 575, 700, 1]],
	[9250, "spawn_moving_danger", ["Evil Goog Enemy", 0, 0, 999, 700, 1]],
	[9730, "spawn_moving_danger", ["Evil Goog Enemy", 100, 100, 999, 999, 1]],
	[10130, "spawn_moving_danger", ["Evil Goog Enemy", 100, 100, 999, 999, 1]],
	[10530, "spawn_moving_danger", ["Evil Goog Enemy", 300, 0, 300, 999, 1]],
	[11050, "spawn_moving_danger", ["Evil Goog Enemy", 200, 0, 999, 999, 1]],
	[11840, "spawn_moving_danger", ["Evil Goog Enemy", 300, 0, 999, 999, 1]],
	[12240, "spawn_moving_danger", ["Evil Goog Enemy", 400, 0, 999, 999, 1]],
	[12630, "spawn_moving_danger", ["Evil Goog Enemy", 500, 0, 999, 999, 1]],
	[13150, "spawn_moving_danger", ["Evil Goog Enemy", 200, 650, 200, 0, 1]],
	[13680, "spawn_moving_danger", ["Evil Goog Enemy", 400, 650, 400, 0, 1]],
	[14340, "spawn_moving_danger", ["Evil Goog Enemy", 600, 650, 600, 0, 1]],
	[14750, "spawn_moving_danger", ["Evil Goog Enemy", 1250, 0, 0, 500, 1]],
	[15260, "spawn_moving_danger", ["Evil Goog Enemy", 500, 650, 0, 500, 1]],
	[15560, "spawn_moving_danger", ["Evil Goog Enemy", 1250, 0, 0, 500, 1]],
	[16050, "spawn_moving_danger", ["Evil Goog Enemy", 500, 650, 0, 500, 1]],
	[16450, "spawn_moving_danger", ["Evil Goog Enemy", 0, 400, 1200, 400, 1]],
	[16850, "spawn_moving_danger", ["Evil Goog Enemy", 500, 0, 700, 700, 1]],
	[17360, "spawn_moving_danger", ["Evil Goog Enemy", 750, 650, 1000, -50, 1]],
	[18160, "spawn_moving_danger", ["Evil Goog Enemy", 0, 700, 1200, 530, 1]],
	[18550, "spawn_moving_danger", ["Evil Goog Enemy", -100, 500, 1130, 0, 1]],
	[18950, "spawn_moving_danger", ["Evil Goog Enemy", 1180, 250, -50, 400, 1]],
	[19470, "spawn_moving_danger", ["Evil Goog Enemy", -20, 390, 1200, 340, 1]],
	[20270, "spawn_moving_danger", ["Evil Goog Enemy", -30, 370, 300, 739, 1]],
	[20650, "spawn_moving_danger", ["Evil Goog Enemy", 1250, 0, -90, 270, 1]],
	[21050, "spawn_moving_danger", ["Evil Goog Enemy", 1250, 250, -70, 300, 1]],
	[21580, "spawn_moving_danger", ["Evil Goog Enemy", 1250, 426, 249, -90, 1]],
	[22110, "spawn_moving_danger", ["Evil Goog Enemy", 1250, 250, -70, 300, 1]],
	[22630, "spawn_moving_danger", ["Evil Goog Enemy", -100, 300, 900, -200, 1]],
	[23150, "spawn_moving_danger", ["Evil Goog Enemy", -50, 430, 250, 700, 1]],
	[23150, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[23680, "spawn_moving_danger", ["Evil Goog Enemy", 1250, 0, 0, 500, 1, true]],
	[23680, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[24500, "spawn_moving_danger", ["Evil Goog Enemy", 0, 650, 1250, 0, 1, true]],
	[24500, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[24890, "spawn_moving_danger", ["Evil Goog Enemy", 1250, 0, 0, 500, 1, true]],
	[24890, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[25290, "spawn_moving_danger", ["Evil Goog Enemy", 0, 650, 1250, 0, 1, true]],
	[25290, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[25810, "spawn_moving_danger", ["Evil Goog Enemy", 170, 900, 900, -250, 1, true]],
	[25810, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[26580, "spawn_moving_danger", ["Evil Goog Enemy", -25, 720, 1135, -100, 1, true]],
	[26580, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[26980, "spawn_moving_danger", ["Evil Goog Enemy", -115, 500, 1270, 220, 1, true]],
	[26980, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[27390, "spawn_moving_danger", ["Evil Goog Enemy", -130, 400, 1270, 400, 1, true]],
	[27390, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[27890, "spawn_moving_danger", ["Evil Goog Enemy", -50, -30, 1200, 700, 1, true]],
	[27890, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[28680, "spawn_moving_danger", ["Evil Goog Enemy", 145, -200, 1050, 850, 1, true]],
	[28680, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[29080, "spawn_moving_danger", ["Evil Goog Enemy", 300, -325, 800, 1000, 1, true]],
	[29080, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[29500, "spawn_moving_danger", ["Evil Goog Enemy", 600, 1000, 460, -370, 1, true]],
	[29500, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[29990, "spawn_moving_danger", ["Evil Goog Enemy", 1250, 0, 0, 500, 1, true]],
	[29990, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[30800, "spawn_moving_danger", ["Evil Goog Enemy", 0, 650, 1250, 0, 1, true]],
	[30800, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[31180, "spawn_moving_danger", ["Evil Goog Enemy", 170, 900, 900, -250, 1, true]],
	[31180, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[31580, "spawn_moving_danger", ["Evil Goog Enemy", -25, 720, 1135, -100, 1, true]],
	[31580, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[32100, "spawn_moving_danger", ["Evil Goog Enemy", -115, 500, 1270, 220, 1, true]],
	[32100, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[32900, "spawn_moving_danger", ["Evil Goog Enemy", 1250, 0, 0, 500, 1, true]],
	[32900, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[33290, "spawn_moving_danger", ["Evil Goog Enemy", -130, 400, 1270, 400, 1, true]],
	[33290, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[33690, "spawn_moving_danger", ["Evil Goog Enemy", -50, -30, 1200, 700, 1, true]],
	[33690, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[34210, "spawn_moving_danger", ["Evil Goog Enemy", 145, -200, 1050, 850, 1, true]],
	[34210, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[35000, "spawn_moving_danger", ["Evil Goog Enemy", 300, -325, 800, 1000, 1, true]],
	[35000, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[35390, "spawn_moving_danger", ["Evil Goog Enemy", 600, 1000, 460, -370, 1, true]],
	[35390, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[35810, "spawn_moving_danger", ["Evil Goog Enemy", 1250, 0, 0, 500, 1, true]],
	[35810, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[36350, "spawn_moving_danger", ["Evil Goog Enemy", 0, 650, 1250, 0, 1, true]],
	[36350, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[37130, "spawn_moving_danger", ["Evil Goog Enemy", 170, 900, 900, -250, 1, true]],
	[37130, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[37530, "spawn_moving_danger", ["Evil Goog Enemy", -25, 720, 1135, -100, 1, true]],
	[37530, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[37910, "spawn_moving_danger", ["Evil Goog Enemy", -115, 500, 1270, 220, 1, true]],
	[37910, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[38480, "spawn_moving_danger", ["Evil Goog Enemy", 1250, 0, 0, 500, 1, true]],
	[38480, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[39240, "spawn_moving_danger", ["Evil Goog Enemy", -130, 400, 1270, 400, 1, true]],
	[39240, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[39620, "spawn_moving_danger", ["Evil Goog Enemy", -50, -30, 1200, 700, 1, true]],
	[39620, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[40020, "spawn_moving_danger", ["Evil Goog Enemy", 145, -200, 1050, 850, 1, true]],
	[40020, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[41310, "spawn_moving_danger", ["Evil Goog Enemy", 300, -325, 800, 1000, 1, true]],
	[41310, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[41710, "spawn_moving_danger", ["Evil Goog Enemy", 600, 1000, 460, -370, 1, true]],
	[41710, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[42120, "spawn_moving_danger", ["Evil Goog Enemy", 1250, 0, 0, 500, 1, true]],
	[42120, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[42630, "spawn_moving_danger", ["Evil Goog Enemy", 0, 650, 1250, 0, 1, true]],
	[42630, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[43420, "spawn_moving_danger", ["Evil Goog Enemy", 170, 900, 900, -250, 1, true]],
	[43420, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[43850, "spawn_moving_danger", ["Evil Goog Enemy", -25, 720, 1135, -100, 1, true]],
	[43850, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[44230, "spawn_moving_danger", ["Evil Goog Enemy", -115, 500, 1270, 220, 1, true]],
	[44230, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[44740, "spawn_moving_danger", ["Evil Goog Enemy", 1250, 0, 0, 500, 1, true]],
	[44740, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[45530, "spawn_moving_danger", ["Evil Goog Enemy", -130, 400, 1270, 400, 1, true]],
	[45530, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[45920, "spawn_moving_danger", ["Evil Goog Enemy", -50, -30, 1200, 700, 1, true]],
	[45920, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[46340, "spawn_moving_danger", ["Evil Goog Enemy", 145, -200, 1050, 850, 1, true]],
	[46340, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[46830, "spawn_moving_danger", ["Evil Goog Enemy", 300, -325, 800, 1000, 1, true]],
	[46830, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[47640, "spawn_moving_danger", ["Evil Goog Enemy", 600, 1000, 600, -1000, 1, true]],
	[47640, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[48030, "spawn_moving_danger", ["Evil Goog Enemy", 500, 1000, 500, -1000, 1, true]],
	[48030, "spawn_moving_danger", ["Evil Goog Enemy", 700, 1000, 700, -1000, 1, true]],
	[48030, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[48450, "spawn_moving_danger", ["Evil Goog Enemy", 400, 1000, 400, -1000, 1, true]],
	[48450, "spawn_moving_danger", ["Evil Goog Enemy", 800, 1000, 800, -1000, 1, true]],
	[48450, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[49740, "spawn_moving_danger", ["Evil Goog Enemy", -130, 400, 1270, 400, 1, true]],
	[49740, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[50160, "spawn_moving_danger", ["Evil Goog Enemy", -130, 400, 1270, 400, 1, true]],
	[50160, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[50540, "spawn_moving_danger", ["Evil Goog Enemy", -50, -30, 1200, 700, 1, true]],
	[50540, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[51050, "spawn_moving_danger", ["Evil Goog Enemy", -50, -30, 1200, 700, 1, true]],
	[51050, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[51840, "spawn_moving_danger", ["Evil Goog Enemy", 1250, 0, 0, 500, 1, true]],
	[51840, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[52240, "spawn_moving_danger", ["Evil Goog Enemy", 600, 1000, 460, -370, 1, true]],
	[52240, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[52660, "spawn_moving_danger", ["Evil Goog Enemy", -130, 400, 1270, 400, 1, true]],
	[52660, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[53150, "spawn_moving_danger", ["Evil Goog Enemy", -130, 400, 1270, 400, 1, true]],
	[53150, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[53970, "spawn_moving_danger", ["Evil Goog Enemy", 300, -325, 800, 1000, 1, true]],
	[53970, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[54370, "spawn_moving_danger", ["Evil Goog Enemy", -130, 400, 1270, 400, 1, true]],
	[54370, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[54760, "spawn_moving_danger", ["Evil Goog Enemy", -25, 720, 1135, -100, 1, true]],
	[54760, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[55320, "spawn_moving_danger", ["Evil Goog Enemy", -50, -30, 1200, 700, 1, true]],
	[55320, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[56050, "spawn_moving_danger", ["Evil Goog Enemy", 300, -325, 800, 1000, 1, true]],
	[56050, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[56470, "spawn_moving_danger", ["Evil Goog Enemy", -115, 500, 1270, 220, 1, true]],
	[56470, "change_bg", [Color(0.506, 0.0, 0.0, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[56860, "spawn_moving_danger", ["Evil Goog Enemy", 1148, -93, -8, 115, 1]],
	[57360, "spawn_moving_danger", ["Evil Goog Enemy", 1241, 535, -15, 105, 1]],
	[57750, "spawn_moving_danger", ["Evil Goog Enemy", 643, 677, 813, -68, 1]],
	[58150, "spawn_moving_danger", ["Evil Goog Enemy", 1162, 465, -18, 338, 1]],
	[58550, "spawn_moving_danger", ["Evil Goog Enemy", 467, -98, -98, 283, 1]],
	[58950, "spawn_moving_danger", ["Evil Goog Enemy", -30, 38, 1052, 684, 1]],
	[59470, "spawn_moving_danger", ["Evil Goog Enemy", 630, 721, 1027, -11, 1]],
	[59860, "spawn_moving_danger", ["Evil Goog Enemy", 379, -18, 217, 715, 1]],
	[60260, "spawn_moving_danger", ["Evil Goog Enemy", 864, -89, 1202, 599, 1]],
	[60660, "spawn_moving_danger", ["Evil Goog Enemy", -36, 524, 1233, 105, 1]],
	[61060, "spawn_moving_danger", ["Evil Goog Enemy", 1102, -73, 224, 730, 1]],
	[61570, "spawn_moving_danger", ["Evil Goog Enemy", 667, 717, -39, 455, 1]],
	[61970, "spawn_moving_danger", ["Evil Goog Enemy", 1239, 516, 595, -90, 1]],
	[62370, "spawn_moving_danger", ["Evil Goog Enemy", 1204, 393, 772, 681, 1]],
	[62760, "spawn_moving_danger", ["Evil Goog Enemy", -64, 100, 920, 652, 1]],
	[63160, "spawn_moving_danger", ["Evil Goog Enemy", 933, -23, 1231, 629, 1]],
	[63680, "spawn_moving_danger", ["Evil Goog Enemy", -2, 506, 1119, -34, 1]],
	[64210, "spawn_moving_danger", ["Evil Goog Enemy", 130, -63, 1191, 165, 1]],
	[64860, "spawn_moving_danger", ["Evil Goog Enemy", 409, 684, 1239, 497, 1]],
	[65270, "spawn_moving_danger", ["Evil Goog Enemy", -79, 108, 1238, 61, 1]],
	[65780, "spawn_moving_danger", ["Evil Goog Enemy", 1230, 569, 861, -27, 1]],
	[66180, "spawn_moving_danger", ["Evil Goog Enemy", 1185, 572, -11, 258, 1]],
	[66580, "spawn_moving_danger", ["Evil Goog Enemy", -4, 193, 1212, 20, 1]],
	[66970, "spawn_moving_danger", ["Evil Goog Enemy", -12, 338, 1188, 125, 1]],
	[67370, "spawn_moving_danger", ["Evil Goog Enemy", 1065, -4, 650, 658, 1]],
	[67890, "spawn_moving_danger", ["Evil Goog Enemy", 597, -55, 1158, 447, 1]],
	[68680, "spawn_moving_danger", ["Evil Goog Enemy", 439, -28, 603, 723, 1]],
	[69080, "spawn_moving_danger", ["Evil Goog Enemy", 291, 712, 1180, 124, 1]],
	[69470, "spawn_moving_danger", ["Evil Goog Enemy", 449, 750, 256, -77, 1]],
	[70000, "spawn_moving_danger", ["Evil Goog Enemy", 731, -81, 10, 691, 1]],
	[70790, "spawn_moving_danger", ["Evil Goog Enemy", 1166, 121, 76, -84, 1]],
	[71190, "spawn_moving_danger", ["Evil Goog Enemy", 1202, 368, 476, -29, 1]],
	[71580, "spawn_moving_danger", ["Evil Goog Enemy", 617, -18, 240, 695, 1]],
	[72100, "spawn_moving_danger", ["Evil Goog Enemy", 1226, 532, -74, 444, 1]],
	[72630, "spawn_moving_danger", ["Evil Goog Enemy", 304, 717, 1176, 385, 1]],
	[73150, "spawn_moving_danger", ["Evil Goog Enemy", 373, 654, 720, -80, 1]],
	[73680, "spawn_moving_danger", ["Evil Goog Enemy", 653, -26, 1153, 555, 1]],
	[74220, "spawn_moving_danger", ["Evil Goog Enemy", 374, -46, 1244, 490, 1]],
	[75000, "spawn_moving_danger", ["Evil Goog Enemy", 961, 742, 1117, -68, 1]],
	[75400, "spawn_moving_danger", ["Evil Goog Enemy", 784, 690, -77, 352, 1]],
	[75810, "spawn_moving_danger", ["Evil Goog Enemy", 836, -96, 353, 661, 1]],
	[76320, "spawn_moving_danger", ["Evil Goog Enemy", 886, 676, 1188, 275, 1]],
	[76860, "spawn_moving_danger", ["Evil Goog Enemy", 903, 681, 5, -22, 1]],
	[77500, "spawn_moving_danger", ["Evil Goog Enemy", -9, 554, 1136, -50, 1]],
	[77910, "spawn_moving_danger", ["Evil Goog Enemy", 667, -85, 1214, 477, 1]],
	[78420, "spawn_moving_danger", ["Evil Goog Enemy", 327, 668, 626, -36, 1]],
	[79210, "spawn_moving_danger", ["Evil Goog Enemy", 400, 733, -78, 46, 1]],
	[79600, "spawn_moving_danger", ["Evil Goog Enemy", 632, 654, -10, 377, 1]],
	[80030, "spawn_moving_danger", ["Evil Goog Enemy", 192, -13, -29, 590, 1]],
	[80540, "spawn_moving_danger", ["Evil Goog Enemy", -66, 510, 758, -88, 1]],
	[81080, "spawn_moving_danger", ["Evil Goog Enemy", -52, 551, 1217, 161, 1]],
	[81580, "spawn_moving_danger", ["Evil Goog Enemy", 128, -99, 1203, 263, 1]],
	[82120, "spawn_moving_danger", ["Evil Goog Enemy", 618, -97, 869, 725, 1]],
	[82630, "spawn_moving_danger", ["Evil Goog Enemy", 244, 738, 1198, 513, 1]],
	[83190, "spawn_moving_danger", ["Evil Goog Enemy", 276, 720, 456, -40, 1]],
	[83820, "spawn_moving_danger", ["Evil Goog Enemy", 1060, 654, 459, -2, 1]],
	[84220, "spawn_moving_danger", ["Evil Goog Enemy", 1138, -84, 207, 684, 1]],
	[84740, "spawn_moving_danger", ["Evil Goog Enemy", 1141, -32, -63, 294, 1]],
	[85520, "spawn_moving_danger", ["Evil Goog Enemy", 185, -35, 1217, 610, 1]],
	[85920, "spawn_moving_danger", ["Evil Goog Enemy", 1174, 399, 558, -46, 1]],
	[86340, "spawn_moving_danger", ["Evil Goog Enemy", 411, -53, 1196, 470, 1]],
	[86840, "spawn_moving_danger", ["Evil Goog Enemy", -60, 468, 1163, 448, 1]],
	[87640, "spawn_moving_danger", ["Evil Goog Enemy", 854, -9, -34, 603, 1]],
	[88400, "change_bg", [Color(0.0, 0.738, 0.395, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[88700, "change_bg", [Color(0.0, 0.738, 0.395, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[89100, "change_bg", [Color(0.0, 0.738, 0.395, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[89500, "change_bg", [Color(0.0, 0.738, 0.395, 1.0), Color(0,0,0,1), 0.3, 0.01]],
	[89000, "dialogue", "ok fine you win lol"],
	[89000, "dialogue_visible", true],
	[90520, "dialogue_visible", false],
	[90520, "win"]
]

var yupivewarnedaboutthat = []

func _ready() -> void:
	RenderingServer.set_default_clear_color(Color(0.0, 0.0, 0.0, 1.0))

func sleep_then_delete(time: float, obj: Node2D) -> void:
	await get_tree().create_timer(time).timeout
	obj.queue_free()
	return

func fade_bg_colour(from: Color, to: Color, timesec: float, stepsec: float) -> void:
	print("fading")
	for i in range(int(timesec / stepsec) + 1):
		var colour = from.lerp(to, float(i) / (timesec / stepsec))
		RenderingServer.set_default_clear_color(colour)
		await get_tree().create_timer(stepsec).timeout

func make_evil_thing(from: Vector2, to: Vector2, timesec: float) -> void:
	var enemy = get_node("Evil Goog Enemy").duplicate()
	add_child(enemy)
	enemy.position = from
	var tween = get_tree().create_tween()
	tween.tween_property(enemy, "position", to, timesec)
	await get_tree().create_timer(timesec).timeout
	enemy.queue_free()

var started_at = Time.get_ticks_msec()

func _process(delta: float) -> void:
	var now = Time.get_ticks_msec() - started_at
	var sometimeinthefuture = now + 500
	for thingtodo in schedule:
		if sometimeinthefuture >= thingtodo[0] and thingtodo[1] == "spawn_moving_danger" and thingtodo[0] not in yupivewarnedaboutthat: # there is 1000‰ a better way to do this
			print("goog")
			var warning = get_node("Warning Line").duplicate()
			add_child(warning)
			warning.points = [Vector2(thingtodo[2][1], thingtodo[2][2]), Vector2(thingtodo[2][3], thingtodo[2][4])]
			sleep_then_delete(thingtodo[2][5], warning)
			yupivewarnedaboutthat.append(thingtodo[0])
		if now >= thingtodo[0]:
			schedule.erase(thingtodo)
			match thingtodo[1]:
				"dialogue_visible":
					$"Player/Camera2D/speech".visible = thingtodo[2]
					$"Player/Camera2D/speech/RichTextLabel".visible = thingtodo[2]
				"dialogue":
					$"Player/Camera2D/speech/RichTextLabel".text = thingtodo[2]
				"spawn_moving_danger":
					var from = Vector2(thingtodo[2][1], thingtodo[2][2])
					var to = Vector2(thingtodo[2][3], thingtodo[2][4])
					make_evil_thing(from, to, thingtodo[2][5])
					if len(thingtodo[2]) == 7 and thingtodo[2][6] is bool and thingtodo[2][6] == true:
						make_evil_thing(to, from, thingtodo[2][5])
				"change_bg":
					fade_bg_colour(thingtodo[2][0], thingtodo[2][1], thingtodo[2][2], thingtodo[2][3])
				"win":
					$"Player".win()
				_:
					print("Invalid argument at ", thingtodo[0] )
