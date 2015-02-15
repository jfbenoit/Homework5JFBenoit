//
//  Complex.m
//  Homework5JFBenoit
//
//  Created by Jacob Benoit on 2/14/15.
//  Copyright (c) 2015 Jacob Benoit. All rights reserved.
//

#import "Complex.h"

@implementation Complex

// Create a Complex Number with the given real numbers.

+(instancetype)complexWithA:(double)a B:(double)b {
    Complex *i = [[self alloc] init];
    i.a = a;
    i.b = b;
    return i;
}

// Method for squaring a ComplexNumber
-(Complex*)square {
    return [Complex complexWithA:self.a*self.a - self.b*self.b B:self.a*self.b*2];
    
}

// Method for adding 2 complex numbers
-(Complex*)add:(Complex*)n {
    return [Complex complexWithA:self.a+n.a B:self.b+n.b];
}


// Method for calculating magnitude^2 (how close the number is to infinity)
-(double)magnitude {
    return self.a*self.a + self.b*self.b;
}


@end
