//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Abinav Jonnada on 1/8/18.
//  Copyright © 2018 Abinav Jonnada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomBallIndex : Int = 0
    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    @IBOutlet weak var ImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
       updateBallImages() // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBallImages()
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        updateBallImages()
    }
    
    func updateBallImages() {
        randomBallIndex = Int(arc4random_uniform(5))
        ImageView.image = UIImage(named:ballArray[randomBallIndex])
    }
    
    
}

