//
//  ARXAlertView.m
//  authAlert
//
//  Created by jinren on 3/30/19.
//  Copyright © 2019 jinren. All rights reserved.
//

#import "ARXAlertView.h"

#define LABEL_WIDTH     100
#define LABEL_HEIGH     25

@implementation ARXAlertView

- (instancetype)initWithFrame:(NSRect)frameRect
{
    self = [super initWithFrame:frameRect];
    if (self) {
        _usernameLable = [[NSTextField alloc] initWithFrame:NSMakeRect(0, LABEL_HEIGH, LABEL_WIDTH, LABEL_HEIGH)];
        _usernameLable.stringValue = @"User Name :";
        _usernameLable.alignment = NSTextAlignmentRight;
        _usernameLable.editable = NO;
        _usernameLable.drawsBackground = NO;
        _usernameLable.backgroundColor = [NSColor clearColor];
        [_usernameLable sizeToFit];
        
        [self addSubview:_usernameLable];
        _usernameTF = [[NSTextField alloc] initWithFrame:NSMakeRect(100, LABEL_HEIGH, LABEL_WIDTH, LABEL_HEIGH)];
        [self addSubview:_usernameTF];
        
        _passwordlabel = [[NSTextField alloc] initWithFrame:NSMakeRect(0, 0, LABEL_WIDTH, LABEL_HEIGH)];
        _passwordlabel.stringValue = @"Password :";
        _passwordlabel.alignment = NSTextAlignmentRight;
        [self addSubview:_passwordlabel];
        _passwordlabel.editable = NO;
        [_usernameLable sizeToFit];
        
        _passwordTF = [[NSSecureTextField alloc] initWithFrame:NSMakeRect(100, 0, LABEL_WIDTH, LABEL_HEIGH)];
        [self addSubview:_passwordTF];
        
        return self;
    }
    return nil;
}


- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}


@end
