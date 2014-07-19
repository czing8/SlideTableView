//
//  MainTableView.m
//  SlideViewTableView
//
//  Created by Vols on 14-7-18.
//  Copyright (c) 2014年 vols. All rights reserved.
//

#import "MainTableView.h"

#import "MainListCell.h"

@interface MainTableView () <UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray * dataSource;
@property (nonatomic, assign) TableViewStyle currentStyle;

@end

@implementation MainTableView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
      [self displayUI];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame WithTableViewStyle:(TableViewStyle)tableViewStyle{
  self = [super initWithFrame:frame];
  if (self) {
    self.currentStyle = tableViewStyle;
    [self creatModel];
    [self displayUI];

  }
  return self;
}

- (void)displayUI{
  [self addSubview:self.tableView];
  
  
}

- (UITableView *)tableView{
  
  if (!_tableView) {
    _tableView = [[UITableView alloc] initWithFrame:self.bounds];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.backgroundColor = [UIColor clearColor];
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
  }
  return _tableView;
}


- (void)creatModel{
  _dataSource = [[NSMutableArray alloc]init];
  for (int i = 0; i < 50; i++) {
    MainListModel *model = [[MainListModel alloc]init];
    model.headerImage = @"mid";
    model.name = @"name";
    model.detail = [NSString stringWithFormat:@"%d 年了", i];
    model.time = @"2:30";
    
    [_dataSource addObject:model];
  }
}


#pragma mark - UITableViewDelegate Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return _dataSource.count;
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
  return 60;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  static NSString * identifier = @"MainListCell";
  
  MainListCell * cell = [tableView dequeueReusableCellWithIdentifier:identifier];
  
  if (cell == nil) {
    cell = [[[NSBundle mainBundle] loadNibNamed:identifier owner:self options:nil] lastObject];
  }
  
  cell.model = _dataSource[indexPath.row];
  
  return cell;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
