//
//  BigIntfile.m
//  RNdemo
//
//  Created by TAOLIU on 5/5/21.
//

#import <Foundation/Foundation.h>
#import "React/RCTBridgeModule.h"

//to expose methods to react native
@interface RCT_EXTERN_MODULE(BigIntDemo,NSObject)
//methods in BigIntfile.swift
RCT_EXTERN_METHOD(getKey)
RCT_EXTERN_METHOD(callbackToGetKey: (RCTResponseSenderBlock)callback)
@end
