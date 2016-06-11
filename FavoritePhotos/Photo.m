//
//  Photo.m
//  FavoritePhotos
//
//  Created by Philip Henson on 10/15/15.
//  Copyright © 2015 Phil Henson. All rights reserved.
//

#import "Photo.h"

@implementation Photo


-(instancetype)initWithDictionary:(NSDictionary *)photoArray{

    if (self = [super init]){
        self.photoID = photoArray[@"id"];
        self.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:photoArray[@"images"][@"thumbnail"][@"url"]]]];
        self.isFavorite = NO;

    }

    return self;

}

-(NSString *)description{
    return [NSString stringWithFormat:@"Photo ID:%@", self.photoID];
}

+(NSMutableArray *)photosForDictionary:(NSDictionary *)resultsDictionary{

    NSMutableArray *photos = [NSMutableArray new];
    for (NSDictionary *photoDictionary in resultsDictionary[@"data"]){
        
        Photo *photo = [[Photo alloc] initWithDictionary:photoDictionary];
        [photos addObject:photo];
        
    }
    return photos;

}


//TODO: IBAction from Custom Cell button press goes here to call [self.delegate didClickFavoriteButton]

-(IBAction)favoriteButtonPressedInCell:(Photo *)photo{
    [self.delegate favoriteButtonPressed:photo];
}

@end
