//
//  Originator.swift
//  Memento_AppCoda
//
//  Created by David on 2019/12/27.
//  Copyright © 2019 David. All rights reserved.
//

import Foundation

// Originator
public struct Game: Codable {
  
  public struct State: Codable {
    public var attemptsRemaining: Int = 3
    public var level: Int = 1
    public var score: Int = 0
  }
  
  public var state = State()
  
  public mutating func addScore(_ score: Int) {
    state.score += score
  }
  
  public mutating func dead() {
    state.attemptsRemaining -= 1
  }
}
