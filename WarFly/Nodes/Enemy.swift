//
//  Enemy.swift
//  WarFly
//
//  Created by Stanislav Teslenko on 09.10.2019.
//  Copyright © 2019 Stanislav Teslenko. All rights reserved.
//

import SpriteKit

class Enemy: SKSpriteNode {

    static var textureAtlas: SKTextureAtlas?
    var enemyTexture: SKTexture!
    
    init(enemyTexture: SKTexture) {
        let texture = enemyTexture
        super.init(texture: texture, color: .clear, size: CGSize(width: 221, height: 204))
        self.xScale = 0.5
        self.yScale = -0.5
        self.zPosition = 20
        self.name = "sprite"
        
        self.physicsBody = SKPhysicsBody(texture: texture, alphaThreshold: 0.5, size: self.size)
        self.physicsBody?.isDynamic = true
        self.physicsBody?.categoryBitMask = BitMaskCathegory.enemy.rawValue
        self.physicsBody?.collisionBitMask = BitMaskCathegory.none.rawValue
        self.physicsBody?.contactTestBitMask = BitMaskCathegory.player.rawValue | BitMaskCathegory.shot.rawValue
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
}

extension Enemy {
    
    func flySpiral() {
        
        let screenSize = UIScreen.main.bounds
        let timeHorizontal: Double = 3
        let timeVertical: Double = 5
        
        let moveLeft = SKAction.moveTo(x: 50, duration: timeHorizontal)
        moveLeft.timingMode = .easeInEaseOut
        let moveRight = SKAction.moveTo(x: screenSize.width - 50, duration: timeHorizontal)
        moveRight.timingMode = .easeInEaseOut
        
        let randomNumber = Int(arc4random_uniform(2))
        let sideMovementSequence = randomNumber == EnemyDirection.left.rawValue ? SKAction.sequence([moveLeft, moveRight]) : SKAction.sequence([moveRight, moveLeft])
         
        let foreverMovement = SKAction.repeatForever(sideMovementSequence)
        let forwardMovement = SKAction.moveTo(y: -105, duration: timeVertical)
        let groupMovement = SKAction.group([foreverMovement, forwardMovement])
        
        self.run(groupMovement)
    }
    
}

enum EnemyDirection: Int {
    
    case left = 0
    case right = 1
}
