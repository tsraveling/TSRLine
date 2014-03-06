//
//  TSRLine.m
//  Ascendance
//
//  Created by Timothy Raveling on 1/27/14.
//  Copyright (c) 2014 Yetiden Games. All rights reserved.
//

#import "TSRLine.h"

@implementation TSRLine

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)setFrom:(CGPoint)a to:(CGPoint)b withLineWidth:(CGFloat)lineWidth andColor:(UIColor*)col
{
    if (b.x==a.x)b.x++;
    if (b.y==a.y)b.y++;
    
    CGPoint center = { 0.5 * (a.x + b.x), 0.5 * (a.y + b.y) };
    CGFloat length = sqrt((a.x - b.x) * (a.x - b.x) + (a.y - b.y) * (a.y - b.y));
    CGFloat angle = atan2(a.y - b.y, a.x - b.x);
    
    //[self setFrame:CGRectMake(0, 0, length+lineWidth, lineWidth)];
    //self.center = center;
    
    [self setBackgroundColor:col];
    [self setAlpha:kTSRLineAlpha];
    
    self.layer.position = center;
    self.layer.bounds = (CGRect) { {0, 0}, { length + lineWidth, lineWidth } };
    self.layer.transform = CATransform3DMakeRotation(angle, 0, 0, 1);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

+(TSRLine*)addFrom:(CGPoint)a to:(CGPoint)b withLineWidth:(CGFloat)lineWidth andColor:(UIColor*)col inView:(UIView*)view
{
    TSRLine *line = [[TSRLine alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
    [line setFrom:a to:b withLineWidth:lineWidth andColor:col];
    [view addSubview:line];
    
    return line;
}

@end
