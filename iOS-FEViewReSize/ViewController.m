//
//  ViewController.m
//  iOS-FEViewReSize
//
//  Created by keso on 16/1/10.
//  Copyright © 2016年 FlyElephant. All rights reserved.
//

#import "ViewController.h"
#import "UIView+ReSize.h"

@interface ViewController ()

@property  (strong,nonatomic)  UIView *testView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self test];
}

-(void)test{
    self.testView=[[UIView alloc]initWithFrame:CGRectMake(40, 100, 100, 100)];
    [self.testView setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:self.testView];
    [self printFrame];
    //1
    CGRect frame=self.testView.frame;
    frame.size.width=120;
    self.testView.frame=frame;
    [self printFrame];
    //2
    self.testView.width=120;
    [self printFrame];
}

-(void)printFrame{
    NSLog(@"UIView--%@",NSStringFromCGRect(self.testView.frame));
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
