//
//  GreetingViewModel.swift
//  Architecture-Patterns-MVVM
//
//  Created by Bruno Faganello Neto on 10/10/16.
//  Copyright © 2016 Bruno Faganello Neto. All rights reserved.
//

import UIKit

class GreetingViewModel: GreetingViewModelProtocol {
    let person: Person
    var greeting: String?{
        didSet{
            self.greetingDidChange?(self)
        }
    }
    var greetingDidChange: ((GreetingViewModelProtocol) -> ())?
    
    required init(person:Person) {
        self.person = person
    }
    
    func showGreeting() {
        self.greeting = "Hello \(person.firstName) \(person.lastName)"
    }
    
}
