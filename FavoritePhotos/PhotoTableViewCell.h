//
//  PhotoTableViewCell.h
//  FavoritePhotos
//
//  Created by Philip Henson on 10/15/15.
//  Copyright © 2015 Phil Henson. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface PhotoTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *photoImageLabel;
@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;
@property (weak, nonatomic) IBOutlet UIButton *addToFavoritesButtonPressed;

@end
