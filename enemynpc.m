//
//  Igra.m
//  22_urok
//
//  Created by Master on 20.01.16.
//  Copyright (c) 2016 Master. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "enemynpc.h"
//#import "gameexception.h"

//NSString *_MyInvalidArgumentException = @"MyInvalidArgumentException";
//NSString *_MyEnemyHealthException     = @"MyEnemyHealtException";

@implementation EnemyNPC

-(id) initWithAmmo:(int)pAmmo{
    if (pAmmo < 0){
        @throw [NSException exceptionWithName : @"MyInvalidArgumentException" reason:@"Количество патронов меньше нуля" userInfo:nil];
    }
    self=[super init];
    if(self != nil){
        self->health = 100;
        self->pistolAmmo = pAmmo;
    }
    return self;
}

-(void) receiveDamage:(int)damage{
    self->health -=damage;
    if (self->health <= 0){
        @throw [NSException exceptionWithName:
                                    @"MyEnemyHealtException"
                                    reason:@"Закончилось здоровье персонаж убит"
                                    userInfo:nil];
    }
}

-(int) attack{
    if(self->pistolAmmo > 0){
        self->pistolAmmo--;
        int damage = rand()%20;
        return damage;
    }else{
        return 0;
    }
}

- (NSString *)description
{
    return [NSString stringWithFormat:
                            @"EnemyNPC Health: %i, Pistol Ammo: %i",
                            self->health,
                            self->pistolAmmo];
}

@end