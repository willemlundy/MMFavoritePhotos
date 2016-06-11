//
//  FavoritePhotosViewController.m
//  FavoritePhotos
//
//  Created by Philip Henson on 10/15/15.
//  Copyright © 2015 Phil Henson. All rights reserved.
//

#import "FavoritePhotosViewController.h"
#import "PhotoTableViewCell.h"
#import "Photo.h"

@interface FavoritePhotosViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property NSMutableArray *favoritesArray;


@end

@implementation FavoritePhotosViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated
{
   // self.tableView rel
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- 

(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    PhotoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FavoriteCell"];
    
//    Photo* photo = self.photos[indexPath.row];
//    
//    cell.cellIndexPath = indexPath;
//    cell.delegate = self;
//    
//    cell.photoImageLabel.text = photo.photoID;
//    cell.photoImageView.image = photo.image;
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return 1;
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
