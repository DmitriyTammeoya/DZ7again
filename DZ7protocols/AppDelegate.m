//
//  AppDelegate.m
//  DZ7protocols
//
//  Created by  Dmitry Tammeoya on 23.02.2020.
//  Copyright © 2020  Dmitry Tammeoya. All rights reserved.
//

#import "AppDelegate.h"
#import "TDDog.h"
#import "TDKangaroo.h"
#import "TDRunner.h"
#import "TDStudent.h"
#import "TDSportsman.h"
#import "TDSloth.h"
#import "TDAnimals.h"
#import "TDHuman.h"
#import "TDJumpers.h"
#import "TDSwimmers.h"
#import "TDRunners.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    TDDog* sharik = [[TDDog alloc] init];
    TDKangaroo* jumpy = [[TDKangaroo alloc] init];
    TDRunner* bolt = [[TDRunner alloc] init];
    TDStudent* vasya = [[TDStudent alloc] init];
    TDSportsman* superman = [[TDSportsman alloc] init];
    TDSloth* blitzSkorostBezGranic = [[TDSloth alloc] init];
    // TDHuman* human = [[TDHuman alloc] init];
    
    
    sharik.name = @"sharik";
    jumpy.name= @"jumpy";
    bolt.name = @"bolt";
    vasya.name= @"vasya";
    superman.name = @"superman";
    blitzSkorostBezGranic.name = @"blitz";
    sharik.maxSpeed = 30;
    sharik.styles = 1;
    bolt.maxSpeed = 100;
    superman.maxSpeed = 70;
    superman.maxHeight = 2;
    superman.styles = 4;
    vasya.maxSpeed = 12;
    vasya.styles = 0;
    jumpy.maxHeight = 5;
    
    NSArray* weirdCrowd = [NSArray arrayWithObjects:sharik, jumpy, bolt, vasya, superman, blitzSkorostBezGranic, nil];
    
   /* for (id <TDRunners> runner in weirdCrowd) {
        if ([runner conformsToProtocol:@protocol(TDRunners)]) {
            
            NSLog(@"Runner name = %@ speed = %ld", runner.name, (long)runner.maxSpeed);
            [runner run];
        }
    }
    
    for (id <TDSwimmers> swimmer in weirdCrowd) {
        if ([swimmer conformsToProtocol:@protocol(TDSwimmers)]) {
            
            NSLog(@"Swimmer name = %@ styles = %ld", swimmer.name, (long)swimmer.styles);
            [swimmer swim];
        }
    }
    
    for (id <TDJumpers> jumper in weirdCrowd) {
        if ([jumper conformsToProtocol:@protocol(TDJumpers)]) {
            
            NSLog(@"Jumper name = %@ height = %ld", jumper.name, (long)jumper.maxHeight);
            [jumper jump];
        }
    }
    
    
    */
    
    
    for (id obj in weirdCrowd) {
        if ([obj conformsToProtocol:@protocol(TDRunners)]) {
            id <TDRunners> runner = obj;
            NSLog(@"Runner %@ speed %ld", runner.name, (long)runner.maxSpeed);
            [obj run];
        }
        
        if ([obj conformsToProtocol:@protocol(TDSwimmers)]) {
            id <TDSwimmers> swimmer = obj;
            NSLog(@"Swimmer name %@ styles %ld", swimmer.name, (long)swimmer.styles);
            [swimmer swim];
        }
        
        if ([obj conformsToProtocol:@protocol(TDJumpers)]) {
            id <TDJumpers> jumper = obj;
            NSLog(@"Jumper name %@ height %ld", jumper.name, (long)jumper.maxHeight);
            [jumper jump];
            if ([jumper respondsToSelector:@selector(playSports)]) {
                [jumper playSports];
            }
        }
        
        if (!(
              [obj conformsToProtocol:@protocol(TDRunners)] ||
              [obj conformsToProtocol:@protocol(TDSwimmers)] ||
              [obj conformsToProtocol:@protocol(TDJumpers)]
              ) ) {
                TDAnimals* anim = obj;
                NSLog(@"%@ - lodyr!!!", anim.name);
        }
               
      
    }
    
    
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
