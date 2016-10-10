//
//  ViewController.swift
//  Architecture-Patterns-MVVM
//
//  Created by Bruno Faganello Neto on 10/10/16.
//  Copyright © 2016 Bruno Faganello Neto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var greetingLabel: UILabel!
    
    var viewModel: GreetingViewModelProtocol! {
        didSet {
            self.viewModel.greetingDidChange = { [unowned self] viewModel in
                self.greetingLabel.text = viewModel.greeting
            }
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let model = Person(firstName: "David", lastName: "Blaine")
        let viewModel = GreetingViewModel(person: model)
        self.viewModel = viewModel
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showGreeting(_ sender: UIButton) {
        viewModel.showGreeting()
    }

}

