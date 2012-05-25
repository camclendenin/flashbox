//  Flashbox.h
//  
//  Flashbox lets you easily add "Loading" screens with a spinner throughout your app.
//  
//
//  Created by Cameron on 2/12/12.
//

#import <Foundation/Foundation.h>

@interface Flashbox : NSObject {

    UILabel *flashbox;                 // flashbox 
    Flashbox *instance;
}

+(Flashbox*) instance;   

// Shows a temporary message box to display a message and then fade away immediately after
+(void) flashMessage:(NSString*)message;

@end
