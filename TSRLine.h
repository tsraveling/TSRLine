//
//  TSRLine.h
//  Ascendance
//
//  Created by Timothy Raveling on 1/27/14.
//  Copyright (c) 2014 Yetiden Games. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kTSRLineAlpha       0.9f

@interface TSRLine : UIView

-(void)setFrom:(CGPoint)a to:(CGPoint)b withLineWidth:(CGFloat)lineWidth andColor:(UIColor*)col;
+(TSRLine*)addFrom:(CGPoint)a to:(CGPoint)b withLineWidth:(CGFloat)lineWidth andColor:(UIColor*)col inView:(UIView*)view;

@end
