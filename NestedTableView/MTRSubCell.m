//
//  MTRSubCell.m
//  NestedTableView
//
//  Created by Naresh Reddy Yadulla. on 12/07/14.
//  Copyright (c) 2014 Naresh. All rights reserved.
//

#import "MTRSubCell.h"

@implementation MTRSubCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
