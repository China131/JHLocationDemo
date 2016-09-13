//
//  AppDelegate.h
//  LocationJH
//
//  Created by cjatech-简豪 on 16/5/11.
//  Copyright © 2016年 JH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
//#import "JPUSHService.h"
//#import "SBKError.h"
//#import "SBKBeacon.h"
//#import "SBKBeaconID.h"
//#import "SBKBeaconManager.h"
//#import "SBKBeaconManager+Cloud.h"
//#import "SBKUnitConvertHelper.h"
//#import "SIKUser.h"
//#import "SIKManager.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;


@end

