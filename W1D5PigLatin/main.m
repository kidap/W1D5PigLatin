//
//  main.m
//  W1D5PigLatin
//
//  Created by Karlo Pagtakhan on 03/11/2016.
//  Copyright © 2016 AccessIT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigMe.h"
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {

    NSString *tmpString = [[NSString alloc] init];
    InputCollector *inputHandler = [InputCollector new];
    
    //Input string
    tmpString = [ inputHandler inputForPrompt:@"Enter a string:"];
    
    //PiggyFy
    NSLog(@"Pig Latin: %@",[tmpString stringByPigLatinization]);
    
  }
    return 0;
}
