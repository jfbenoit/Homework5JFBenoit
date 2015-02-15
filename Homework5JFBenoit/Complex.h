//
//  Complex.h
//  Homework5JFBenoit
//
//  Created by Jacob Benoit on 2/14/15.
//  Copyright (c) 2015 Jacob Benoit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject

@property double a;
@property double b;

+(instancetype)complexWithA:(double)a B:(double)b;

-(Complex*)square;
-(Complex*)add:(Complex*)n;
-(double)magnitude;
@end
