//
//  GradientSlider.m
//  gradient
//
//  Created by Yongjia Liu on 14-3-27.
//  Copyright (c) 2014年 Yongjia Liu. All rights reserved.
//

#import "GradientSlider.h"
#define ToRad(deg) 		( (M_PI * (deg)) / 180.0 )
#define TB_LINE_WIDTH 40    

@implementation GradientSlider

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        radius=50;//[self setNeedsDisplay];// Initialization code
    }
    //[self setBackgroundColor:[UIColor whiteColor]];
    return self;
}

-(void)drawRect:(CGRect)rect
{
    CGContextRef context=UIGraphicsGetCurrentContext();
    
    CGFloat components[8]=
    {
        0.0,0.0,1.0,1.0,
        1.0,0.0,1.0,1.0
    };
    CGColorRef yellow=[[UIColor yellowColor] CGColor];
    CGColorSpaceRef baseSpace=CGColorSpaceCreateDeviceRGB();
    CGGradientRef gradient=CGGradientCreateWithColorComponents(baseSpace, components, NULL, 2);
    
    
    
    
    CGPoint startPoint=CGPointMake(0,0);
    CGPoint endPoint=CGPointMake(320, 0);
    
    CGColorSpaceRelease(baseSpace);
    baseSpace=NULL;
    
    CGContextDrawLinearGradient(context, gradient, startPoint, endPoint, 0);
    CGGradientRelease(gradient);
    
    gradient=NULL;
    //CGContextClearRect(context, self.bounds);
//    CGContextSetFillColorWithColor(context, yellow);
//    //CGContextFillRect(context, CGRectMake(0, 0, 100, 100));
//    
//    CGContextSetLineCap(context, kCGLineCapRound);
//    
//    CGContextSetLineWidth(context, 5.0);
//    CGContextBeginPath(context);
//    
//    CGContextMoveToPoint(context, 100, 200);
//    CGContextAddLineToPoint(context, 600, 200);
//    CGContextAddLineToPoint(context, 600, 215);
//    CGContextAddLineToPoint(context, 100, 215);
//    CGContextClosePath(context);
//    CGContextFillPath(context);
    //CGContextSetFillColorWithColor(context, yellow);
    //CGContextFillPath(context);

}
@end
