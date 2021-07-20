//
//  TimerViewController.swift
//  RSSchool_T8
//
//  Created by Andrew Pokachailo on 7/19/21.
//

import UIKit

@objc public protocol TimerDelegate {
    func timerDidPick(value: Float)
}

class TimerViewController: UIViewController {
    var saveButton: UIButton!
    var timerLabel: UILabel!
    var timerSlider: UISlider!
    
    @objc public var timerValue: NSNumber?
    @objc public weak var delegate: TimerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeView()
        self.saveButton.addTarget(self, action: #selector(saveButtonTapped(_:)), for: .touchUpInside)
        self.timerSlider.addTarget(self, action: #selector(changingSlider(_:)), for: .touchUpInside)
        timerSlider.value = timerValue?.floatValue ?? 1
        updateUI()
    }
    
    
    func makeView() {
        self.view.frame = CGRect(x: 0, y: self.view.bounds.size.height / 2, width: self.view.bounds.size.width, height: 333.5)
        self.view.layer.cornerRadius = 40
        self.view.layer.backgroundColor = UIColor.white.cgColor
        self.view.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        self.view.layer.shadowRadius = 8
        self.view.layer.shadowOpacity = 1
        self.view.layer.shadowOffset = CGSize(width: 0, height: 0)
        //save button
        self.saveButton = CustomButton(frame: CGRect(x: 250, y: 20, width: 85, height: 32))
        self.saveButton.setTitle("Save", for: .normal)
        self.saveButton.setTitleColor(UIColor.lightGreenSea(), for: .normal)
        self.view.addSubview(self.saveButton)
        self.view.bringSubviewToFront(self.saveButton)
        //slider
        self.timerSlider = UISlider(frame: CGRect(x: 74, y: 112, width: 223, height: 4))
        self.timerSlider.minimumTrackTintColor = UIColor.lightGreenSea()
        self.timerSlider.minimumValue = 1;
        self.timerSlider.maximumValue = 5;
        self.view.addSubview(self.timerSlider)
        self.view.bringSubviewToFront(self.timerSlider)
        
        let labelFont = UIFont(name: "Montserrat-Regular", size: 18)
        //timer label
        self.timerLabel = UILabel(frame: CGRect(x: 162, y: 161, width: 52, height: 22))
        self.timerLabel.font = labelFont
        self.view.addSubview(self.timerLabel)
        self.view.bringSubviewToFront(self.timerLabel)
        //min val
        let minVal = UILabel(frame: CGRect(x: 26, y: 103, width: 7, height: 22))
        minVal.text = "1"
        minVal.font = labelFont
        self.view.addSubview(minVal)
        self.view.bringSubviewToFront(minVal)
        //max val
        let maxVal = UILabel(frame: CGRect(x: 338, y: 103, width: 11, height: 22))
        maxVal.font = labelFont
        maxVal.text = "5"
        self.view.addSubview(maxVal)
        self.view.bringSubviewToFront(maxVal)
    }
    
    func updateUI() {
        timerLabel.text = String(format: "%.2f", timerSlider.value) + " s"
    }
    
    @objc func changingSlider(_ sender: UISlider) {
        updateUI()
    }
    
    @objc func saveButtonTapped(_ sender: UIButton) {
        delegate.timerDidPick(value: timerSlider.value)
        self.willMove(toParent: nil)
        self.view.removeFromSuperview()
        self.removeFromParent()
    }
    
    
    
    
}
