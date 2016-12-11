//
//  AjoutMatiereViewController.m
//  
//
//  Created by ktata on 11/27/16.
//
//

#import "AjoutMatiereViewController.h"
#import "Matiere.h"
#import "AppDelegate.h"
#import "ListeMatiereViewController.h"

@interface AjoutMatiereViewController ()

@end

@implementation AjoutMatiereViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

-(IBAction)addMatiere:(id)sender{
    if ([self verifier:matieres.text note:note.text coefficient:coeff.text]==YES) {
        Matiere* mt=[[Matiere alloc] initMatiereWithMati:matieres.text withNote:note.text withCoeff:coeff.text];
        AppDelegate *appd=(AppDelegate*)[[UIApplication sharedApplication] delegate];
        [mt addMatiereToList:appd.listMatieres];
        
        ListeMatiereViewController * m= [self.storyboard instantiateViewControllerWithIdentifier:@"ListeMatiereViewController"];
        [self.navigationController pushViewController:m animated:YES];
    }

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(BOOL)verifier:(NSString*)matiere note:(NSString*)n coefficient:(NSString*)c
{
    if (![n isEqualToString:@""] ||![matiere isEqualToString:@""] || ![c isEqualToString:@""]) {
        return YES;
    }
    
    else
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Erreur"
                                                        message:@"Veuillez saisir les champs vides"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];

        return NO;
    }
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
