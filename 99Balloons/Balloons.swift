//
//  Balloons.swift
//  99Balloons
//
//  Created by Xavier Davis on 1/23/15.
//  Copyright (c) 2015 Xavier Davis. All rights reserved.
//

import Foundation
import UIKit

struct Balloons {
    
    var number = 0
    var image = UIImage(named: "")


func getImage() -> UIImage {
    
    let randomNumber = Int(arc4random_uniform(UInt32(4)))
    var imageString = ""
    switch randomNumber {
        case 0: imageString = "RedBalloon1.jpg"
        case 1: imageString = "RedBalloon2.jpg"
        case 2: imageString = "RedBalloon3.jpg"
        case 3: imageString = "RedBalloon4.jpg"
    default: imageString = ""
        }
    return UIImage(named: imageString)!
    }
}
