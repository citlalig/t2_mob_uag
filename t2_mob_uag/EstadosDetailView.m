//
//  EstadosDetailView.m
//  t2_mob_uag
//
//  Created by Citlali Garcia on 10/11/14.
//  Copyright (c) 2014 Personal. All rights reserved.
//

#import "EstadosDetailView.h"
#import "Declarations.h"

@interface EstadosDetailView ()

@end

@implementation EstadosDetailView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.lblEstado.text = strSelectedName;
    self.imgEstado.image = [UIImage imageNamed:(NSString *)strSelectedImage];
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
