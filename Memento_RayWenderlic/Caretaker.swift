//
//  Caretaker.swift
//  Memento_AppCoda
//
//  Created by David on 2019/12/27.
//  Copyright © 2019 David. All rights reserved.
//

public class GameSystem {
  private let decoder = JSONDecoder()
  private let encoder = JSONEncoder()
  private let userDefaults = UserDefaults.standard
  
  public func save(_ game: Game, title: String) throws {
    let data = try encoder.encode(game)
    userDefaults.set(data, forKey: title)
  }
  
  public func load(title: String) throws -> Game {
    guard let data = userDefaults.data(forKey: title),
      let game = try? decoder.decode(Game.self, from: data) else {
        throw Error.gameNotFound
    }
    return game
  }
  
  public enum Error: String, Swift.Error {
    case gameNotFound
  }
}
