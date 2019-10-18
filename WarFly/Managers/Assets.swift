//
//  Assets.swift
//  WarFly
//
//  Created by Stanislav Teslenko on 10.10.2019.
//  Copyright © 2019 Stanislav Teslenko. All rights reserved.
//

import SpriteKit

class Assets {
    
    /// Create singleton
    static let shared = Assets()
    
    var isLoaded = false
    
    let playerPlaneAtlas = SKTextureAtlas(named: "PlayerPlane")
    let greenPowerUpAtlas = SKTextureAtlas(named: "GreenPowerUp")
    let bluePowerUpAtlas = SKTextureAtlas(named: "BluePowerUp")
    let enemy_1Atlas = SKTextureAtlas(named: "Enemy_1")
    let enemy_2Atlas = SKTextureAtlas(named: "Enemy_2")
    let yellowAmmoAtlas = SKTextureAtlas(named: "YellowAmmo")
    
    func preloadAssets() {
        
        playerPlaneAtlas.preload {
            print("playerPlaneAtlas preloaded")
        }
        
        greenPowerUpAtlas.preload {
            print("greenPowerUpAtlas preloaded")
        }
        
        bluePowerUpAtlas.preload {
            print("bluePowerUpAtlas preloaded")
        }
        
        enemy_1Atlas.preload {
            print("enemy_1Atlas preloaded")
        }
        
        enemy_2Atlas.preload {
            print("enemy_2Atlas preloaded")
        }
        
        yellowAmmoAtlas.preload {
            print("yellowAmmoAtlas preloaded")
        }
        
    }
    
}
