//
//  ViewController.h
//  taskSample
//
//  Created by murali krishna on 3/24/17.
//  Copyright © 2017 volivesolutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"


@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, dataSending>


@property (strong, nonatomic) IBOutlet UITableView *tableView;


- (IBAction)gotoSecondVIew:(id)sender;


@property (nonatomic, strong) NSMutableArray *imagesArray;
@property (nonatomic, strong) NSMutableArray *labelArray;

@end

