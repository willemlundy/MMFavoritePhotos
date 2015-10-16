//
//  FavoritePhotosManager.h
//  FavoritePhotos
//
//  Created by Philip Henson on 10/15/15.
//  Copyright © 2015 Phil Henson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FavoritePhotosManager : NSObject

@property (nonatomic) NSMutableArray *favorites;

-(void)favoriteButtonPressed:(id)photo;

@end
