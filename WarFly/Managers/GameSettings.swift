//
//  GameSettings.swift
//  WarFly
//
//  Created by Stanislav Teslenko on 18.10.2019.
//  Copyright © 2019 Stanislav Teslenko. All rights reserved.
//

import UIKit

class GameSettings: NSObject {
    
    let ud = UserDefaults.standard
    
    var isMusic = true
    var isSound = true
    
    let musicKey = "music"
    let soundKey = "sound"
    
    var currentScore = 0
    var highscore: [Int] = []
    let highscoreKey = "highscore"
    
    override init() {
        super.init()
        
        loadGameSettings()
        loadScores()
    }
    
    func saveGameSettings() {
        ud.set(isMusic, forKey: musicKey)
        ud.set(isSound, forKey: soundKey)
    }
    
    func loadGameSettings() {
        guard ud.value(forKey: musicKey) != nil && ud.value(forKey: soundKey) != nil else {return}
        isMusic = ud.bool(forKey: musicKey)
        isSound = ud.bool(forKey: soundKey)
    }
    
    func saveScores() {
        
        highscore.append(currentScore)
        highscore = Array(highscore.sorted { $0 > $1 }.prefix(3))
        
        ud.set(highscore, forKey: highscoreKey)
        ud.synchronize()
    }
    
    func loadScores() {
        
        guard ud.value(forKey: highscoreKey) != nil else {return}
        highscore = ud.array(forKey: highscoreKey) as! [Int]
        
    }

}
