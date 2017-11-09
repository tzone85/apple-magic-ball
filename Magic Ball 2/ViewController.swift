//
//  ViewController.swift
//  Magic Ball 2
//
//  Created by Thando Mini on 2017/09/27.
//  Copyright © 2017 Thando Mini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var randomBallNumber : Int  = 0
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        nextBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        nextBallImage()
    }
    
    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?) {
        nextBallImage()
    }
    
    func nextBallImage(){
        randomBallNumber = Int(arc4random_uniform(5))
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
}

