//
//  ViewController.m
//  authAlert
//
//  Created by jinren on 3/30/19.
//  Copyright © 2019 jinren. All rights reserved.
//

#import "ViewController.h"
#import "ARXAlertView.h"
#define LABEL_WIDTH     100
#define LABEL_HEIGH     20

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (IBAction)showAlert:(id)sender {
//    NSTextView *accessory = [[NSTextView alloc] initWithFrame:NSMakeRect(0,0,200,15)];
//    NSFont *font = [NSFont systemFontOfSize:[NSFont systemFontSize]];
//    NSDictionary *textAttributes = [NSDictionary dictionaryWithObject:font forKey:NSFontAttributeName];
//    [accessory insertText:[[NSAttributedString alloc] initWithString:@"Text in accessory view." attributes:textAttributes]];
//    [accessory setEditable:YES];
//    [accessory setDrawsBackground:NO];
    
    
//    NSView* accessory = [[NSView alloc] initWithFrame:NSMakeRect(0, 0, 200, 50)];
//    NSTextField* userNameTF = [[NSTextField alloc ] initWithFrame:NSMakeRect(10, 10, 200, 15)];
//    NSSecureTextField* passwordTF = [[NSSecureTextField alloc] initWithFrame:NSMakeRect(10, 35, 300, 15)];
//
//    [accessory addSubview:userNameTF];
//    [accessory addSubview:passwordTF];

//    NSArray *nibObjects = [[NSArray alloc] init];
//    ARXAlertView* accessory = nil;
//    [[NSBundle bundleForClass:[self class]] loadNibNamed:@"View" owner:self topLevelObjects:&nibObjects];
//    if ([nibObjects[0] isKindOfClass:[NSView class]]){
//        accessory = nibObjects[0];
//    }
//
    
//    ARXAlertView* accessory = [[ARXAlertView alloc] initWithFrame:NSMakeRect(0, 0, 250, 100)];
    
    NSView* accessory = [[NSView alloc] initWithFrame:NSMakeRect(0, 20, 200, 60)];
    
     NSTextView *usernameLable = [[NSTextView alloc] initWithFrame:NSMakeRect(0, 20, LABEL_WIDTH, LABEL_HEIGH)];
    usernameLable.string = @"User Name :";
    usernameLable.alignment = NSTextAlignmentRight;
    usernameLable.editable = NO;
    [usernameLable  setDrawsBackground:NO];
    
    [accessory addSubview:usernameLable];
    
    NSTextField* usernameTF = [[NSTextField alloc] initWithFrame:NSMakeRect(100, 20, LABEL_WIDTH, LABEL_HEIGH)];
    [accessory addSubview:usernameTF];
    
    NSTextView* passwordLabel = [[NSTextView alloc] initWithFrame:NSMakeRect(0, 0, LABEL_WIDTH, LABEL_HEIGH)];
    passwordLabel.string = @"Password :";
    passwordLabel.alignment = NSTextAlignmentRight;
    [passwordLabel  setDrawsBackground:NO];
    passwordLabel.editable = NO;
    [accessory addSubview:passwordLabel];
    
    NSSecureTextField* passwordTF = [[NSSecureTextField alloc] initWithFrame:NSMakeRect(100, 0, LABEL_WIDTH, LABEL_HEIGH)];
    [accessory addSubview:passwordTF];
    
    NSAlert *alert = [[NSAlert alloc] init];
    alert.messageText = @"Proxy server";
    [alert setInformativeText:@"10.79.36.243:8080"];
    alert.accessoryView = accessory;
    [alert runModal];
    
    NSString *username = usernameTF.stringValue;
    NSString *password = passwordTF.stringValue;

    NSLog(@"show Alert end, %@ %@",username, password);
}


@end
