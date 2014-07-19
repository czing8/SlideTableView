//
//  MainListCell.h
//  SlideViewTableView
//
//  Created by Vols on 14-7-18.
//  Copyright (c) 2014年 vols. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainListModel.h"

@interface MainListCell : UITableViewCell
@property (nonatomic, strong) MainListModel * model;

@property (strong, nonatomic) IBOutlet UIImageView *headerIView;

@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *detailLabel;
@property (strong, nonatomic) IBOutlet UILabel *timeLabel;

@end
