//
//  Spinner.m
//  
// 
//
//  Created by Cameron on 2/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//


#import "Spinner.h"
#import <QuartzCore/QuartzCore.h>

@implementation Spinner
static Spinner *instance = nil;

+ (Spinner*) instance {

    if (instance == nil) {
         instance =  [[Spinner alloc] init];  
    }
    return instance;
}

+(void) flashbox:(NSString*)message {
    
    // customize properties as desired
    UIColor * _backgroundColor =   [UIColor colorWithWhite:0.0 alpha:.8];
    UIColor * _textColor = [UIColor colorWithWhite:1. alpha:1.0];
    UIColor * _textShadowColor = [UIColor colorWithWhite:.08 alpha:1.0];
    UIFont  * _font =      [UIFont fontWithName:@"HelveticaNeue-Medium" size:18.0];
    
    UILabel *flashbox = [[[UILabel alloc] initWithFrame:CGRectMake(80, 200, 160, 100)] autorelease];
    flashbox.backgroundColor = _backgroundColor;
    flashbox.layer.cornerRadius = 8.0f;
    flashbox.textAlignment = UITextAlignmentCenter;
    flashbox.textColor = _textColor;
    flashbox.shadowColor = _textShadowColor;
    flashbox.shadowOffset = CGSizeMake(0, -1);
    flashbox.font = _font;
    flashbox.text = message;
    flashbox.alpha = 0;
    flashbox.adjustsFontSizeToFitWidth = YES;
    
    // ... and the magic
    [[UIApplication sharedApplication].keyWindow addSubview:flashbox];
    [flashbox setAlpha:1.0];
    
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDelay:.8];
    [UIView setAnimationDuration:.4];
    flashbox.alpha = 0;
    [UIView commitAnimations];
}


@end
