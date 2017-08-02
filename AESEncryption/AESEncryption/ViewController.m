//
//  ViewController.m
//  AESEncryption
//
//  Created by 王宇 on 2017/8/2.
//  Copyright © 2017年 wy. All rights reserved.
//

#import "ViewController.h"
#import "AESCommonCrypto.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textFIeld;//输入的类容
@property (weak, nonatomic) IBOutlet UILabel *contentLbl;//解密可以
@property (weak, nonatomic) IBOutlet UILabel *encryptoLbl;//加密类容

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark  加密
- (IBAction)encrypto:(id)sender {
    NSString *encryptoStr           = [AESCommonCrypto encryptAESData:self.textFIeld.text];
    self.encryptoLbl.text           = encryptoStr;
    
}

#pragma mark 解密
- (IBAction)decrypt:(id)sender {
    NSString *decryptStr            = [AESCommonCrypto decryptAESData:self.encryptoLbl.text];
    self.contentLbl.text            = decryptStr;
}
#pragma mark  重置
- (IBAction)deleteContent:(id)sender {
    self.textFIeld.text             = self.contentLbl.text      = self.encryptoLbl.text = @"";
}

@end
