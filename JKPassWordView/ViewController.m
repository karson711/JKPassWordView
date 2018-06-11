//
//  ViewController.m
//  JKPassWordView
//
//  Created by kunge on 2018/6/11.
//  Copyright © 2018年 kunge. All rights reserved.
//

#import "ViewController.h"
#import "JKPassWordView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    JKPassWordView *passView = [[JKPassWordView alloc] init];
    passView.frame = CGRectMake(16, 100, 200, 200/6);
    
    passView.textBlock = ^(NSString *str) {
        //返回的内容
        NSLog(@"%@",str);
    };
    [self.view addSubview:passView];
    passView.showType = 5;//五种样式
    passView.num = 6;//框框个数
    passView.tintColor = [UIColor orangeColor];//主题色
    [passView show];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
