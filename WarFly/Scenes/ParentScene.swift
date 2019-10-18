//
//  ParentScene.swift
//  WarFly
//
//  Created by Stanislav Teslenko on 13.10.2019.
//  Copyright © 2019 Stanislav Teslenko. All rights reserved.
//

import SpriteKit

class ParentScene: SKScene {
    
    let gameSettings = GameSettings()
    let sceneManager = SceneManager.shared
    var backScene: SKScene?
    
    func setHeader(withName name: String?, andBackGround backgroundName: String) {
        
        let header = ButtonNode(titled: name, backgroundName: backgroundName)
        header.position = CGPoint(x: self.frame.midX, y: self.frame.midY + 150)
        self.addChild(header)
        
    }
    
    override init(size: CGSize) {
        super.init(size: size)
        backgroundColor = SKColor(red: 0.15, green: 0.15, blue: 0.3, alpha: 1)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
