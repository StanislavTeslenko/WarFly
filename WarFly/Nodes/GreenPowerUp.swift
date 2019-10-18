//
//  GreenPowerUp.swift
//  WarFly
//
//  Created by Stanislav Teslenko on 10.10.2019.
//  Copyright © 2019 Stanislav Teslenko. All rights reserved.
//

import SpriteKit

class GreenPowerUp: PowerUp {

init() {
    let textureAtlas = Assets.shared.greenPowerUpAtlas
    super.init(textureAtlas: textureAtlas)
    name = "greenPowerUp"
}

required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
}
    
}
