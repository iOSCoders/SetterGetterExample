//
//  ViewController.m
//  example
//
//  Created by Joe Bologna on 11/30/13.
//  Copyright (c) 2013 Joe Bologna. All rights reserved.
//

#import "ViewController.h"
#import "SomeClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    SomeClass *s = [[SomeClass alloc] init];
    printf("%d, %d\n", s.propOne, s.propTen);
    s.propOne++;
    printf("%d, %d\n", s.propOne, s.propTen);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
