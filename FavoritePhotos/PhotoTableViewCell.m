//
//  PhotoTableViewCell.m
//  FavoritePhotos
//
//  Created by Philip Henson on 10/15/15.
//  Copyright © 2015 Phil Henson. All rights reserved.
//

#import "PhotoTableViewCell.h"

@interface PhotoTableViewCell ()


@end

@implementation PhotoTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)onFavoriteButtonPressed:(UIButton *)sender
{
    
    [self.delegate favoritePressed:self.cellIndexPath];
    
}


@end
