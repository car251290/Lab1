//
//  main.m
//  Lab1
//
//  Created by Javier Carreno Reyna on 2018-09-04.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import <Foundation/Foundation.h>

NSString *getUserInput(NSString *prompt){
    char inputChars[255];
    NSLog(@"%@",prompt);
    fgets(inputChars,255,stdin);
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    
    //trim the string, new line and space of Inputstring
    return [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // insert code here...
        NSString *input =  getUserInput(@"Write Something: ");
        //uppercase
        NSLog(@"%@", [input uppercaseString]);
        //lowercase
        NSLog(@"%@", [input lowercaseString]);
        int inputInt = [input intValue];
        NSInteger inputNSInt = [input integerValue];
        //canada
        NSString *canadianized = [input stringByAppendingString:@",eh?"];
        [NSString stringWithFormat:@"%@/%@",input,@",eh?"];
        NSLog(@"%@", canadianized);
        //ends with ?
        NSString *last = [input substringFromIndex:[input length]-1];
        NSLog(@"%@", last);
        if([last isEqualToString:@"?"]){
            NSLog(@"%@",@"I don't know");
        }else if([last isEqualToString:@"!"]){
            NSLog(@"%@",@"Whoa, calm down!");
        }
        //replace splace with something else
        NSString *space = [input stringByReplacingOccurrencesOfString:@" " withString:@"-"];
        NSLog(@"%@",space);
        NSString *options = getUserInput(@"Choose the option: ");
        NSString *number = [input substringFromIndex: [input length] - 1];
      
        if([number isEqualToString:@"1"]) {
            NSLog(@"%@",[input uppercaseString]);
        } else if ([number isEqualToString:@"2"]) {
            NSLog(@"%@", [input lowercaseString]);
        } else if ([number isEqualToString:@"3"]) {
            int inputInt = [input intValue];
            NSInteger inputNSInt = [input integerValue];
        } else if ([number isEqualToString:@"4"]) {
            NSString *canadianize = [input stringByAppendingString: @", eh?"];
            NSLog(@"%@", canadianize);
        } else if ([number isEqualToString:@"4"])  {
            NSString *canadianize = [input stringByAppendingString: @", eh?"];
            NSLog(@"%@", canadianize);
        } else if ([number isEqualToString:@"4"])  {
            NSString *last = [input substringFromIndex: [input length] - 1];
            if ([last isEqualToString:@"?"]) {
                NSLog(@"%@",  @"I don't know");
            } else if ([last isEqualToString:@"!"]) {
                NSLog(@"%@", @"Whoa, calm down");
            }
        } else if ([number isEqualToString:@"5"])   {
            NSString *despace = [input stringByReplacingOccurrencesOfString:@" " withString:@"-"];
            NSLog(@"%@", despace);
        }
    }
    return 0;
}
