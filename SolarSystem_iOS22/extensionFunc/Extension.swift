//
//  Extension.swift
//  SolarSystem_iOS22
//
//  Created by Ivan Ramirez on 10/2/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

import Foundation
import UIKit

extension SolarSystemTableViewController {
    // import UIKit
    
    func backGroundChange() {
        
        let imageView = UIImageView(image: solarSystemImage)
        tableView.backgroundView = imageView
        imageView.contentMode = .scaleAspectFill
        
        // Make a blur effect
        let blurEffect = UIBlurEffect(style: .light)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.frame = imageView.bounds
        imageView.addSubview(blurView)
        imageView.clipsToBounds = true
    }
    
    func updateHeaderImage(){
        SolarSystemHeaderImage.image = starMountainImage
    }
    
    func updateSolarSystemUI(){
        backGroundChange()
     updateHeaderImage()
    }
}
