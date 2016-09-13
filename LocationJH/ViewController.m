//
//  ViewController.m
//  LocationJH
//
//  Created by cjatech-简豪 on 16/5/11.
//  Copyright © 2016年 JH. All rights reserved.
//

#import "ViewController.h"
#import <CoreLocation/CoreLocation.h>
#import <CoreBluetooth/CoreBluetooth.h>
#import "SBKBeacon.h"
#import "SBKBeaconManager.h"

@interface ViewController ()

@property (nonatomic,strong) UIImageView * currentImgView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeSBKBeacon:) name:@"newSBKBeacon" object:nil];
    
}


- (void)changeSBKBeacon:(NSNotification *)sender{
    SBKBeacon *sbkBeacon = sender.object;
    if (_currentImgView==nil) {
        _currentImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.width * self.view.frame.size.width / self.view.frame.size.height)];
        _currentImgView.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        _currentImgView.contentMode = UIViewContentModeScaleAspectFit;
        
        
        CATransform3D trans = CATransform3DIdentity;
        trans.m34 = -50/2000;
        
        _currentImgView.layer.transform = trans;
        
        [self.view addSubview:_currentImgView];
    }
    _currentImgView.image = [UIImage imageNamed:[NSString stringWithFormat:@"ibeacon用图%ld-%ld.jpg",sbkBeacon.beaconID.major.integerValue,sbkBeacon.beaconID.minor.integerValue]];
    
    
}

-(void)viewWillLayoutSubviews{
    _currentImgView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.width * self.view.frame.size.width / self.view.frame.size.height);
    _currentImgView.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);

}

@end
