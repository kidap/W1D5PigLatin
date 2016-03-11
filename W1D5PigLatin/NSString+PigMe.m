//
//  NSString+PigMe.m
//  W1D5PigLatin
//
//  Created by Karlo Pagtakhan on 03/11/2016.
//Users/karlopagtakhan/Programming/Exercises/Day4/W1D5PigLatin/W1D5PigLatin/NSString+PigMe.h/  Copyright © 2016 AccessIT. All rights reserved.
//

#import "NSString+PigMe.h"

@implementation NSString (PigMe)


-(NSString *) stringByPigLatinization{
  NSString *finalString = @"";
  NSString *tmpString = @"";
  
  NSArray *words = [self componentsSeparatedByString:@" "];
  
  for (NSString *word in words){
    tmpString = word;
    
    //Check if the first character is a consonant
    if ([tmpString rangeOfCharacterFromSet:[NSCharacterSet characterSetWithCharactersInString:@"aeiuoAEIUO"]].location == 1){
      tmpString = [tmpString stringByAppendingString:[word substringToIndex:1]];
      tmpString = [NSString stringWithString:[tmpString substringWithRange:NSMakeRange(1, [word length])]];
      tmpString = [NSString stringWithFormat:@"%@%@",tmpString,@"ay"];
    } else{
      tmpString = word;
    }
    
    //Append string
    finalString = [finalString stringByAppendingString:[NSString stringWithFormat:@"%@ ",tmpString]];
  }
  
  return finalString;
}

@end
