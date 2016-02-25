//
//  main.m
//  Stringz
//
//  Created by brandon kehl on 2/4/16.
//  Copyright © 2016 brandonkehl. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
    
        NSMutableString *str = [[NSMutableString alloc]  init];
        for(int i = 0; i < 10; i++){
            [str appendString:@"Brandon is cool!\n"]; // Notice how it is not being printed out. It's because its being written to a file.
           
        }
        
        // Declare a pointer to an NSError object, but do not instantiate it.
        // The NSError instance will only be created if there is, in fact, an error.
        NSError *error; // Hasn't yet been instantiated
        
        
        // Pass the NSError pointer by reference to the NSString method
        BOOL success = [str writeToFile:@"/tmp/cool.txt "
                             atomically:YES
                               encoding:NSUTF8StringEncoding
                                  error:&error]; // The method expects an address where it can put a pointer to an instance of NSError
        
        // Test the returned BOOl, and query the NSError if the write failed
        if(success){
            NSLog(@"done writing /tmp/cool.txt");
        
        } else {
        
            NSLog(@"writing /tmp/cool.txt failed: %@", [error localizedDescription]);
        
        }
        
        
        
        
        
        
        
    
    
    }
    return 0;
}
