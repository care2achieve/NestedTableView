//
//  MTRMinCell.m
//  NestedTableView
//
//  Created by Naresh Reddy Yadulla. on 12/07/14.
//  Copyright (c) 2014 Naresh. All rights reserved.
//

#import "MTRMinCell.h"
#import "MTRSubCell.h"
#import "MTRModel.h"
@implementation MTRMinCell

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
    self.subT.dataSource = self;
    // Initialization code
}
-(void)reloadSubTable
{
//    double delayInSeconds = 1.0;
//    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, delayInSeconds * NSEC_PER_SEC);
//    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        [self.subT reloadData];
//    });
    
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    UITableViewCell *cell1 = [tableView dequeueReusableCellWithIdentifier:@"subCellID1"];
//    if (cell1 == nil) {
//        cell1 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"subCellID1"];
//        cell1.selectionStyle = UITableViewCellSelectionStyleNone;
//    }
//    cell1.textLabel.text = @"naresh";
//    return cell1;
//    
    
    
    
    MTRSubCell *cell = [tableView dequeueReusableCellWithIdentifier:@"subCellID"];
    if (cell == nil) {
        cell = [[MTRSubCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"subCellID"];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    MTRModel *d = [self.dataArray objectAtIndex:indexPath.row];
    cell.nameL.text = d.name;
    cell.m1.text = d.m1;
    cell.m2.text = d.m2;
    cell.m3.text = d.m3;
    return cell;
}

@end
