//
//  Spinner.h
//  
//  Spinner lets you easily add "Loading" screens with a spinner throughout your app.
//  
//
//  Created by Cameron on 2/12/12.
//

#import <Foundation/Foundation.h>

@interface Spinner : NSObject {

    UILabel *flashbox;                 // flashbox 
    Spinner *instance;
}

+(Spinner*) instance;   

// Shows a temporary message box to display a message and then fade away immediately after
+(void) flashbox:(NSString*)message;

@end
