//
//  FlyweightView.m
//  DesignPatternsCollections
//
//  Created by 马浩哲 on 16/11/24.
//  Copyright © 2016年 junanxin. All rights reserved.
//

#import "FlyweightView.h"
#import "ExtrinsicFlowerStateModel.h"

@implementation FlyweightView

- (void)drawRect:(CGRect)rect
{
    
    /*
     * 使用对象存储的情况
     for (ExtrinsicFlowerStateModel *obj in _flowerList) {
     UIView *flowerView = obj.flowerView;
     CGRect area = obj.area;
     [flowerView drawRect:area];
     }
     */
    
    for (UIView *obj in _flowerList) {
        UIView *flowerView = obj;
        //设置花朵的显示位置和大小
        CGFloat x = (arc4random()%(NSInteger)kDeviceWidth);
        CGFloat y = (arc4random()%(NSInteger)kDeviceHeight);
        NSInteger minSize = 10;
        NSInteger maxSize = 50;
        CGFloat size = (arc4random() % (maxSize - minSize + 1)) + minSize;
        CGRect area = CGRectMake(x, y, size, size);
        
        [flowerView drawRect:area];
    }
}


@end
