//
//  Photo.h
//  FavoritePhotos
//
//  Created by Philip Henson on 10/15/15.
//  Copyright © 2015 Phil Henson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol PhotoDelegate <NSObject>

-(void)favoriteButtonPressed:(id)photo;

@end


@interface Photo : NSObject

@property (weak, nonatomic) id <PhotoDelegate> delegate;

@property NSString *photoID;
@property UIImage *image;

-(void)favoriteButtonPressedInCell:(Photo *)photo;

+(NSMutableArray *)photosForDictionary:(NSDictionary *)resultsDictionary;

@end
