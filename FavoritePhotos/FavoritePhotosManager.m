//
//  FavoritePhotosManager.m
//  FavoritePhotos
//
//  Created by Philip Henson on 10/15/15.
//  Copyright © 2015 Phil Henson. All rights reserved.
//

#import "FavoritePhotosManager.h"
#import "Photo.h" 

@interface FavoritePhotosManager () <PhotoDelegate>

@end



@implementation FavoritePhotosManager

static FavoritePhotosManager *sharedPhotoManager = nil;

+ (instancetype)sharedManager
{
    if (!sharedPhotoManager) {
        sharedPhotoManager = [[FavoritePhotosManager alloc] init];
    }
    return sharedPhotoManager;
}

- (instancetype)init {
    if (sharedPhotoManager) {
        // init method is allowed to return different object
        return sharedPhotoManager;
    }
    self = [super init];
    if (self) {
        
    }
    return self;
}



-(NSMutableArray *)favorites{
    if (!_favorites){
        _favorites = [NSMutableArray new];
    }

    return _favorites;
}

- (void)addPhotoToFavorites:(Photo *)photo
{
    // if the photo is not already in the array
    
    
    NSPredicate *filterPredicate = [NSPredicate predicateWithFormat:@"SELF.photoID contains[cd] %@", photo.photoID];
    
    if (![self.favorites filteredArrayUsingPredicate:filterPredicate])
    {
        [self.favorites addObject:photo];
        NSLog(@"Added photo: %@", photo.photoID);
    }
    
}







@end
