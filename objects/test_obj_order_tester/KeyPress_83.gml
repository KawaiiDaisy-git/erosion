testOrder = instance_create_layer(100,100,"cutscene",obj_animation_order);

testOrder.define_animation_order(10,19,spr_default_sprite);
testActor.recieve_animation_order(testOrder);