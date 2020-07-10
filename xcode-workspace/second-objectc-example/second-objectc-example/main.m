//
//  main.m
//  second-objectc-example
//
//  Created by 陈赐常 on 2020/7/9.
//  Copyright © 2020 陈赐常. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSFileManager *fileManager = [NSFileManager defaultManager];
        NSError *error;
        NSString *path = @"/Users/chencichang/Documents/xcode-study/xcode-study";
        NSArray *fileList = [fileManager contentsOfDirectoryAtPath:path error:&error];
        if (error) {
            NSLog(@"getFileList Failed:%@",[error localizedDescription]);
        }else{
            NSLog(@"get files:%@",fileList);
        }
        
        NSFileManager *manager = [NSFileManager defaultManager];
        NSString *home = [@"/Users/chencichang/Documents/xcode-study/xcode-study" stringByExpandingTildeInPath];
        NSDirectoryEnumerator *direnum = [manager enumeratorAtPath:home];
        NSMutableArray *files = [NSMutableArray arrayWithCapacity:42];
        NSString *filename;
        while (filename = [direnum nextObject]) {
            NSLog(@"%@",filename);
            if([[filename pathExtension] isEqualTo:@"md"]){
                [files addObject: filename];
            }
        }
        NSLog(@"files:%@",files);
    }
    return 0;
}
