//
//  CoreDataManager.h
//  SuperTest
//
//  Created by Mobindustry on 4/8/15.
//  Copyright (c) 2015 ARC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface CoreDataManager : NSObject

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

+ (instancetype)sharedManager;
- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
