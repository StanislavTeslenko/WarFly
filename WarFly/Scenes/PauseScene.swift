//
//  PauseScene.swift
//  WarFly
//
//  Created by Stanislav Teslenko on 13.10.2019.
//  Copyright © 2019 Stanislav Teslenko. All rights reserved.
//

import SpriteKit

class PauseScene: ParentScene {
 
    override func didMove(to view: SKView) {
        
        setHeader(withName: "pause", andBackGround: "header_background")
        
        let titles = ["restart", "options", "resume"]
        
        for (index, title) in titles.enumerated() {
            
            let button = ButtonNode(titled: title, backgroundName: "button_background")
            button.position = CGPoint(x: self.frame.midX, y: self.frame.midY - CGFloat(100 * index))
            button.name = title
            button.label.name = title
            addChild(button)
        }
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        if let gameScene = sceneManager.gameScene {
            if gameScene.isPaused == false {
                gameScene.isPaused = true
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let location = touches.first!.location(in: self)
        let node = self.atPoint(location)
        
        if node.name == "restart" {
            
            sceneManager.gameScene = nil
            let transition = SKTransition.crossFade(withDuration: 0.5)
            let gameScene = GameScene(size: self.size)
            gameScene.scaleMode = .aspectFill
            self.scene?.view?.presentScene(gameScene, transition: transition)
            
        } else if node.name == "resume" {
            
            let transition = SKTransition.crossFade(withDuration: 0.5)
            guard let gameScene = sceneManager.gameScene else {return}
            gameScene.scaleMode = .aspectFill
            self.scene!.view?.presentScene(gameScene, transition: transition)
            
        } else if node.name == "options" {
            
            let transition = SKTransition.crossFade(withDuration: 0.5)
            let optionScene = OptionsScene(size: self.size)
            optionScene.backScene = self
            optionScene.scaleMode = .aspectFill
            self.scene!.view?.presentScene(optionScene, transition: transition)
        }
    }
    
    

}
