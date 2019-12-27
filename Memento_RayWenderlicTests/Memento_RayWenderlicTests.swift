//
//  Memento_RayWenderlicTests.swift
//  Memento_RayWenderlicTests
//
//  Created by David on 2019/12/27.
//  Copyright © 2019 David. All rights reserved.
//

import XCTest
@testable import Memento_RayWenderlic

class Memento_RayWenderlicTests: XCTestCase {
  
  let gameSystem = GameSystem()
  
  func testSave() {
    var game = Game()
    print(game)
    game.addScore(100)
    game.dead()
    
    print(game)
    try! gameSystem.save(game, title: "Best Game Ever")
  }
  
  func testLoad() {
    let game = try! gameSystem.load(title: "Best Game Ever")
    print(game)
  }
  
}
