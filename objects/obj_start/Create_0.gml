var shapes = [1, 2, 3, 4]
var taken = 0
var index = 0
var shape

randomize()

for (var i = 1; i < 5; ++i) {
	index = irandom(array_length(shapes) - 1)
	taken = shapes[index]
	array_delete(shapes, index, 1)
	
	shape = instance_create_layer(32 + ((i - 1) * 160), 480, "Instances", obj_captcha)
	shape.image_xscale = 3
	shape.image_yscale = 3
	shape.image_index = taken
}