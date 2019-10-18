//
//  BitMaskCathegory.swift
//  WarFly
//
//  Created by Stanislav Teslenko on 13.10.2019.
//  Copyright © 2019 Stanislav Teslenko. All rights reserved.
//

import Foundation


struct BitMaskCathegory: OptionSet {
    
    let rawValue: UInt32
    
    static let none = BitMaskCathegory(rawValue: 0 << 0)    //00000000000...0    0
    
    static let player = BitMaskCathegory(rawValue: 1 << 0)  //00000000000...1    1
    static let enemy = BitMaskCathegory(rawValue: 1 << 1)   //00000000000..10    2
    static let powerUp = BitMaskCathegory(rawValue: 1 << 2) //00000000000.100    4
    static let shot = BitMaskCathegory(rawValue: 1 << 3)    //0000000000.1000    8
    
    static let all = BitMaskCathegory(rawValue: UInt32.max) //1111111111.1111
    
    
   
}
