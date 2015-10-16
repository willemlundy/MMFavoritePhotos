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





-(NSMutableArray *)favorites{
    if (!_favorites){
        _favorites = [NSMutableArray new];
    }

    return _favorites;
}

//+ (Photo *)getPhotoForID:(NSString *)photoID
//{
//    NSLog(@"getPhotoForIDCalled");
//    
//    return nil;
//    
//}






/*

-(void)favoriteButtonPressed:(id)photo{

    if (photo.isFavorite){
        photo.isFavorite = NO;
        [self.favorites removeObject:photo];
    } else {
        photo.isFavorite=YES;
        [self.favorites addObject:photo];
    }

}
 */

@end
