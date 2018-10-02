//
//  SolarSystemDetailViewController.swift
//  SolarSystem_iOS22
//
//  Created by Ivan Ramirez on 10/2/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

import UIKit

class SolarSystemDetailViewController:  UIViewController {
    @IBOutlet weak var planetLabel: UILabel!
    @IBOutlet weak var dayLenghtLabel: UILabel!
    @IBOutlet weak var orderLabel: UILabel!
    @IBOutlet weak var kmSunLabel: UILabel!
    @IBOutlet weak var diameterLabel: UILabel!
    @IBOutlet weak var planetImage: UIImageView!
    
    
    let galaxyBackgroundImage = UIImage(named: "galaxy")
    var planet: Planet?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        updateDetailBackground()
        updateFontColor()

    }
}

extension SolarSystemDetailViewController {
    
    func updateFontColor(){
        planetLabel.textColor = .white
        dayLenghtLabel.textColor = .white
        orderLabel.textColor = .white
        diameterLabel.textColor = .white
        kmSunLabel.textColor = .white
        
    }
    func updateViews() {
        guard let planet = planet else {return}
        planetLabel.text = planet.planetName
        diameterLabel.text = "Diameter: \(planet.diameter)"
        dayLenghtLabel.text = "Day lenght: \(planet.dayLenght)"
        orderLabel.text = "\(planet.planetName) is number \(planet.orderNumber) from the Sun"
        kmSunLabel.text = "Kms from the Sun \(planet.millionKMsFromSun)"
        planetImage.image = UIImage(named: planet.imageName)
    }
    
    func updateDetailBackground() {
        //look at the screen bounds
        let backgroundImage = UIImageView(frame: view.frame)
        backgroundImage.image = UIImage(named: "galaxy")
        //aspectfill could be stretching the background
        backgroundImage.contentMode = UIView.ContentMode.scaleToFill
        self.view.insertSubview(backgroundImage, at: 0)
    }
}
