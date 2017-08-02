# AESEncryption
# AES加密
*加密
```
#pragma mark - AES加密
//将string转成带密码的data
+(NSString*)encryptAESData:(NSString*)string
{
if (string.length==0) {
return @"";
}
//将nsstring转化为nsdata
NSData *data = [string dataUsingEncoding:NSUTF8StringEncoding];
//使用密码对nsdata进行加密
NSData *encryptedData = [data AES128EncryptWithKey:KEY gIv:IV];
//返回进行base64进行转码的加密字符串
return [self convertStringToHexStr:[CustomBase64 encode:encryptedData]];
}

```

*解密

```
#pragma mark - AES解密
//将带密码的data转成string
+(NSString*)decryptAESData:(NSString *)string
{
if (string.length==0) {
return @"";
}
//base64解密
NSData *decodeBase64Data=[CustomBase64 decode:[self stringFromHexString:string]];
//使用密码对data进行解密
NSData *decryData = [decodeBase64Data AES128DecryptWithKey:KEY gIv:IV];
//将解了密码的nsdata转化为nsstring
NSString *str = [[NSString alloc] initWithData:decryData encoding:NSUTF8StringEncoding];
return str;
}

```

#使用方法
* 导入 #import "AESCommonCrypto.h"

*加密
```
NSString *encryptoStr           = [AESCommonCrypto encryptAESData:self.textFIeld.text];

```
*解密
```
NSString *decryptStr            = [AESCommonCrypto decryptAESData:self.encryptoLbl.text];
```
![效果截图](https://github.com/wyxlh/AESEncryption/blob/master/Simulator%20Screen%20Shot%202017%E5%B9%B48%E6%9C%882%E6%97%A5%20%E4%B8%8A%E5%8D%8811.51.20.png);
