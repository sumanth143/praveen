//
//  SecondViewController.h
//  taskSample
//
//  Created by murali krishna on 3/24/17.
//  Copyright © 2017 volivesolutions. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol dataSending <NSObject>

-(void)imagedat:(UIImage *)images andString:(NSString *)str;

@end

@interface SecondViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>


@property (nonatomic, weak) id <dataSending>delegate;

@property (strong, nonatomic) IBOutlet UIButton *imageBtn;

- (IBAction)pickingImage:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *textFld;
@property (strong, nonatomic) IBOutlet UIButton *saveBtn;
- (IBAction)saveBtn:(id)sender;



@end
