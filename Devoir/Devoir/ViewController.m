//
//  ViewController.m
//  Devoir
//
//  Created by ktata on 11/27/16.
//  Copyright (c) 2016 ktata. All rights reserved.
//

#import "ViewController.h"
#import "ListeMatiereViewController.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    int random=(int)((arc4random()% 899)+100);
    NSString *Coderandom=[NSString stringWithFormat:@"%d",random];
    code.text=Coderandom;
}
- (IBAction)verifClick:(id)sender{
    
    if ([code.text isEqualToString:codeverification.text])
    {
        
        ListeMatiereViewController*matiereView = [self.storyboard instantiateViewControllerWithIdentifier:@"ListeMatiereViewController"];
        [self.navigationController pushViewController:matiereView animated:YES];
        // message.text=@"Login correct";
    }else
    {
        message.text=@"code incorrect";
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
