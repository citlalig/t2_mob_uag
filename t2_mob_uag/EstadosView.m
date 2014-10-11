//
//  EstadosView.m
//  t2_mob_uag
//
//  Created by Citlali Garcia on 10/10/14.
//  Copyright (c) 2014 Personal. All rights reserved.
//

#import "EstadosView.h"
#import "EstadosCell.h"
#import "Declarations.h"

@interface EstadosView ()

@end

@implementation EstadosView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    maStateNames     =  [NSMutableArray arrayWithObjects: @"Chiapas", @"Estado de México", @"Jalisco", @"Michoacán",
                         @"Nayarit", @"Nuevo León", @"Oaxaca", @"Quintana Roo", nil];
    
    maStateImages     =  [NSMutableArray arrayWithObjects: @"chiapas.png", @"edomex.png", @"jalisco.png", @"michoacan.png",
                         @"nayarit.png", @"nuevoleon.png", @"oaxaca.png", @"quintanaroo.png", nil];
    
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
    return 8;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 35;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"EstadosCell";
    
    EstadosCell *cell = (EstadosCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[EstadosCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.lblEstado.text = maStateNames[indexPath.row];
    
    return cell;

}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    strSelectedName     = [NSString stringWithFormat:@"%@", maStateNames[indexPath.row]];
    strSelectedImage     = [NSString stringWithFormat:@"%@", maStateImages [indexPath.row]];

    NSLog(@"strSelectedName %@", strSelectedName);
    
    NSString * storyboardName = @"Main";
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle: nil];
    UIViewController * vc = [storyboard instantiateViewControllerWithIdentifier:@"EstadosDetail"];
    [self presentViewController:vc animated:YES completion:nil];

}




@end
