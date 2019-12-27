//
//  Memento.swift
//  https://github.com/ochococo/Design-Patterns-In-Swift/blob/master/source/behavioral/memento.swift
//
//  Created by David on 2019/12/27.
//  Copyright © 2019 David. All rights reserved.
//

// The memento pattern is used to capture the current state of an object and store it in such a manner that it can be restored at a later time without breaking the rules of encapsulation.

typealias Memento = [String: String]

protocol MementoConvertible {
  var memento: Memento { get }
  init?(memento: Memento)
}
