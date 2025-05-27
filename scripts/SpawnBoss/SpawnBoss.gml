function SpawnBoss(SpawnType){
	switch (SpawnType)
		{
			case 0 : instance_create_layer(oPlayer.x, oPlayer.y, "Enemy", oBossFront);
			break;
			case 1 : instance_create_layer(x, y, "Enemy", oBossStraight);
			break;
		}
}