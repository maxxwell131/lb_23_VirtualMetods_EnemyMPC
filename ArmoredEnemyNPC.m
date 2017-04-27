//
//  ArmoredEnemyNPC.m
//  22_urok
//
//  Created by Master on 20.01.16.
//  Copyright (c) 2016 Master. All rights reserved.
//

#import "ArmoredEnemyNPC.h"
//#import "gameexception.h"

@implementation ArmoredEnemyNPC

-(id)initWithArmor:(int)pAmmo armor:(int)a{
    if (a <= 0 || a > 20){
        @throw [NSException exceptionWithName:
                                       //MyInvalidArgumentException
                                       @"MyInvalidArgumentException"
                                       reason:@"Бронь не может быть меньше 0"
                                       userInfo:nil];
    }
    
    self = [super initWithAmmo:pAmmo];
    if (self != nil){
        self->armor = a;
    }
    return self;
}

-(void) receiveDamage:(int)damage{
    if (self->armor > 0){
        self->armor--;
        damage = damage / 2;
    }
    
    [super receiveDamage:damage];
}

-(NSString *) description{
    //return [NSString stringWithFormat:@"ArmoredEnemyNPC Healt: %i, Ammo: %i, Armor: %i",
    //                self->health,
    //                self->pistolAmmo,
    //                self->armor];
    
    return [NSString stringWithFormat:@"%@, Armor: %i",
            [super description],
            self->armor];
}

@end
