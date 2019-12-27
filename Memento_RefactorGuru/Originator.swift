//
//  Originator.swift
//  https://refactoring.guru/design-patterns/memento/swift/example
//
//  Created by David on 2019/12/27.
//  Copyright © 2019 David. All rights reserved.
//


/// The originator holds some important state that may change over time. It also
/// defines a method for saving the state inside a momento and another method
/// for restore the state from it
import Foundation

class Originator {
  /// For the sake of simplicity, the originator's state is stored inside a single variable
  private var state: String
  
  init(state: String) {
    self.state = state
    print("Originator: My initial state is: \(state)")
  }
  
  /// The Originator's business logic may affect its internal state.
  /// Therefore, the client should backup the state defore launching methods
  /// of the business logic via the save() method.
  func doSomething() {
    print("Originator: I'm doing something important.")
    state = generateRandomString()
    print("Originator: and my state has changed to \(state)")
  }
  
  private func generateRandomString() -> String {
    return String(UUID().uuidString.suffix(4))
  }
  
  /// Saves the current state inside a memento.
  func save() -> Memento {
    return ConcreteMemento(state: state)
  }
  
  /// Restores the Originator's state from a memento object.
  func restore(memento: Memento) {
    guard let memento = memento as? ConcreteMemento else { return }
    self.state = memento.state
    print("Originator: My state has changed to: \(state)")
  }
}


