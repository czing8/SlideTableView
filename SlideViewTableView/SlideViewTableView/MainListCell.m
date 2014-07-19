//
//  MainListCell.m
//  SlideViewTableView
//
//  Created by Vols on 14-7-18.
//  Copyright (c) 2014年 vols. All rights reserved.
//

#import "MainListCell.h"

@implementation MainListCell

- (void)awakeFromNib
{

}


- (void)setModel:(MainListModel *)model{
  if (_model != model) {
    _model = model;
  }
  
  [self displayUI];
}

- (void)displayUI{
  self.headerIView.image = [UIImage imageNamed:_model.headerImage];
  self.nameLabel.text = _model.name;
  self.detailLabel.text = _model.detail;
  self.timeLabel.text = _model.time;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
