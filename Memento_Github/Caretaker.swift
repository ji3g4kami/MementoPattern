//
//  Caretaker.swift
//  Test2
//
//  Created by David on 2019/12/27.
//  Copyright © 2019 David. All rights reserved.
//

enum CheckPoint {
  private static let defaults = UserDefaults.standard
  
  static func save(_ state: MementoConvertible, saveName: String) {
    defaults.set(state.memento, forKey: saveName)
    defaults.synchronize()
  }
  
  static func restore(saveName: String) -> Any? {
    return defaults.object(forKey: saveName)
  }
}
