//
//  ListeMatiereViewController.m
//  
//
//  Created by ktata on 11/27/16.
//
//
#import "MoyenneViewController.h"
#import "ListeMatiereViewController.h"
#import "AjoutMatiereViewController.h"
#import "AppDelegate.h"
#import "Matiere.h"
#import "MySimpleTableCell.h"



@interface ListeMatiereViewController ()

@end

@implementation ListeMatiereViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

AppDelegate* appd=(AppDelegate*)[[UIApplication sharedApplication]delegate];
    message.text=[NSString stringWithFormat:@"%lu" ,appd.listMatieres.count];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    AppDelegate *app =(AppDelegate*)[[UIApplication sharedApplication]delegate];
    return app.listMatieres.count;
}

- (IBAction)toajoutmatier:(id)sender{
    
    
    AjoutMatiereViewController*ajoutMat = [self.storyboard instantiateViewControllerWithIdentifier:@"AjoutMatiereViewController"];
    [self.navigationController pushViewController:ajoutMat animated:YES];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString* simpleTableIdentifier=@"MySimpleTableCell";
    MySimpleTableCell *cell=[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if(cell ==nil){
        NSArray *nib=[[NSBundle mainBundle] loadNibNamed:simpleTableIdentifier owner:self options:nil];
        
        cell=[nib objectAtIndex:0];
    }
    AppDelegate* appd=(AppDelegate*)[[UIApplication sharedApplication]delegate];
    Matiere *ma =[appd.listMatieres objectAtIndex:indexPath.row];
    //NSString* str=[NSString stringWithFormat:@"%@ %@ %@" ,ma.mati,ma.coeff,ma.note];
    //cell.textLabel.text=str;
    cell.text1.text=ma.mati;
    cell.text2.text=ma.coeff;
    cell.text3.text=ma.note;

    return cell;
}
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    if(editingStyle == UITableViewCellEditingStyleDelete)
    {
        AppDelegate* appd=(AppDelegate*)[[UIApplication sharedApplication]delegate];
        [appd.listMatieres removeObjectAtIndex:indexPath.row];
        [tableView reloadData];
    }
}

- (IBAction)mouveToMoyenne:(id)sender{

        
      // MoyenneViewController*moyview = [self.storyboard instantiateViewControllerWithIdentifier:@"MoyenneViewController"];
        //[self.navigationController pushViewController:moyview animated:YES];
    
    AppDelegate* appd= (AppDelegate*)[[UIApplication sharedApplication] delegate];
    Matiere* mat;
    int i;
    CGFloat calMoy =0;
    CGFloat somCoef =0;
    for (i = 0 ; i < [appd.listMatieres count] ; i++) {
        mat = [appd.listMatieres objectAtIndex:i];
        somCoef += (CGFloat) [mat.coeff floatValue];
        calMoy  += (CGFloat) [mat.coeff floatValue] * (CGFloat)[mat.note floatValue];
    }
    //s=[NSString stringWithFormat:@"%f",(calMoy/somCoef)];
    MoyenneViewController* moyvieww = [self.storyboard instantiateViewControllerWithIdentifier:@"MoyenneViewController"];
   // [vv setSomme:[NSString stringWithFormat:@"%f",(calMoy/somCoef)]];
    moyvieww.message=[[NSString stringWithFormat:@"%f",(calMoy/somCoef)] floatValue];
    message.text =[NSString stringWithFormat:@"%f",(calMoy/somCoef)];
    [self.navigationController pushViewController:moyvieww animated:YES];
}


- (IBAction)calculeMoy:(id)sender  {
    
    
  /*
    AppDelegate* appd= (AppDelegate*)[[UIApplication sharedApplication] delegate];
    Matiere* mat;
    int i;
    CGFloat calMoy =0;
    CGFloat somCoef =0;
    for (i = 0 ; i < [appd.listMatieres count] ; i++) {
        mat = [appd.listMatieres objectAtIndex:i];
        somCoef += (CGFloat) [mat.coeff floatValue];
        calMoy  += (CGFloat) [mat.coeff floatValue] * (CGFloat)[mat.note floatValue];
    }
    message.text =  [NSString stringWithFormat:@"%f",(calMoy/somCoef)];*/
    
}



@end
