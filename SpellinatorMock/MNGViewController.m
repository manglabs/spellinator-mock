//
//  MNGViewController.m
//  SpellinatorMock
//
//  Created by Tim on 1/7/14.
//  Copyright (c) 2014 Mang Labs. All rights reserved.
//

#import "MNGViewController.h"

@interface MNGViewController ()
@property (weak, nonatomic) IBOutlet UITableView *table;
@property (strong, nonatomic) NSArray *data;
@end

@implementation MNGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.data = @[@"grass", @"fact", @"camping", @"cant"];
}

static NSString *CellIdentifier = @"AddWordsCellIdentifier";

- (void)viewWillAppear:(BOOL)animated
{
    UINib *nib = [UINib nibWithNibName:CellIdentifier bundle: nil];
    [self.table registerNib:nib forCellReuseIdentifier:@"MyCell"];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.data.count;
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    cell.textLabel.text = self.data[indexPath.row];
    
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
