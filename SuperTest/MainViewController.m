//
//  ViewController.m
//  SuperTest
//
//  Created by Mobindustry on 4/8/15.
//  Copyright (c) 2015 ARC. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) UITableView *tableView;

@end

@implementation MainViewController

-(void)loadView
{
    [super loadView];
    
    UITableView *tableView = [[UITableView alloc] init];
    
    tableView.translatesAutoresizingMaskIntoConstraints = NO;
    tableView.backgroundColor = [UIColor greenColor];
    NSDictionary *viewsDict = NSDictionaryOfVariableBindings(self.view);
    NSArray *constraintPOSV = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-30-[tableView]"
                                                                        options:0
                                                                        metrics:nil
                                                                          views:viewsDict];
    
    NSArray *constraintPOSH = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[tableView]"
                                                                        options:0
                                                                        metrics:nil
                                                                          views:viewsDict];
    [self.view addSubview:tableView];
    [self.view addConstraints:constraintPOSV];
    [self.view addConstraints:constraintPOSH];
    self.tableView = tableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    if (!cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"Row - %ld", indexPath.row];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"Section - %ld", indexPath.section];
    
    return cell;
}

@end
