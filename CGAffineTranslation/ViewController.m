//
//  ViewController.m
//  CGAffineTranslation
//
//  Created by Apple on 15/9/14.
//  Copyright (c) 2015年 zf. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIButton *btn;
    UIView *v;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    btn=[[UIButton alloc] initWithFrame:CGRectMake(50, 50, 80, 50)];
    btn.backgroundColor=[UIColor redColor];
    [btn setTitle:@"展示动画" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(tapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    v=[[UIView alloc] initWithFrame:CGRectMake(150, 150, 100, 100)];
    v.backgroundColor=[UIColor purpleColor];
    [self.view addSubview:v];
}
-(void)tapped:(UIButton *)sender
{
    
   //  1.旋转动画
//    
//    CGAffineTransform transform=CGAffineTransformRotate(v.transform, M_PI*0.2);
//    
//    [UIView animateWithDuration:0.1 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
//        v.transform = transform;
//    } completion:^(BOOL finished) {
//        
//    }];
   
    
    //  2.缩放动画
    
     CGAffineTransform transform=CGAffineTransformScale(v.transform,0.5, 0.5);
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
                v.transform = transform;
            } completion:^(BOOL finished) {
        
            }];
    
    
    //  3.平移动画
    
    //不停的按 也只会动一次
        //btn.transform=CGAffineTransformMakeTranslation(0,50);
    
        //btn.transform = CGAffineTransformTranslate(CGAffineTransformIdentity, 100, 100);
    
    
    // 不停的按  不停的动
        //btn.transform =CGAffineTransformTranslate(btn.transform, 200, 200);
    
}
    
/*********动画结构体介绍**************/

/*CGAffineTransformMakeTranslation : 每次都是以最初位置的中心点为参考
 
 CGAffineTransformTranslate 每次都是以传入的transform为参照（既 有叠加效果）
 
 CGAffineTransformIdentity  最初位置的中心点*/



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
