persistent = true
input = instance_create_depth(0,0,0,obj_input)
input.persistent = true
switchGrid = true
switchPathAvoid = true

if room == room_initial
{
	room = room_gameplay
}

switchLayerRead = true

//weapons = [
//{
//  name: "stick",
//  power: 5
//},
//{
//  name: "dagger",
//  power: 30
//},
//{
//  name: "claw hammer",
//  power: 50
//},
//{
//  name: "sword",
//  power: 100
//},
//];

//show_debug_log(true)
//show_debug_overlay(true, false,2,1)