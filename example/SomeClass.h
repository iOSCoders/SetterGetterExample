//
//  SomeClass.h
//  example
//
//  Created by Joe Bologna on 11/30/13.
//  Copyright (c) 2013 Joe Bologna. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SomeClass : NSObject

@property (nonatomic, unsafe_unretained) NSInteger propOne;
@property (nonatomic, unsafe_unretained, readonly) NSInteger propTen;

@end
