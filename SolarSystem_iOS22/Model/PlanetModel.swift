//
//  PlanetModel.swift
//  SolarSystem_iOS22
//
//  Created by Ivan Ramirez on 10/2/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

import Foundation

class Planet {

    let planetName: String
    let imageName: String
    let diameter: Int
    let dayLenght: Float
    let millionKMsFromSun: Float
    let orderNumber: Int

    init(planetName: String, diameter: Int, dayLenght: Float, millionKMsFromSun: Float, orderNumber: Int) {
        self.planetName = planetName
        self.imageName = planetName.lowercased()
        self.diameter = diameter
        self.dayLenght = dayLenght
        self.millionKMsFromSun = millionKMsFromSun
        self.orderNumber = orderNumber
    }
    
}
