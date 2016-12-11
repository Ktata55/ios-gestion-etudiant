//
//  Matiere.m
//  
//
//  Created by ktata on 11/27/16.
//
//

#import "Matiere.h"

@implementation Matiere

-(id)initMatiereWithMati:(NSString*)mati withNote:(NSString*) note withCoeff:(NSString*) coeff{
    if(self ==[super init])
    {
        self.mati=mati;
        self.note=note;
        self.coeff=coeff;
    }
    return self;
}

//ajouter un etudiant
-(void)addMatiereToList:(NSMutableArray*)list{
    [list addObject:self];}
//supprimer
//modifier

@end
