//
//  ViewController.m
//  DZ_Scale_Circle
//
//  Created by rongxun02 on 15/12/9.
//  Copyright © 2015年 DongZe. All rights reserved.
//

#import "ViewController.h"
#import "DZ_ScaleCircle.h"
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setCircle];
}

- (void)setCircle{
    
    DZ_ScaleCircle *circle = [[DZ_ScaleCircle alloc] initWithFrame:CGRectMake(30, 94,SCREEN_WIDTH-60 , SCREEN_WIDTH-60)];
    
    //  四个区域的颜色
    circle.firstColor = [UIColor redColor];
    circle.secondColor = [UIColor yellowColor];
//    circle.thirdColor = [UIColor blueColor];
//    circle.fourthColor = [UIColor cyanColor];
    //  四个区域所占的比例
    circle.firstScale = 0.5;
    circle.secondScale = 0.5;
//    circle.thirdScale = 0.3;
//    circle.fourthScale = 0.5;
    //  线宽
    circle.lineWith = 50;
    //  未填充颜色
    circle.unfillColor = [UIColor lightGrayColor];
    //  动画时长
    circle.animation_time = 6.0;
    //  中心标签的显示数值
    circle.centerLable.text = @"自己填写";
    
    [self.view addSubview:circle];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
