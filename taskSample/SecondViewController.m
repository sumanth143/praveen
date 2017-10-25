//
//  SecondViewController.m
//  taskSample
//
//  Created by murali krishna on 3/24/17.
//  Copyright © 2017 volivesolutions. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController () {
    
    
    UIImagePickerController * picker_Profile_Pic;
    UIImage * profile_Image;

}

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


-(void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    if (picker == picker_Profile_Pic)
    {
        profile_Image = [info objectForKey:UIImagePickerControllerOriginalImage];
        [_imageBtn setBackgroundImage:profile_Image forState:UIControlStateNormal];
        
        
    }
    [self dismissViewControllerAnimated:YES completion:NULL];
    
}


- (IBAction)pickingImage:(id)sender {
    
    
    picker_Profile_Pic = [[UIImagePickerController alloc] init];
    picker_Profile_Pic.delegate = self;
    [picker_Profile_Pic setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    [self presentViewController:picker_Profile_Pic
                       animated:YES completion:NULL];

    
    
}

- (IBAction)saveBtn:(id)sender {
    
    [self.delegate imagedat:profile_Image andString:self.textFld.text];
    
    [self.navigationController popViewControllerAnimated:YES];
    
}
@end
