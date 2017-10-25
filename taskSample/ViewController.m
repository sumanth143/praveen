//
//  ViewController.m
//  taskSample
//
//  Created by murali krishna on 3/24/17.
//  Copyright © 2017 volivesolutions. All rights reserved.
//

#import "ViewController.h"
#import "customTableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.imagesArray = [NSMutableArray new];
    self.labelArray = [NSMutableArray new];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)imagedat:(UIImage *)images andString:(NSString *)str {
    
    [self.imagesArray addObject:images];
    [self.labelArray addObject:str];
    
    [self.tableView reloadData];
    
    
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.imagesArray.count;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellid = @"Cell";
    
    customTableViewCell *cell = (customTableViewCell *)[self.tableView dequeueReusableCellWithIdentifier:cellid forIndexPath:indexPath];
    
    
    cell.cellImg.image = [self.imagesArray objectAtIndex:indexPath.row];
    
    cell.cellLabel.text = [self.labelArray objectAtIndex:indexPath.row];
    
    return cell;
    
}

- (IBAction)gotoSecondVIew:(id)sender {
    
    SecondViewController *gotoSecondVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    
    gotoSecondVC.delegate = self;
    [self.navigationController pushViewController:gotoSecondVC animated:YES];
    
}
@end
