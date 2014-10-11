//
//  EstadosDetailView.m
//  t2_mob_uag
//
//  Created by Citlali Garcia on 10/11/14.
//  Copyright (c) 2014 Personal. All rights reserved.
//

#import "EstadosDetailView.h"
#import "Declarations.h"
#import "EstadosDetailCell.h"

@interface EstadosDetailView ()

@end

NSMutableArray *maCityImages;
NSMutableArray *maCityNames;
@implementation EstadosDetailView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.lblEstado.text = strSelectedName;
    self.imgEstado.image = [UIImage imageNamed:(NSString *)strSelectedImage];
    maCityNames = [NSMutableArray arrayWithObjects: @"ciudad 1", @"ciudad 2", @"ciudad 3", nil];
    maCityImages = [NSMutableArray arrayWithObjects: @"ciudad1.png", @"ciudad2.png", @"ciudad3.png", nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 35;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"EstadosDetailCell";
    
    EstadosDetailCell *cell = (EstadosDetailCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[EstadosDetailCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.lblCity.text = maCityNames[indexPath.row];
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.imgEstado.image = [UIImage imageNamed: maCityImages[indexPath.row] ];
}




@end
