//
//  PlanetController.swift
//  SolarSystem_iOS22
//
//  Created by Ivan Ramirez on 10/2/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

import Foundation

class PlanetController {
    
    static var planets: [Planet] {
        

        let mercury = Planet(planetName: "Mercury", diameter: 4879, dayLenght: 4222.6, millionKMsFromSun: 57.9, orderNumber: 1)

        let venus = Planet(planetName: "Venus", diameter: 12104, dayLenght: 2802, millionKMsFromSun: 108.2, orderNumber: 2)

        let earth = Planet(planetName: "Earth", diameter: 12756, dayLenght: 24, millionKMsFromSun: 149.6, orderNumber: 3)

        let mars = Planet(planetName: "Mars", diameter: 6792, dayLenght: 24.7, millionKMsFromSun: 227.9, orderNumber: 4)

        let jupiter = Planet(planetName: "Jupiter", diameter: 142984, dayLenght: 9.9, millionKMsFromSun: 778.6, orderNumber: 5)

        let saturn = Planet(planetName: "Saturn", diameter: 120536, dayLenght: 10.7, millionKMsFromSun: 1433.5, orderNumber: 6)

        let uranus = Planet(planetName: "Uranus", diameter: 51118, dayLenght: 17.2, millionKMsFromSun: 2872.5, orderNumber: 7)

        let neptune = Planet(planetName: "Neptune", diameter: 49528, dayLenght: 16.1, millionKMsFromSun: 4495.1, orderNumber: 8)

        let pluto = Planet(planetName: "Pluto", diameter: 2370, dayLenght: 153.3, millionKMsFromSun: 5906.4, orderNumber: 9)


        return [mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto]
    }
    
}
