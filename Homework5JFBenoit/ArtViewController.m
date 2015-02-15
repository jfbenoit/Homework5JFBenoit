//
//  ArtViewController.m
//  Homework5JFBenoit
//
//  Created by Jacob Benoit on 2/14/15.
//  Copyright (c) 2015 Jacob Benoit. All rights reserved.
//

#import "ArtViewController.h"
#import "Complex.h"

@implementation ArtViewController

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    NSColor * black = [NSColor blackColor];
    NSColor * white = [NSColor whiteColor];
    
    // Drawing code here.
    NSMutableArray* pointValues = [self getPointValues];
    for (int i = 0; i < self.bounds.size.width; i++) {
       for (int j = 0; j < self.bounds.size.height; j++) {
           // If the point is in the Set, color it White, else, color it Black
           NSBezierPath *square = [NSBezierPath bezierPathWithRect:NSMakeRect(i,j,1,1)];
           if([(NSNumber*)(pointValues[i][j]) isEqualToNumber:@(0)]) {
               [black set];
               [square fill];
           } else {
               [white set];
               [square fill];
           }
       }
    }
}



- (NSMutableArray*) getPointValues {
    NSMutableArray * pointValues = [[NSMutableArray alloc] init];
    for (int i = 0; i < self.bounds.size.width; i++) {
        pointValues[i] = [[NSMutableArray alloc] init];
        for (int j = 0; j < self.bounds.size.height; j++) {
            double a = (double)i * 3 / (double)self.bounds.size.width + -1.5;
            double b = (double)j * 3 / (double)self.bounds.size.height + -1.5;
            pointValues[i][j] = [self isInSet:[Complex complexWithA:a B:b]];
        }
    }
    return pointValues;
}

- (NSNumber*) isInSet:(Complex*)value {
    Complex* c = [Complex complexWithA:-0.223 B:0.745];
    for(int i=0;i<50;i++){
        // The basic Julia Set Algorithm.
        value = [[value square] add:c];
    }
    // If the threshold^2 is larger than the magnitude, return true.
    NSNumber *boolval = @([value magnitude] < 1);
//    if ([boolval isEqualToNumber:@(1)]) {
//        NSLog(@"boolval: %@",boolval);
//    }
    return boolval;
}

@end
