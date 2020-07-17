//
//  main.m
//  ThreadPra
//
//  Created by 陈赐常 on 2020/7/12.
//  Copyright © 2020 陈赐常. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
// NSInvocationOperation 操作执行的方法
void operationSelector( NSDictionary *dict)
{
    // 接收传进来的dict
    NSLog(@"dictValue = %@", [dict valueForKey:@"key"]);
    sleep(2);  // 加个睡眠模仿耗时操作
    NSLog(@"currentThread = %@", [NSThread currentThread]);
    NSLog(@"mainThread = %@", [NSThread mainThread]);
}

void testNSInvationOperation()
{
    NSOperationQueue *operationQueue = [[NSOperationQueue alloc] init]; //初始化操作队列
        [operationQueue setMaxConcurrentOperationCount:3];                  //同时容许几个线程在执行
        
        // 可以传递一个 NSObject 给operation的操作方法
        NSDictionary *dict = [NSDictionary dictionaryWithObject:@"value1" forKey:@"key"];
        NSInvocationOperation *op = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(operationSelector:) object:dict];
        NSInvocationOperation *op1 = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(operationSelector:) object:dict];
        NSInvocationOperation *op2 = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(operationSelector:) object:dict];
        NSInvocationOperation *op3 = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(operationSelector:) object:dict];
        NSInvocationOperation *op4 = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(operationSelector:) object:dict];
     
        [operationQueue addOperation:op];
        [operationQueue addOperation:op1];
        [operationQueue addOperation:op2];
        [operationQueue addOperation:op3];
        [operationQueue addOperation:op4];
}
*/

//从执行结果可以看出， NSBlockOperation是优先使用主线程，主线程在忙的情况下再使用子线程。
void testNSBlockOperation()
{
    NSBlockOperation *op = [NSBlockOperation blockOperationWithBlock:^{
            NSLog(@"BlockOperation 1 begin");
            sleep(2);  // 加个睡眠模仿耗时操作
            NSLog(@"BlockOperation 1 currentThread = %@", [NSThread currentThread]);
            NSLog(@"BlockOperation 1 mainThread    = %@", [NSThread mainThread]);
            NSLog(@"BlockOperation 1 end");
        }];
        [op addExecutionBlock:^{
            NSLog(@"BlockOperation 2 begin");
            sleep(2);
            NSLog(@"BlockOperation 2 currentThread = %@", [NSThread currentThread]);
            NSLog(@"BlockOperation 2 mainThread    = %@", [NSThread mainThread]);
            NSLog(@"BlockOperation 2 end");
        }];
        [op addExecutionBlock:^{
            NSLog(@"BlockOperation 3 begin");
            sleep(2);
            NSLog(@"BlockOperation 3 currentThread = %@", [NSThread currentThread]);
            NSLog(@"BlockOperation 3 mainThread    = %@", [NSThread mainThread]);
            NSLog(@"BlockOperation 3 end");
        }];
        [op addExecutionBlock:^{
            NSLog(@"BlockOperation 4 begin");
            sleep(2);
            NSLog(@"BlockOperation 4 currentThread = %@", [NSThread currentThread]);
            NSLog(@"BlockOperation 4 mainThread    = %@", [NSThread mainThread]);
            NSLog(@"BlockOperation 4 end");
        }];
        [op addExecutionBlock:^{
            NSLog(@"BlockOperation 5 begin");
            sleep(2);
            NSLog(@"BlockOperation 5 currentThread = %@", [NSThread currentThread]);
            NSLog(@"BlockOperation 5 mainThread    = %@", [NSThread mainThread]);
            NSLog(@"BlockOperation 5 end");
        }];
        [op addExecutionBlock:^{
            NSLog(@"BlockOperation 6 begin");
            sleep(2);
            NSLog(@"BlockOperation 6 currentThread = %@", [NSThread currentThread]);
            NSLog(@"BlockOperation 6 mainThread    = %@", [NSThread mainThread]);
            NSLog(@"BlockOperation 6 end");
        }];
        [op addExecutionBlock:^{
            NSLog(@"BlockOperation 7 begin");
            sleep(2);
            NSLog(@"BlockOperation 7 currentThread = %@", [NSThread currentThread]);
            NSLog(@"BlockOperation 7 mainThread    = %@", [NSThread mainThread]);
            NSLog(@"BlockOperation 7 end");
        }];
        
        NSLog(@"start");
        [op start];
        NSLog(@"end");
}


void testForGCDWithSerialQueue(void)
{
    dispatch_queue_t serialQueue = dispatch_queue_create("serialQueue", NULL);
   
    dispatch_async(serialQueue, ^{

        NSLog(@"Do some work hear on serial async %@",[NSThread currentThread]);
    });
   
    dispatch_sync(serialQueue, ^{
        NSLog(@"Do some more work here on serial sync %@",[NSThread currentThread]);
    });
   
    NSLog(@"serial blocks serial have completed");
}

void testForGCDwithGlobalQueue(void)
{
    dispatch_queue_t globalQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT,0);
    dispatch_block_t ablk =^{
         NSLog(@"Do some work hear on global async %@",[NSThread currentThread]);
    };
    dispatch_async(globalQueue,ablk);
    
    dispatch_block_t blk =^{
         NSLog(@"Do some work hear on global sync  %@",[NSThread currentThread]);
    };
    dispatch_sync(globalQueue, blk);
    NSLog(@"global blocks have completed");
}


void addsome(void)
{
    NSLog(@"print this %s",__FUNCTION__);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        dispatch_queue_t globalQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
//
//        dispatch_block_t bk ;
//        dispatch_queue_t my_serial_queue;
//        my_serial_queue = dispatch_queue_create("com.apress.MySerialQueue1", NULL);
//        dispatch_async(my_serial_queue, ^{NSLog(@"serial task 1");});
//
//        __block int value = 8;
//        int (^square_block)(int number) = ^(int number){return value * value;};
//        int result = square_block(5);
//        printf("Result is :%d\n",result);
//        value = 9;
//        result = square_block(5);
//        printf("Result is :%d\n",result);
//
//        testForGCDwithGlobalQueue();
//        testForGCDWithSerialQueue();
        testNSBlockOperation();
        sleep(12);
    }
    return 0;
}
