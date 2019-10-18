//
//  SKPhysicsBody+Extension.swift
//  WarFly
//
//  Created by Stanislav Teslenko on 13.10.2019.
//  Copyright © 2019 Stanislav Teslenko. All rights reserved.
//

import SpriteKit

extension SKPhysicsBody {
    
    var cathegoty: BitMaskCathegory {
        get {
            return BitMaskCathegory(rawValue: self.categoryBitMask)
        }
        set {
            self.categoryBitMask = newValue.rawValue
        }
    }
    
    
}
