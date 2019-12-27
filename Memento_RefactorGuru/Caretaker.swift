//
//  Caretaker.swift
//  Memento
//
//  Created by David on 2019/12/27.
//  Copyright © 2019 David. All rights reserved.
//

/// The CareTaker doesn't depend on the Concrete Memento class. Therefore, it
/// doesn't have access to the originator's state, stored inside the memento. It works
/// with all mementos via the base Memento interface.
class Caretaker {
  private lazy var mementos = [Memento]()
  private var originator: Originator
  
  init(originator: Originator) {
    self.originator = originator
  }
  
  func backup() {
    print("\nCaretaker: Saving Originator's state...\n")
    mementos.append(originator.save())
  }
  
  func undo() {
    guard !mementos.isEmpty else { return }
    let removeMemento = mementos.removeLast()
    
    print("Caretaker: Restoring state to: " + removeMemento.name)
    originator.restore(memento: removeMemento)
  }
  
  func showHistory() {
    print("Caretaker: Here's the list of mementos:\n")
    mementos.forEach { print($0) }
  }
}
