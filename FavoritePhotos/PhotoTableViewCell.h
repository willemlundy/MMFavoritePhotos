//
//  PhotoTableViewCell.h
//  FavoritePhotos
//
//  Created by Philip Henson on 10/15/15.
//  Copyright © 2015 Phil Henson. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PhotoTableViewCellDelegate <NSObject>

- (void)favoritePressed:(NSIndexPath *)indexPath;

@end


@interface PhotoTableViewCell : UITableViewCell

@property (nonatomic, assign) id<PhotoTableViewCellDelegate> delegate;

@property (weak, nonatomic) IBOutlet UILabel *photoImageLabel;
@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;
@property (weak, nonatomic) IBOutlet UIButton *addToFavoritesButtonPressed;
@property NSIndexPath *cellIndexPath;

@end
