//
//  GreetingViewController.swift
//  Architecture-Patterns-MVP
//
//  Created by Bruno Faganello Neto on 06/10/16.
//  Copyright © 2016 Bruno Faganello Neto. All rights reserved.
//

import UIKit

class GreetingViewController: UIViewController, GreetingView{
    @IBOutlet weak var myLabel: UILabel!
    var presenter:GreetingViewPresenter!
    
    
    
    
    override func viewDidLoad() {
       super.viewDidLoad()
        
        let model = Person(firstName: "Bruno", lastName: "Faganello")
        //let view = GreetingViewController()
        let presenter = GreetingPresenter(view: self, person: model)
        self.presenter = presenter
        
        //view.presenter = presenter
    }
    
    func setGreeting(greeting: String) {
        self.myLabel.text = greeting
    }
    
    @IBAction func buttonPress(_ sender: AnyObject) {
        self.presenter.showGreeting()
    }

}
