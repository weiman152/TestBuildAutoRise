//
//  ViewController.m
//  TestBuild自增长
//
//  Created by weiman on 2018/1/19.
//  Copyright © 2018年 weiman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
 
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString * buildNum = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"];
    NSLog(@"现在版本号   %@",buildNum);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
