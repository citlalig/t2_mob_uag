//
//  AmigosView.m
//  t2_mob_uag
//
//  Created by Citlali Garcia on 10/10/14.
//  Copyright (c) 2014 Personal. All rights reserved.
//

#import "AmigosView.h"
#import "AmigoCell.h"

@interface AmigosView ()

@end

NSMutableArray *maImages;
NSMutableArray *maNames;
NSMutableArray *maLasNames;
NSMutableArray *maAges;
NSMutableArray *reversedImages;
NSMutableArray *reversedName;
NSMutableArray *reversedLastName;
NSMutableArray *reversedAges;

@implementation AmigosView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    maNames = [NSMutableArray arrayWithObjects: @"Derpina 1", @"Derp 2", @"Derp 3", @"Derp 4", @"Derp 5", @"Derp 6", nil];
    reversedName = [[maNames reverseObjectEnumerator] allObjects];
    maLasNames = [NSMutableArray arrayWithObjects: @"Herp 1", @"Herp 2", @"Herp 3", @"Herp 4", @"Herp 5", @"Herp 6", nil];
    reversedLastName = [[maLasNames reverseObjectEnumerator] allObjects];

    maAges = [NSMutableArray arrayWithObjects: @"21", @"22", @"23", @"24", @"25", @"26", nil];
    reversedAges = [[maAges reverseObjectEnumerator] allObjects];
    maImages = [NSMutableArray arrayWithObjects: @"meme6.png", @"meme5.png", @"meme4.png", @"meme3.png", @"meme2.png", @"meme1.png", nil];
    reversedImages = [[maImages reverseObjectEnumerator] allObjects];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)optionChanged:(id)sender {
    self.tblAmigos.reloadData;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (self.segmentedOption.selectedSegmentIndex == 0){
        return 6;
    }
    return 4;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 200;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"AmigoCell";
    
    AmigoCell *cell = (AmigoCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[AmigoCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    if (self.segmentedOption.selectedSegmentIndex == 0){
        cell.imgProfile.image = [UIImage imageNamed:maImages[indexPath.row]];
        cell.lblName.text = maNames[indexPath.row];
        cell.lblLastName.text = maLasNames[indexPath.row];
        cell.Edad.text = maAges[indexPath.row];
    }
    else {
        cell.imgProfile.image = [UIImage imageNamed:reversedImages[indexPath.row]];
        cell.lblName.text = reversedName[indexPath.row];
        cell.lblLastName.text = reversedLastName[indexPath.row];
        cell.Edad.text = reversedAges[indexPath.row];
    }
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

@end
