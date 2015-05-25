//
//  ViewController.m
//  gradient
//
//  Created by Yongjia Liu on 14-3-27.
//  Copyright (c) 2014年 Yongjia Liu. All rights reserved.
//

#import "ViewController.h"
#import "GradientSlider.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    CGRect rect=[UIScreen mainScreen].bounds;
    GradientSlider *view=[[GradientSlider alloc]initWithFrame:rect];
    [self.view addSubview:view];
    //[self.view setNeedsDisplay];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
