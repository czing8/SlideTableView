//
//  MainTableView.h
//  SlideViewTableView
//
//  Created by Vols on 14-7-18.
//  Copyright (c) 2014年 vols. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger, TableViewStyle) {
  TableViewStyleMain,
  TableViewStyleLike,
  TableViewStyleHot,
  TableViewStyleNear,
  TableViewStyleSame
};


@interface MainTableView : UIView

- (id)initWithFrame:(CGRect)frame WithTableViewStyle:(TableViewStyle)tableViewStyle;

@end
