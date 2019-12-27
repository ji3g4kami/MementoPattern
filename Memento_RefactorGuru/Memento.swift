//
//  Memento.swift
//  Memento
//
//  Created by David on 2019/12/27.
//  Copyright © 2019 David. All rights reserved.
//

/// The Memento interface provides a way to retrieve the memento's metadata,
/// such as creation of date or name. However, it doesn't expose the Originator's
/// state.

import Foundation

protocol Memento {
  var name: String { get }
  var date: Date { get }
}

/// The Concrete Memento contains the infrustructure for storing the Originator's state.
struct ConcreteMemento: Memento {
  /// The Originator uses this method when restoring its state.
  private(set) var state: String
  private(set) var date: Date
  
  init(state: String) {
    self.state = state
    self.date = Date()
  }
  
  /// The rest of the methods are used bt the Caretaker to display metadata
  var name: String { return state + " " + date.description.suffix(14).prefix(8) }
}
