//
//  InputCollector.m
//  W1D2ContactList
//
//  Created by Karlo Pagtakhan on 03/08/2016.
//  Copyright © 2016 AccessIT. All rights reserved.
//

#import "InputCollector.h"


@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString{
  char inputString[255];
  NSString *returnString = [[NSString alloc]init];
  
  //Display the prompt message
  NSLog(@"%@", promptString);
  
  // Get the input from the user
  fgets(inputString, sizeof(inputString), stdin);

  //Copy the string to an NSString
  returnString = [NSString stringWithUTF8String:inputString];
  
  //Clean string
  returnString = [returnString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
  //returnString = [returnString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
  
  if (returnString == nil){
    returnString = [[NSString alloc] init];
  }
  
  return returnString;
  
}

@end
