//
//  ViewController.m
//  UserLogin
//
//  Created by 方舟 on 15/5/25.
//  Copyright (c) 2015年 方舟. All rights reserved.
//

#import "ViewController.h"

/*UI的代理委托
 用处：当UI无法通过添加target监听时，用于监听UI事件，负责在两个对象间传递消息或数据
 1、通过ctrl拖动使使父UI成为子UI的代理
 2、遵守代理协议
 3、编写协议方法
 
 */

@interface ViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *userName;
@property (weak, nonatomic) IBOutlet UITextField *pwdName;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.userName becomeFirstResponder];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField == self.userName) {
        [self.pwdName becomeFirstResponder];
    }
    else{
        [self loginButton];
        [self.pwdName resignFirstResponder];
    }
    return YES;
}

- (IBAction)loginButton {
    NSLog(@"%@ %@",self.userName.text,self.pwdName.text);
}


@end
