//
//  BluePowerUp.swift
//  WarFly
//
//  Created by Stanislav Teslenko on 10.10.2019.
//  Copyright © 2019 Stanislav Teslenko. All rights reserved.
//

import SpriteKit

class BluePowerUp: PowerUp {
    
    init() {
        let textureAtlas = Assets.shared.bluePowerUpAtlas
        super.init(textureAtlas: textureAtlas)
        name = "bluePowerUp"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
