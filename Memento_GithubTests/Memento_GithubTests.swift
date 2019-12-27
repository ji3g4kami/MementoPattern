//
//  Memento_GithubTests.swift
//  Memento_GithubTests
//
//  Created by David on 2019/12/27.
//  Copyright © 2019 David. All rights reserved.
//

import XCTest
@testable import Memento_Github

class Memento_GithubTests: XCTestCase {
  
  func testExample() {
    var gameState = GameState(chapter: "Black Mesa Inbound", weapon: "Crowbar")
    gameState.chapter = "Anomalous Materials"
    gameState.weapon = "Glock 17"
    CheckPoint.save(gameState, saveName: "gameState1")
    
    gameState.chapter = "Unforeseen Consequences"
    gameState.weapon = "MP5"
    CheckPoint.save(gameState, saveName: "gameState2")
    
    gameState.chapter = "Office Complex"
    gameState.weapon = "Crossbow"
    CheckPoint.save(gameState, saveName: "gameState3")
    
    if let memento = CheckPoint.restore(saveName: "gameState1") as? Memento {
      let finalState = GameState(memento: memento)
      print(finalState)
    }
  }
  
}
