//
//  MementoTests.swift
//  MementoTests
//
//  Created by David on 2019/12/27.
//  Copyright © 2019 David. All rights reserved.
//

import XCTest
@testable import Memento_RefactorGuru

class MementoTests: XCTestCase {
  
  func testExample() {
    let originator = Originator(state: "Super-duper")
    let careTaker = Caretaker(originator: originator)
    
    careTaker.backup()
    originator.doSomething()
    
    careTaker.backup()
    originator.doSomething()
    
    careTaker.backup()
    originator.doSomething()
    
    print("")
    careTaker.showHistory()
    
    print("\n\nCareTaker: Now, let's rollback!\n")
    careTaker.undo()
    
    print("\n\nCareTaker: One more rollback!\n")
    careTaker.undo()
    
    careTaker.showHistory()
  }
  
}
