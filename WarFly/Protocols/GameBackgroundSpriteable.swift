//
//  GameBackgroundSpriteable.swift
//  WarFly
//
//  Created by Stanislav Teslenko on 10/5/19.
//  Copyright © 2019 Stanislav Teslenko. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit

protocol GameBackgroundSpriteable {
    
    static func populate(at point: CGPoint?) -> Self
    static func randomPoint() -> CGPoint
}

extension GameBackgroundSpriteable {
    
    static func randomPoint() -> CGPoint {
        
        let screen = UIScreen.main.bounds
        let distribution = GKRandomDistribution(lowestValue: Int(screen.size.height) + 400, highestValue: Int(screen.size.height) + 500)
        let y = CGFloat(distribution.nextInt())
        let x = CGFloat(GKRandomSource.sharedRandom().nextInt(upperBound: Int(screen.size.width)))
        
        return CGPoint(x: x, y: y)
        
    }
    
    
}

