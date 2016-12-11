//
//  Matiere.h
//  
//
//  Created by ktata on 11/27/16.
//
//

#import <Foundation/Foundation.h>

@interface Matiere : NSObject

@property(strong,nonatomic)NSString* mati;
@property(strong,nonatomic)NSString* note;
@property(strong,nonatomic)NSString* coeff;

-(id)initMatiereWithMati:(NSString*)mati withNote:(NSString*) note withCoeff:(NSString*) coeff;
-(void)addMatiereToList:(NSMutableArray*) list;

@end
