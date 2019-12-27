//
//  Originator.swift
//  Test2
//
//  Created by David on 2019/12/27.
//  Copyright © 2019 David. All rights reserved.
//

struct GameState: MementoConvertible {
  
  private enum Keys {
    static let chapter = "chapter"
    static let weapon = "weapon"
  }
  
  var chapter: String
  var weapon: String
  
  init(chapter: String, weapon: String) {
    self.chapter = chapter
    self.weapon = weapon
  }
  
  var memento: Memento {
    return [Keys.chapter: chapter, Keys.weapon: weapon]
  }
  
  init?(memento: Memento) {
    guard let mementoChapter = memento[Keys.chapter],
      let mementoWeapon = memento[Keys.weapon] else {
        return nil
    }
    chapter = mementoChapter
    weapon = mementoWeapon
  }  
}
