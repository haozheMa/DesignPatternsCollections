//
//  AttackHandler.h
//  DesignPatternsCollections
//
//  Created by 马浩哲 on 16/11/23.
//  Copyright © 2016年 junanxin. All rights reserved.
//防御管理父类

#import "Attack.h"

@interface AttackHandler : NSObject

{
    @private
    AttackHandler *nextAttackHandler_;
}

@property (nonatomic, retain) AttackHandler *nextAttackHandler;

-(void)handleAttack:(Attack *)attack;

@end
