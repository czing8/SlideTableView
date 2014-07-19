//
//  ViewController.m
//  SlideViewTableView
//
//  Created by Vols on 14-7-17.
//  Copyright (c) 2014年 vols. All rights reserved.
//

#import "ViewController.h"
#import "MainTableView.h"

#import "SVTopScrollView.h"
#import "SVRootScrollView.h"
#import "MainListModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  self.edgesForExtendedLayout = UIRectEdgeNone;

  [self addViews];
}

- (NSMutableArray *)dataSources{
  NSMutableArray * array = [[NSMutableArray alloc] init];
  
  for (int i = 0; i < 5; i ++) {
    MainListModel * model = [[MainListModel alloc] init];
    
    [array addObject:model];
  }
  return array;
}

- (void)addViews{
  
  [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:0.91 green:0.89 blue:0.85 alpha:1.0]];
  self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor grayColor],NSFontAttributeName: [UIFont boldSystemFontOfSize:18]};
  self.navigationItem.title=@"奶瓶时光";
  
  UIView * bgView = [[UIView alloc] initWithFrame:self.view.bounds];
  bgView.backgroundColor = [UIColor orangeColor];
  [self.view addSubview:bgView];
  
  [SVGloble shareInstance].globleWidth = kSCREEN_SIZE.width;
  [SVGloble shareInstance].globleHeight = kSCREEN_SIZE.height-20;
  [SVGloble shareInstance].globleAllHeight = kSCREEN_SIZE.height;

  SVTopScrollView *topScrollView = [SVTopScrollView shareInstance];
  SVRootScrollView *rootScrollView = [SVRootScrollView shareInstance];

  topScrollView.nameArray = @[@"首页", @"关注", @"热门", @"周边", @"同龄"];
  
  [bgView addSubview:topScrollView];
  [bgView addSubview:rootScrollView];
  
  [topScrollView initWithNameButtons];
  [rootScrollView initWithViews];

  [self followScrollView:rootScrollView WithBgView:bgView];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
