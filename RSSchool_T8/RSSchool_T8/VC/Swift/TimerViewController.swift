//
//  TimerViewController.swift
//  RSSchool_T8
//
//  Created by Andrew Pokachailo on 7/19/21.
//

import UIKit

class TimerViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // view
        self.view.frame = CGRect(x: 0, y: self.view.bounds.size.height / 2, width: self.view.bounds.size.width, height: 333.5)
        self.view.layer.cornerRadius = 40
        self.view.layer.backgroundColor = UIColor.white.cgColor
        self.view.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        self.view.layer.shadowRadius = 8
        self.view.layer.shadowOpacity = 1
        self.view.layer.shadowOffset = CGSize(width: 0, height: 0)
        //save button
        let saveButton = CustomButton(frame: CGRect(x: 250, y: 20, width: 85, height: 32))
        saveButton.setTitle("Save", for: .normal)
        self.view.addSubview(saveButton)
        self.view.bringSubviewToFront(saveButton)
        //slider
        let slider = UISlider(frame: CGRect(x: 74, y: 112, width: 223, height: 4))
        slider.minimumTrackTintColor = UIColor.lightGreenSea()
        slider.minimumValue = 1;
        slider.maximumValue = 5;
        self.view.addSubview(slider)
        self.view.bringSubviewToFront(slider)
        
        let labelFont = UIFont(name: "Montserrat-Regular", size: 18)
        //min val
        let minVal = UILabel(frame: CGRect(x: 26, y: 103, width: 7, height: 22))
        minVal.text = "1"
        minVal.textAlignment = .center
        minVal.font = labelFont
        self.view.addSubview(minVal)
        self.view.bringSubviewToFront(minVal)
        //max val
        let maxVal = UILabel(frame: CGRect(x: 338, y: 103, width: 11, height: 22))
        minVal.text = "5"
        minVal.font = labelFont
        self.view.addSubview(maxVal)
        self.view.bringSubviewToFront(maxVal)
    }
    
    
    

    

}
