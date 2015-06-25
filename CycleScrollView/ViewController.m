//
//  ViewController.m
//  CycleScrollView
//
//  Created by lin wu on 6/25/15.
//  Copyright (c) 2015 lin wu. All rights reserved.
//

#import "ViewController.h"
#import "CycleScrollView.h"
@interface ViewController ()
@property (nonatomic, strong) CycleScrollView *mainScorllView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupCycleScrollView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setupCycleScrollView {
    NSMutableArray *viewsArray = [@[] mutableCopy];
    for (int i = 0; i < 5; ++i) {
        UIImageView *tempImage = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0,self.view.frame.size.width,self.view.frame.size.height)];
        NSString *imageName = [NSString stringWithFormat:@"%d.jpeg",i+1];
        [tempImage setImage:[UIImage imageNamed:imageName]];
        [viewsArray addObject:tempImage];
        //可以在Image上添加Title 自定义的一些控件
    }
    //初始化控件
    self.mainScorllView= [[CycleScrollView alloc] initWithFrame:CGRectMake(0,0,self.view.frame.size.width,self.view.frame.size.height) animationDuration:4];
    
    [self.mainScorllView setUpCycleScrollViewImageWith:viewsArray];
    
    //点击的事件
    self.mainScorllView.TapActionBlock = ^(NSInteger pageIndex){
        [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"http://www.baidu.com"]];
    };
    [self.view addSubview:self.mainScorllView];
}

@end
