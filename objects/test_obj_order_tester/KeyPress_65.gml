
testOrder = instance_create_layer(100,100,"cutscene",obj_move_order);
testOrder.define_move_order(2,0,30);
testActor.recieve_move_order(testOrder)

instance_destroy(testOrder);