//
//  DrawingViewController.swift
//  RSSchool_T8
//
//  Created by Andrew Pokachailo on 7/19/21.
//

import UIKit

@objc public protocol DrawingsDelegate {
    func updateDrawingWith(drawing: NSString)
}

class DrawingViewController: UIViewController {
    
    
    @IBOutlet var allButtons: [CustomButton]!
    
    
    @objc public var selectedDrawing: NSString!
    @objc public weak var delegate: DrawingsDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let selectedButton = allButtons.first { $0.titleLabel?.text == selectedDrawing as String }!
        selectedButton.setHighlightedTint()
    }
    
    public override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        delegate.updateDrawingWith(drawing: NSString(string: selectedDrawing))
    }
    
    @IBAction func allButtonsTapped(_ sender: CustomButton) {
        allButtons.filter { $0 != sender }.forEach { $0.setDefaultTint() }
        sender.setHighlightedTint()
        selectedDrawing = sender.titleLabel!.text! as NSString
        
    }
    
    
    
    
    
    
    
}
