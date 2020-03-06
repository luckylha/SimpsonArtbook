//
//  DetailVC.swift
//  Simpsons Artbook
//
//  Created by lucky lukmanul on 06/03/20.
//  Copyright © 2020 lucky lukmanul. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var occupationLbl: UILabel!
    
    var selectedSimpson = Simpsons()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        image.image     = selectedSimpson.image
        nameLbl.text    = selectedSimpson.occupation
        occupationLbl.text     = selectedSimpson.name
    }
}
