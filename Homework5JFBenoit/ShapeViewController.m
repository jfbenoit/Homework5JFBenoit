//
//  ShapeViewController.m
//  Homework5JFBenoit
//
//  Created by Jacob Benoit on 2/14/15.
//  Copyright (c) 2015 Jacob Benoit. All rights reserved.
//

#import "ShapeViewController.h"

@implementation ShapeViewController

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    NSColor * blue = [NSColor blueColor];
    NSColor * red = [NSColor redColor];
    NSColor * green = [NSColor greenColor];
    NSColor * gray = [NSColor grayColor];
    NSColor * pattern = [NSColor colorWithPatternImage:[NSImage imageNamed:@"pattern.png"]];
    
    // set background color
    [blue set];
    [NSBezierPath fillRect:self.bounds];
    
    // draw square
    NSBezierPath *square = [NSBezierPath bezierPathWithRect:NSMakeRect(0,0,self.bounds.size.width * .3, self.bounds.size.width * .3)];
    [red set];
    [square fill];
    [gray set];
    [square setLineWidth:4];
    [square stroke];
    
    // draw circle
    NSBezierPath *circle = [NSBezierPath bezierPathWithOvalInRect:NSMakeRect(self.bounds.size.width * .3,0,self.bounds.size.width * .3,self.bounds.size.width * .3 )];
    [green set];
    [circle fill];
    
    // draw triangle
    NSBezierPath *triangle = [NSBezierPath bezierPath];
    [triangle moveToPoint:NSMakePoint(self.bounds.size.width * .6, 0)];
    [triangle lineToPoint:NSMakePoint((self.bounds.size.width *.6) + (self.bounds.size.width *.3)/2, self.bounds.size.width * .3)];
    [triangle lineToPoint:NSMakePoint(self.bounds.size.width * .9, 0)];
    [triangle closePath];
    [pattern set];
    [triangle fill];
    
}

@end
