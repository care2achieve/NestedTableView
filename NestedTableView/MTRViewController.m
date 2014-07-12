//
//  MTRViewController.m
//  NestedTableView
//
//  Created by Naresh Reddy Yadulla. on 12/07/14.
//  Copyright (c) 2014 Naresh. All rights reserved.
//

#import "MTRViewController.h"
#import "MTRModel.h"
#import "MTRMinCell.h"
@interface MTRViewController ()
{
    NSArray *source;
}
@end

@implementation MTRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    source = [self genarateData];
    [self.mainT reloadData];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return source.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%d == %d", indexPath.row,[[source objectAtIndex:indexPath.row] count]);
    return [[source objectAtIndex:indexPath.row] count]*25;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MTRMinCell *cell = [tableView dequeueReusableCellWithIdentifier:@"mainCellID"];
    if (cell == nil) {
        cell = [[MTRMinCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"mainCellID"];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    cell.dataArray = [source objectAtIndex:indexPath.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView didEndDisplayingCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath*)indexPath
{
    MTRMinCell *cell1 = (MTRMinCell*)cell;
    [cell1 reloadSubTable];
}
-(void) tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    MTRMinCell *cell1 = (MTRMinCell*)cell;
    [cell1 reloadSubTable];
}
-(NSArray*)genarateData
{
    NSMutableArray *arr = [NSMutableArray new];
    for (int i = 0; i< arc4random()%5 + 2; i++) {
        NSMutableArray *a = [NSMutableArray new];
        for (int j = 0; j< arc4random()%5 + 2; j++) {
            MTRModel *m = [MTRModel new];
            m.name = [NSString stringWithFormat:@"test %d %d",i,j];
            m.m1 = [NSString stringWithFormat:@"%d",arc4random()%70 + 30];
            m.m2 = [NSString stringWithFormat:@"%d",arc4random()%70 + 30];
            m.m3 = [NSString stringWithFormat:@"%d",arc4random()%70 + 30];
            [a addObject:m];
        }
        [arr addObject:a];
    }
    return arr;
}
@end
