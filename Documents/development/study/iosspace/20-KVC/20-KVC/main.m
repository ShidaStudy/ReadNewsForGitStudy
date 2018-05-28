//
//  main.m
//  20-KVC
//
//  Created by mzgkunqain on 15/12/3.
//  Copyright (c) 2015年 mzg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p1 = [[Person alloc] init];
        p1.name = @"张三";
        
        Dog *dog = [[Dog alloc] init];
        dog.name = @"吉娃娃";
        
        //p1.dog = dog;
       
        [p1 setValue:@"李四" forKeyPath:@"name"];
        [p1 setValue:@10 forKeyPath:@"age"];
        [p1 setValue:dog forKey:@"dog"];
        NSLog(@"%@",p1.dog.name);
    }
    return 0;
}