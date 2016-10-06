//
//  GreetingPresenter.swift
//  Architecture-Patterns-MVP
//
//  Created by Bruno Faganello Neto on 06/10/16.
//  Copyright © 2016 Bruno Faganello Neto. All rights reserved.
//

import UIKit

class GreetingPresenter: GreetingViewPresenter {
    unowned let view: GreetingView
    let person:Person

    required init(view: GreetingView, person: Person) {
        self.view = view
        self.person = person
    }
    
    func showGreeting() {
        let greeting = "Hello \(person.firstName) \(person.lastName)"
        self.view.setGreeting(greeting: greeting)
    }
}

