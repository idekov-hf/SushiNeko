//
//  GameOver.swift
//  SushiNeko
//
//  Created by Iavor Dekov on 7/1/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

import Foundation

class GameOver: CCNode {
    weak var scoreLabel: CCLabelTTF!
    weak var restartButton: CCButton!
    
    var score: Int = 0 {
        didSet {
            scoreLabel.string = "\(score)"
        }
    }
    
    func didLoadFromCCB() {
        restartButton.cascadeOpacityEnabled = true
        restartButton.runAction(CCActionFadeIn(duration: 0.3))
    }
}