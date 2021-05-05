//
//  BigIntfile.swift
//  RNdemo
//
//  Created by TAOLIU on 5/5/21.
//

import Foundation
import BigInt

@objc(BigIntDemo) class BigIntDemo: NSObject {
  @objc static func requiresMainQueueSetup() -> Bool {return true}
  
  @objc static var privateKeyResult = ""
  
  @objc func getKey() {
    
    let result = DHKeyExchangeManager.generateDHExchangeKeys(generator: "9", primeNumber: "1");
    print("iOS end >> privatekey =  " + result.privateKey! )
    
    BigIntDemo.privateKeyResult = result.privateKey!
    
  }

  @objc func callbackToGetKey(_ callback: RCTResponseSenderBlock) {
    callback([NSNull(), BigIntDemo.privateKeyResult])
  }
  
}



