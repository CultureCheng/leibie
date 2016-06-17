//
//  NSArray+show.m
//  OC 串讲（类别VS扩展）
//
//  Created by qingyun on 16/4/15.
//  Copyright © 2016年 QingYun. All rights reserved.
//

#import "NSArray+show.h"

@implementation NSArray (show)

-(NSString *)descriptionWithLocale:(id)locale
{
    NSMutableString *mulstr=[NSMutableString string];
    [mulstr appendString:@"(\n"];
//    for (id obj in self)
//    {
//        //self指的是当前数组！obj为数组元素
//        if ([obj isEqualTo:[self lastObject]])
//        {
//            //最后一个元素
//            [mulstr appendFormat:@"\t%@\n",obj];
//        }
//        else
//        {
//            [mulstr appendFormat:@"\t%@,\n",obj];//有逗号
//        }
//    }
    for (int i=0; i<self.count; i++)
    {
        if (i==self.count-1)
        {
            //最后一个元素
            [mulstr appendFormat:@"\t%@\n",self[i]];
        }
        else
        {
            [mulstr appendFormat:@"\t%@,\n",self[i]];
        }
    }
    [mulstr appendString:@")"];
    return mulstr;
}

@end
