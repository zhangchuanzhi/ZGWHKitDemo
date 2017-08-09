//
//  ViewController.m
//  ZGWHKitDemo
//
//  Created by offcn_zcz32036 on 2017/8/9.
//  Copyright © 2017年 cn. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn=[UIButton wh_buttonWithTitle:@"点我" backColor:[UIColor cyanColor] backImageName:nil titleColor:[UIColor blackColor] fontSize:14 frame:CGRectMake(40, 64+10, 120, 30) cornerRadius:15];
    [self.view addSubview:btn];
    [btn wh_addActionHandler:^{
        NSLog(@"按钮被点击了");
        [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];//这里只有normal状态正常显示
    }];
    UIImageView *imgView=[UIImageView wh_imageViewWithPNGImage:@"zg.jpg" frame:CGRectMake(CGRectGetMinX(btn.frame), CGRectGetMaxY(btn.frame)+10, CGRectGetWidth(btn.frame), CGRectGetWidth(btn.frame)*2/3)];
    [self.view addSubview:imgView];
    imgView.userInteractionEnabled=YES;
    [imgView wh_addTapActionWithBlock:^(UITapGestureRecognizer *gestureRecoginzer) {
        NSLog(@"图片被点击了");
    }];
    UIImage *img=[UIImage wh_GetRoundImagewithImage:[UIImage imageNamed:@"zg.jpg"]];
    img=[img blur];
    UIImageView *kaImgView=[[UIImageView alloc]initWithFrame:CGRectMake(40, CGRectGetMaxY(imgView.frame)+10, 200, 100)];
    kaImgView.image=img;
    [self.view addSubview:kaImgView];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
  
}


@end
