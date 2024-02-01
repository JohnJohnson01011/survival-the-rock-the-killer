/// @description Death

image_xscale -= 0.1
image_yscale -= 0.1
image_alpha += 0.05

if image_xscale <= 0 {instance_destroy()} else {alarm_set(0, 1)}