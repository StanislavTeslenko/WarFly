//
//  Background.swift
//  WarFly
//
//  Created by Stanislav Teslenko on 10/3/19.
//  Copyright © 2019 Stanislav Teslenko. All rights reserved.
//

import SpriteKit

class Background: SKSpriteNode {
    
    static func populateBackground(at point: CGPoint) -> Background {
        
        let background = Background(imageNamed: "background")
        background.position = point
        background.zPosition = 0
        
        return background
    }
    

}
