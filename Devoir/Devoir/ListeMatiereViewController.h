//
//  ListeMatiereViewController.h
//  
//
//  Created by ktata on 11/27/16.
//
//

#import <UIKit/UIKit.h>

@interface ListeMatiereViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

{
    IBOutlet UITableView *matTableView;
    IBOutlet UILabel *message;
}

@end
