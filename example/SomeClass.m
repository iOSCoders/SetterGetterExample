//
//  SomeClass.m
//  example
//
//  Created by Joe Bologna on 11/30/13.
//  Copyright (c) 2013 Joe Bologna. All rights reserved.
//

#import "SomeClass.h"

@implementation SomeClass

- (id)init {
    if (self = [super init]) {
        _propOne = 1;
    }
    return self;
}

// generated code
@synthesize propOne = _propOne;
@synthesize propTen = _propTen;

- (NSInteger)propOne {
    return _propOne;
}

- (void)setPropOne:(NSInteger)propOne {
    _propOne = propOne;
}
// end generated code

- (NSInteger)propTen {
    return _propOne * 10;
}

@end
