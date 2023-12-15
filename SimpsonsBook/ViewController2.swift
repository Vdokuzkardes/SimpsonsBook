//
//  ViewController2.swift
//  SimpsonsBook
//
//  Created by Vedat Dokuzkardeş on 9.11.2023.
//

import UIKit

class ViewController2: UIViewController {
    
    
    @IBOutlet weak var imageV: UIImageView!
    @IBOutlet weak var nameLbL: UILabel!
    @IBOutlet weak var ageLBL: UILabel!
    
    var selectedSimp : Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLbL.text = selectedSimp?.name
        ageLBL.text = selectedSimp?.age
        imageV.image = selectedSimp?.image

    }
}
