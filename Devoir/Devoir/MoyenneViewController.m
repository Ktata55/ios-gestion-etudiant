//
//  MoyenneViewController.m
//  
//
//  Created by ktata on 11/28/16.
//
//

#import "MoyenneViewController.h"

@interface MoyenneViewController ()

@end

@implementation MoyenneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
     messageLabel.text= [NSString stringWithFormat:@"%f",_message];
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

@end
