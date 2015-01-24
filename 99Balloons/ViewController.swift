//
//  ViewController.swift
//  99Balloons
//
//  Created by Xavier Davis on 1/23/15.
//  Copyright (c) 2015 Xavier Davis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballonImageView: UIImageView!
    @IBOutlet weak var ballonLabel: UILabel!
    
    var index = 0
    var ballonsArray:[Balloons] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for var x = 1; x < 100; x++ {
            var thisBalloon = Balloons()
            thisBalloon.number = x
            thisBalloon.image = thisBalloon.getImage()
            if x > 1 {
            while (thisBalloon.image == self.ballonsArray[x-2].image){
                thisBalloon.image = thisBalloon.getImage()
            }
            }
            self.ballonsArray.append(thisBalloon)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextButtonPressed(sender: UIBarButtonItem) {
        if index<99 {
            self.ballonLabel.hidden = false
            
            UIView.transitionWithView(self.view, duration: 0.5, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
                self.ballonLabel.text = "\(self.ballonsArray[self.index].number) Balloons"
                self.ballonImageView.image = self.ballonsArray[self.index].image
                }, completion: {
                    (finished: Bool) -> () in
            })
        
        
        index++
        }
    }
    
    
}

