//
//  SolarSystemTableViewController.swift
//  SolarSystem_iOS22
//
//  Created by Ivan Ramirez on 10/2/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

import UIKit

class SolarSystemTableViewController: UITableViewController {
    
    @IBOutlet weak var SolarSystemHeaderImage: UIImageView!
    
    let solarSystemImage = UIImage(named: "galaxy")
    let starMountainImage = UIImage(named: "whiteMountainStars")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateSolarSystemUI()
        
    }
    
    // MARK: - Table view data source
    
        override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
    
            let clearColor = UIColor.clear
            cell.backgroundColor = UIColor(white: 0, alpha: 0.0)
            cell.textLabel?.backgroundColor = clearColor
            cell.detailTextLabel?.backgroundColor = clearColor
        }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PlanetController.planets.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "planetCell", for: indexPath)
        let planet = PlanetController.planets[indexPath.row]
        cell.textLabel?.text = planet.planetName
        
        return cell
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC" {
            let destinationVC = segue.destination as? SolarSystemDetailViewController
            guard let indexPath = tableView.indexPathForSelectedRow else {return}
            let planetDetails = PlanetController.planets[indexPath.row]
            destinationVC?.planet = planetDetails
            
        }
    }
 
    
}
