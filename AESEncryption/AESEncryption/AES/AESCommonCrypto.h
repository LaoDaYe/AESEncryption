//
//  AESCommonCrypto.h
//  Newiosapp
//
//  Created by 王宇 on 17/01/01.
//  Copyright © 2016年  wy. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface AESCommonCrypto : NSObject
#pragma mark - AES加密
//将string转成带密码的data 
+(NSString*)encryptAESData:(NSString*)string;
#pragma mark - AES解密
//将带密码的data转成string
+(NSString*)decryptAESData:(NSString *)string;
@end
