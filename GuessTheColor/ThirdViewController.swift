//
//  ThirdViewController.swift
//  GuessTheColor
//
//  Created by Andrey Sandler on 21.09.2022.
//

import UIKit

class ThirdViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var totalLabel: UILabel!
    @IBOutlet var successLabel: UILabel!
    @IBOutlet var failLabel: UILabel!
    
    // MARK: - Public Properties
    public var totalCounter = 0
    public var successCounter = 0
    public var failCounter = 0
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = String(totalCounter)
        successLabel.text = String(successCounter)
        failLabel.text = String(failCounter)
    }
}
