//
//  LoginViewController.m
//  AttendanceSystem
//
//  Created by TamTran on 1/24/18.
//  Copyright © 2018 TrungTruc. All rights reserved.
//

#import "LoginViewController.h"
#import <MaterialControls/MDTextField.h>
#import "LoadingManager.h"

@interface LoginViewController ()<MDTextFieldDelegate>
@property (weak, nonatomic) IBOutlet MDTextField *tfEmail;
@property (weak, nonatomic) IBOutlet MDTextField *tfPassword;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    MDTextField *textField = [[MDTextField alloc] initWithFrame:CGRectMake(0, 0, 320, 50)];
//    textField.delegate = self;
//    textField.singleLine = true;
//    textField.maxCharacterCount = 30;
//    textField.errorMessage = @"Wrong password";
//    textField.errorColor = [UIColor redColor];
//    textField.secureTextEntry = true;
//    textField.label = @"Email";
//    textField.floatingLabel = true;
//    [self.tfEmail addSubview:textField];
//    [self.tfEmail layoutIfNeeded];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)didTouchLogin:(id)sender {
    [self.view endEditing:TRUE];
    [LoadingManager showLoadingViewInView:self.view];
    
    double delayInSeconds = 3;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        [LoadingManager hideLoadingViewForView:self.view];
        [_tfEmail setErrorMessage:@"Email is empty"];
        [_tfPassword setErrorMessage:@"Password is empty"];
        [_tfEmail setErrorColor:[UIColor redColor]];
        [_tfPassword setErrorColor:[UIColor redColor]];
    });
}


- (IBAction)didTouchForgotPassword:(id)sender {
    
    
}


@end
