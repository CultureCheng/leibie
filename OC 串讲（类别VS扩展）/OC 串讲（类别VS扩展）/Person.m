//
//  Person.m
//  OC 串讲（类别VS扩展）
//
//  Created by qingyun on 16/4/15.
//  Copyright © 2016年 QingYun. All rights reserved.
//

#import "Person.h"
//#import "Person_print.h" //必须放在.m
@interface Person () //一般直接把扩展写在.m中
{
    NSString *_name;
}
@property(nonatomic,assign)int age;
-(void)showPerson;
@end
@implementation Person
-(void)showPerson
{
    NSLog(@"%@,%d",_name,_age);
}
-(void)showInfo
{
    [self showPerson];
}
@end
