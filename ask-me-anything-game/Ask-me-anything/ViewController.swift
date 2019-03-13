//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Kushagra Nigam on 24/05/18.
//  Copyright © 2018 Kushagra Nigam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballView: UIImageView!
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomVariable : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clickButton(_ sender: UIButton) {
        randomFn()
    }
    func randomFn(){
        randomVariable = Int(arc4random_uniform(5))
        ballView.image = UIImage(named: ballArray[randomVariable])
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomFn()
    }
}

