//
//  Character.swift
//  SushiNeko
//
//  Created by Iavor Dekov on 6/29/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

import Foundation

class Character: CCSprite {
    
    func left() {
        scaleX = 1
    }
    
    func right() {
        scaleX = -1
    }
    
    
}