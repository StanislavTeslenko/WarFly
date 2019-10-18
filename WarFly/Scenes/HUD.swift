//
//  HUD.swift
//  WarFly
//
//  Created by Stanislav Teslenko on 13.10.2019.
//  Copyright © 2019 Stanislav Teslenko. All rights reserved.
//

import SpriteKit

class HUD: SKNode {
    
    let scoreBackground = SKSpriteNode(imageNamed: "scores")
    var score: Int = 0{
        didSet {
            scoreLabel.text = score.description
        }
    }
    let scoreLabel = SKLabelNode(text: "0")
    let menuButton = SKSpriteNode(imageNamed: "menu")
    let life1 = SKSpriteNode(imageNamed: "life")
    let life2 = SKSpriteNode(imageNamed: "life")
    let life3 = SKSpriteNode(imageNamed: "life")
    
    
    func configureUI(screenSize: CGSize) {

    scoreBackground.anchorPoint = CGPoint(x: 0, y: 1.0)
    scoreBackground.position = CGPoint(x: 10, y: screenSize.height - 10)
    scoreBackground.zPosition = 99
    addChild(scoreBackground)
    
    scoreLabel.horizontalAlignmentMode = .right
    scoreLabel.verticalAlignmentMode = .center
    scoreLabel.position = CGPoint(x: 185, y: -35)
    scoreLabel.zPosition = 100
    scoreLabel.fontName = "AmericanTypewriter-Bold"
    scoreLabel.fontSize = 30
    scoreBackground.addChild(scoreLabel)
    
    menuButton.anchorPoint = CGPoint(x: 0, y: 0)
    menuButton.position = CGPoint(x: 20, y: 20)
    menuButton.zPosition = 100
    menuButton.name = "pause"
        
    addChild(menuButton)
    
    let lifes = [life1, life2, life3]
    for (index, life) in lifes.enumerated() {
        life.anchorPoint = CGPoint(x: 0.0, y: 0.0)
        life.position = CGPoint(x: screenSize.width - CGFloat(index + 1) * (life.size.width + 3), y: 20)
        life.zPosition = 100
        addChild(life)
    }

}

}
