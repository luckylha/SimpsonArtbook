//
//  ViewController.swift
//  Simpsons Artbook
//
//  Created by lucky lukmanul on 06/03/20.
//  Copyright © 2020 lucky lukmanul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var mySimpsons = [Simpsons]()
    
    var choosenSimpson = Simpsons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let homer = Simpsons()
        homer.name = "Homer Simpsons"
        homer.occupation = "Safety Inspector"
        homer.image = UIImage(named: "Homer_Simpson.png")!
        
        let bart = Simpsons()
        bart.name = "bart Simpsons"
        bart.occupation = "Student"
        bart.image = UIImage(named: "Bart_Simpson.png")!
        
        let lisa = Simpsons()
        lisa.name = "Lisa Simpson"
        lisa.occupation = "Student"
        lisa.image = UIImage(named: "Lisa_Simpson.png")!
        
        let ned = Simpsons()
        ned.name = "Ned Flander"
        ned.occupation = "Pharmatic"
        ned.image = UIImage(named: "Ned_Flanders.png")!
        
        mySimpsons.append(homer)
        mySimpsons.append(bart)
        mySimpsons.append(lisa)
        mySimpsons.append(ned)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailSegue" {
            let destinationVC = segue.destination as! DetailVC
            destinationVC.selectedSimpson = self.choosenSimpson
        }
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpsons[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.choosenSimpson = mySimpsons[indexPath.row]
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
}

