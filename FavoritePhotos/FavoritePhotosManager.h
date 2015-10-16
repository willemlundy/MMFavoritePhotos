//
//  FavoritePhotosManager.h
//  FavoritePhotos
//
//  Created by Philip Henson on 10/15/15.
//  Copyright © 2015 Phil Henson. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Photo;

@interface FavoritePhotosManager : NSObject

@property (nonatomic) NSMutableArray *favorites;

//

-(void)favoriteButtonPressed:(Photo *)photo;

+ (Photo *)getPhotoForID:(NSString *)photoID;

@end
