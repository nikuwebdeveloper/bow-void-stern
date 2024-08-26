vsp = 0
vspMax = 2

hsp = 0
hspMax = 2

acc = 0.2
dcc = 0.1

timerBubble = 0
timerBubbleMax = 30
timerBubbleMaxInitial = timerBubbleMax

dir = "none"

sword = instance_create_depth(x,y,depth+1, obj_player_sword)
electricity = instance_create_depth(x,y,depth-1, obj_player_electricity)
grabber = instance_create_depth(x,y,depth-1, obj_player_grabber)
electricity.visible = false

medicine = false
medicineBubble = true

medicineGive = true

lifebar = instance_create_depth(0,0,depth - 1000,obj_lifebar)

hpCurrent = 100
hpMax = 100

toggleGrab = true