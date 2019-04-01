//
//  ARXAlertView.h
//  authAlert
//
//  Created by jinren on 3/30/19.
//  Copyright © 2019 jinren. All rights reserved.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface ARXAlertView : NSView
@property (strong, nonatomic)  NSTextField *usernameLable;
@property (strong, nonatomic)  NSTextField *passwordlabel;
@property (strong, nonatomic)  NSTextField *usernameTF;
@property (strong, nonatomic)  NSSecureTextField *passwordTF;

@end

NS_ASSUME_NONNULL_END
