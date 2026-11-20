extends CharacterBody3D
## 《闪身步30招：智斗侏罗纪》 Godot 4.3 30-Move Martial Arts & Perfect Dodge Controller

@export var move_speed: float = 15.5
var iframe_timer: float = 0.0
var witch_time_timer: float = 0.0
var combo_count: int = 0

const MOVES_30 := [
	"01.闪身步", "02.浪子踢球", "03.狗熊哆嗦毛", "04.拔泥步", "05.野鸡溜",
	"06.游场碎步", "07.矮子步", "08.车水步", "09.走梗平衡步", "10.盘根拧腰步",
	"11.猴子扳桩", "12.扁担闪", "13.十字靠身", "14.蛤蟆洼", "15.小儿骑竹马",
	"16.燕子三抄水", "17.喜鹊登枝", "18.拐子步侧踹", "19.磨盘转", "20.鲤鱼打挺",
	"21.大鹏展翅", "22.旱船晃", "23.大花场连环踢", "24.仙人指路", "25.叶底藏花",
	"26.白鹤亮翅", "27.黑虎掏心", "28.金鸡独立", "29.乌龙绞柱", "30.三十路闪身万象归宗"
]

func execute_move(move_index: int, nearby_dino_winding_up: bool = false) -> void:
	var move_name: String = MOVES_30[clampi(move_index, 0, MOVES_30.size() - 1)]
	iframe_timer = 0.55
	if nearby_dino_winding_up:
		witch_time_timer = 1.4
		Engine.time_scale = 0.28
		combo_count += 1
		print("[极限闪身子弹时间!] 招式: ", move_name, " 连击 x", combo_count)
