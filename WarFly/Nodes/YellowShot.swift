//
//  YellowShot.swift
//  WarFly
//
//  Created by Stanislav Teslenko on 10.10.2019.
//  Copyright © 2019 Stanislav Teslenko. All rights reserved.
//

import SpriteKit

class YellowShot: Shot {
    
    init() {
        let textureAtlas = Assets.shared.yellowAmmoAtlas
        super.init(textureAtlas: textureAtlas)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
