//
//  ArmoredEnemyNPC.h
//  22_urok
//
//  Created by Master on 20.01.16.
//  Copyright (c) 2016 Master. All rights reserved.
//

#import "enemynpc.h"

@interface ArmoredEnemyNPC : EnemyNPC
{
        int armor; // бронь
}
-(id) initWithArmor:(int)pAmmo armor:(int) a;
-(NSString *) description;

@end