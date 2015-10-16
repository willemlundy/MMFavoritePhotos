//
//  SearchPhotosViewController.m
//  FavoritePhotos
//
//  Created by Philip Henson on 10/15/15.
//  Copyright © 2015 Phil Henson. All rights reserved.
//

#import "SearchPhotosViewController.h"
#import "Photo.h"
#import "PhotoTableViewCell.h"

NSString * const access_token  = @"35085869.ab103e5.46117e2cdc7c432693d637687e974dac";

@interface SearchPhotosViewController () <UISearchBarDelegate, UITableViewDataSource, UITableViewDelegate>
/*

https://api.instagram.com/v1/tags/nofilter/media/recent?client_id=CLIENT-ID

69f308f08e144d948643d336a89b9294

Your token is: 35085869.ab103e5.46117e2cdc7c432693d637687e974dac
Your user ID is: 35085869

https://api.instagram.com/v1/users/35085869/media/recent/?access_token=35085869.ab103e5.46117e2cdc7c432693d637687e974dac

 https://api.instagram.com/v1/tags/karate/media/recent/?access_token=35085869.ab103e5.46117e2cdc7c432693d637687e974dac

*/

@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property NSDictionary *results;
@property NSMutableArray *photos;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation SearchPhotosViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar{

    [self performNewSearchWithTag:searchBar.text];
    [self.searchBar resignFirstResponder];

}

-(void)performNewSearchWithTag:(NSString *)search{

    NSString *baseURL = [NSString stringWithFormat:@"https://api.instagram.com/v1/tags/%@/media/recent/?access_token=", search];

    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@%@", baseURL, access_token]];

    NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {

        if (data){

            self.photos = [NSMutableArray new];
            self.results = [NSDictionary new];
            self.results = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];

            self.photos = [Photo photosForDictionary:self.results];

            NSLog(@"data found: %@", self.photos);

            dispatch_async(dispatch_get_main_queue(), ^{

                [self.tableView reloadData];
            });



        } else{
            UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Try Again" message:@"No data found for that search." preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *dismiss = [UIAlertAction actionWithTitle:@"Dismiss" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {

                self.searchBar.text = @"";

            }];

            [alert addAction:dismiss];
            [self presentViewController:alert animated:YES completion:nil];
        }
        
    }];
    
    [task resume];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    PhotoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PhotoCell"];

    Photo* photo = self.photos[indexPath.row];

    cell.photoImageLabel.text = photo.photoID;
    cell.photoImageView.image = photo.image;

    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.photos.count;
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
