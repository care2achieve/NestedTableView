//
//  MTRMinCell.h
//  NestedTableView
//
//  Created by Naresh Reddy Yadulla. on 12/07/14.
//  Copyright (c) 2014 Naresh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MTRMinCell : UITableViewCell<UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *subT;
@property (nonatomic, strong)NSArray *dataArray;
-(void)reloadSubTable;
@end
