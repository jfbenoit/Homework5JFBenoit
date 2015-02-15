//
//  StockViewController.m
//  Homework5JFBenoit
//
//  Created by Jacob Benoit on 2/14/15.
//  Copyright (c) 2015 Jacob Benoit. All rights reserved.
//

#import "StockViewController.h"

@implementation StockViewController



- (void)generatePointsArray {
    NSLog(@"Generating points array");
    self.points = @[
                    [NSNumber numberWithInt:arc4random()%100],
                    [NSNumber numberWithInt:arc4random()%100],
                    [NSNumber numberWithInt:arc4random()%100],
                    [NSNumber numberWithInt:arc4random()%100],
                    [NSNumber numberWithInt:arc4random()%100],
                    [NSNumber numberWithInt:arc4random()%100],
                    [NSNumber numberWithInt:arc4random()%100],
                    [NSNumber numberWithInt:arc4random()%100],
                    [NSNumber numberWithInt:arc4random()%100]
                    ];
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
    
    // if array of points is null, create it and fill with points.
    if (self.points == nil) {
        NSLog(@"only the first time?");
        [self generatePointsArray];
        
    }
    
    
    CGFloat viewWidth = [self bounds].size.width;
    CGFloat viewHeight = [self bounds].size.height;
    
    NSBezierPath *path = [NSBezierPath bezierPath];
    [path moveToPoint:CGPointMake(0, 0)];
    [path lineToPoint:CGPointMake((int)viewWidth * .10, (int)self.points[0] % (int)viewHeight)];
    [path lineToPoint:CGPointMake((int)viewWidth * .20, (int)self.points[1] % (int)viewHeight)];
    [path lineToPoint:CGPointMake((int)viewWidth * .30, (int)self.points[2] % (int)viewHeight)];
    [path lineToPoint:CGPointMake((int)viewWidth * .40, (int)self.points[3] % (int)viewHeight)];
    [path lineToPoint:CGPointMake((int)viewWidth * .50, (int)self.points[4] % (int)viewHeight)];
    [path lineToPoint:CGPointMake((int)viewWidth * .60, (int)self.points[5] % (int)viewHeight)];
    [path lineToPoint:CGPointMake((int)viewWidth * .70, (int)self.points[6] % (int)viewHeight)];
    [path lineToPoint:CGPointMake((int)viewWidth * .80, (int)self.points[7] % (int)viewHeight)];
    [path lineToPoint:CGPointMake((int)viewWidth * .90, (int)self.points[8] % (int)viewHeight)];
    [path lineToPoint:CGPointMake((int)viewWidth , 0)];
    [path lineToPoint:CGPointZero];
    [path fill];
}

@end
