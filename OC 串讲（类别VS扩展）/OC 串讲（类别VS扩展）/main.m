//
//  main.m
//  OC 串讲（类别VS扩展）
//
//  Created by qingyun on 16/4/15.
//  Copyright © 2016年 QingYun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *arr1=@[@"唐三藏",@"孙悟空",@"猪刚鬣",@"沙悟净"];
        NSLog(@"arr1=%@",arr1);
        
        Person *p=[Person new];
        [p setValue:@"白骨精" forKey:@"name"];
        [p setValue:@(8888) forKey:@"age"];
        NSLog(@"%@,%d",[p valueForKey:@"name"],[[p valueForKey:@"age"] intValue]);
        [p showInfo];
    }
    return 0;
}
