//
//  ViewController.m
//  layer的形变
//
//  Created by 章芝源 on 16/1/10.
//  Copyright © 2016年 ZZY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic, strong)UIView *viewx;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIView *viewx = [[UIView alloc]init];
    viewx.backgroundColor = [UIColor redColor];
    self.viewx = viewx;
    viewx.frame = CGRectMake(100, 100, 200, 200);
    [self.view addSubview:viewx];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{

    
    
    [UIView animateWithDuration:1.0 animations:^{
            //平移
        self.viewx.layer.transform = CATransform3DMakeTranslation(0, 300, 1);
        //缩放
//        self.viewx.layer.transform = CATransform3DMakeScale(0.5, 0.5, 1);
        
        //围绕Z轴进行旋转, 进行旋转
//        self.viewx.layer.transform = CATransform3DMakeRotation(M_PI_2, 0, 0, 1);
        ///围绕x轴进行旋转
//      self.viewx.layer.transform = CATransform3DMakeRotation(M_PI, 1, 0, 0);
        ///围绕y轴进行旋转
//        self.viewx.layer.transform = CATransform3DMakeRotation(M_PI,1, 1, 1);
        ///围绕中心进行旋转
//        self.viewx.layer.transform = CATransform3DMakeRotation(M_PI,1, 1, 1);
    }];
    
    NSLog(@"%@", self.viewx);
     
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
