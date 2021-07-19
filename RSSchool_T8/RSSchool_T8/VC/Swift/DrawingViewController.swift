//
//  DrawingViewController.swift
//  RSSchool_T8
//
//  Created by Andrew Pokachailo on 7/19/21.
//

import UIKit

class DrawingViewController: UIViewController {
    
    @IBOutlet weak var planetButton: CustomButton!
    @IBOutlet weak var headButton: CustomButton!
    @IBOutlet weak var treeButton: CustomButton!
    @IBOutlet weak var landscapeButton: CustomButton!
    
    @objc var drawingView = CustomView()
    @objc var delegate = ViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func planetButtonTap(_ sender: Any) {
        print("TAP PLANET")
        self.planetButton.isSelected = true;
    }
    @IBAction func headButtonTap(_ sender: Any) {
        
    }
    @IBAction func TreeButtonTap(_ sender: Any) {
        
    }
    @IBAction func landscapeButtonTap(_ sender: Any) {
        
    }
    
    
    
}
