//
//  main.m
//  W1D5PigLatin
//
//  Created by Karlo Pagtakhan on 03/11/2016.
//  Copyright © 2016 AccessIT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigMe.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {

    NSString *tmpString = [[NSString alloc] init];
    
    tmpString = @"Pig pig pig";
    
    NSLog([tmpString stringByPigLatinization]);
    
  }
    return 0;
}
