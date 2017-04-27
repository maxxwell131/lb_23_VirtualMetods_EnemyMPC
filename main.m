//
//  main.m
//  lb_23_VirtualMetods_EnemyMPC
//
//  Created by maxxwell131 on 4/27/17.
//  Copyright © 2017 maxxwell131. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "gameexception.h"
#import "enemynpc.h"
#import "ArmoredEnemyNPC.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
srand((unsigned int) time(NULL));

@try{
    //EnemyNPC *E1 = [[EnemyNPC alloc]initWithAmmo:10];
    //EnemyNPC *E2 = [[EnemyNPC alloc]initWithAmmo:10];
    
    ArmoredEnemyNPC *E1 =
    [[ArmoredEnemyNPC alloc]initWithArmor:20 armor:15];
    
    ArmoredEnemyNPC *E2 =
    [[ArmoredEnemyNPC alloc]initWithArmor:20 armor:15];
    
    while (true) {
        int a;
        NSLog(@"1 - Ход\n2-Выход из игры");
        scanf("%i", &a);
        
        if (a == 2){
            break;
        }
        
        int d = [E1 attack];
        [E2 receiveDamage: d];
        
        d = [E2 attack];
        [E1 receiveDamage: d];
        
        NSLog(@"E1 => %@", E1);
        NSLog(@"E2 => %@", E2);
    }
}
@catch(NSException *err){
    if ([err.name isEqualToString: @"MyInvalidArgumentException"]){
        //----------Неправильный параметр ----------
        NSLog(@"Ошибка! Неправильный параметр: %@", err.reason);
    }
    if ([err.name isEqualToString: @"MyEnemyHealtException"])
    {
        //----------Закончилось здоровте у персонажа-------
        NSLog(@"Конец игры : %@", err.reason);
    }else{
        //----------Неизвесная ошибка-------------
        NSLog(@"Ошибка: %@", err.name);
        NSLog(@"Причина: %@", err.reason);
    }
}
    }
        return 0;
    }
