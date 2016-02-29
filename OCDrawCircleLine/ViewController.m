//
//  ViewController.m
//  OCDrawCircleLine
//
//  Created by 麻生 拓弥 on 2016/02/29.
//  Copyright © 2016年 麻生 拓弥. All rights reserved.
//

#import "ViewController.h"
#import "DrawCircleLineView.h"

@interface ViewController ()

@end

@implementation ViewController

# pragma mark - Life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Drawing Circle and Line
    // Use full Scrren
    DrawCircleLineView *drawView = [[DrawCircleLineView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:drawView];
}

# pragma mark - Memory Warning

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
