//
//  ViewController.swift
//  How Far
//
//  Created by Matt Leuer on 7/9/19.
//  Copyright © 2019 Matt Leuer. All rights reserved.
//

import UIKit
import Repeat

class ViewController: UIViewController {
    

    //Mark: Properties
    @IBOutlet weak var distanceLabel: UILabel!
    var user: User = User()
    var timer : Repeater? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.timer = Repeater.every(.seconds(1)) { timer in
            DispatchQueue.main.async { // Correct
                self.distanceLabel.text = "\(self.user.distanceFromStartingPoint.value)"
            }
        }
    }

    //Mark: Actions
    @IBAction func setStartingPoint(_ sender: UIButton) {
        user.markStartingPoint()
    }
    
}

