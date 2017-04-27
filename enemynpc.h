//
//  Igra.h
//  22_urok
//
//  Created by Master on 20.01.16.
//  Copyright (c) 2016 Master. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EnemyNPC : NSObject
{
    int health;     //здоровье
    int pistolAmmo; //количество пистолетных патронов
}

-(id)           initWithAmmo    : (int) pAmmo;
-(void)         receiveDamage   : (int) damage;
-(int)          attack; //количество урона который нанес игроку
-(NSString *)   description;

@end

