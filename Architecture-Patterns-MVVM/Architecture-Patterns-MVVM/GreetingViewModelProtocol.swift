//
//  GreetingViewModelProtocol.swift
//  Architecture-Patterns-MVVM
//
//  Created by Bruno Faganello Neto on 10/10/16.
//  Copyright © 2016 Bruno Faganello Neto. All rights reserved.
//

import UIKit

protocol GreetingViewModelProtocol: class {
    var greeting: String?{get}
    var greetingDidChange: ((GreetingViewModelProtocol) -> ())? { get set } // function to call when greeting did change
    init(person:Person)
    func showGreeting()
}
