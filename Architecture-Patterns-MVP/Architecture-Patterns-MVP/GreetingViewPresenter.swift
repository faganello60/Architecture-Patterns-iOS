//
//  GreetingViewPresenter.swift
//  Architecture-Patterns-MVP
//
//  Created by Bruno Faganello Neto on 06/10/16.
//  Copyright © 2016 Bruno Faganello Neto. All rights reserved.
//

import UIKit

protocol GreetingViewPresenter {
    init(view:GreetingView, person:Person)
    func showGreeting()
}
