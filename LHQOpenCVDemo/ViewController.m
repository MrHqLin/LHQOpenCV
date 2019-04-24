//
//  ViewController.m
//  LHQOpenCVDemo
//
//  Created by WaterWorld on 2019/4/24.
//  Copyright © 2019年 linhuaqin. All rights reserved.
//

#import "ViewController.h"
#import "LHQOpenCV1ViewController.h"
#import "LHQOpenCV2ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [[UIButton alloc]init];
    btn.bounds = CGRectMake(0, 0, 80, 35);
    btn.center = self.view.center;
    [btn setTitle:@"点我" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(tap) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)tap{
    UIAlertController *alert = [[UIAlertController alloc]init];
    [alert addAction:[UIAlertAction actionWithTitle:@"openCV1" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [self.navigationController pushViewController:[LHQOpenCV1ViewController new] animated:YES];
    }]];
    [alert addAction:[UIAlertAction actionWithTitle:@"openCV2" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [self.navigationController pushViewController:[LHQOpenCV2ViewController new] animated:YES];
    }]];
    [alert addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil]];
    [self presentViewController:alert animated:YES completion:nil];
}


@end
