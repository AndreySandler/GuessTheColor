//
//  SecondViewController.swift
//  GuessTheColor
//
//  Created by Andrey Sandler on 21.09.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var colorStackView: UIStackView!
    @IBOutlet var buttonsStackView: UIStackView!
    
    @IBOutlet var redButton: UIButton!
    @IBOutlet var yellowButton: UIButton!
    @IBOutlet var greenButton: UIButton!
    @IBOutlet var nextButton: UIButton!
    
    @IBOutlet var resultLabel: UILabel!
    
    public var totalCounter = 0
    public var successCounter = 0
    public var failCounter = 0
    
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    private var currentColor = CurrentColor.allCases.randomElement()
    private var choice = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redButton.layer.cornerRadius = 10
        yellowButton.layer.cornerRadius = 10
        greenButton.layer.cornerRadius = 10
        nextButton.layer.cornerRadius = 10
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "showThird" else { return }
        guard let destination = segue.destination as? ThirdViewController else { return }
        
        destination.totalCounter = totalCounter
        destination.successCounter = successCounter
        destination.failCounter = failCounter
    }
    
    @IBAction func redButtonDidTapped() {
        totalCounter += 1
        
        setupInterface()
        
        switch currentColor {
        case .red:
            resultLabel.text = "Good"
            successCounter += 1
        case .yellow, .green:
            resultLabel.text = "Try again"
            failCounter += 1
        default:
            return
        }
    }
    
    @IBAction func yellowButtonDidTapped() {
        totalCounter += 1
        
        setupInterface()
        
        switch currentColor {
        case .yellow:
            resultLabel.text = "Good"
            successCounter += 1
        case .red, .green:
            resultLabel.text = "Try again"
            failCounter += 1
        default:
            return
        }
    }
    
    @IBAction func greenButtonDidTapped() {
        totalCounter += 1
        
        setupInterface()
        
        switch currentColor {
        case .green:
            resultLabel.text = "Good"
            successCounter += 1
        case .red, .yellow:
            resultLabel.text = "Try again"
            failCounter += 1
        default:
            return
        }
    }
    
    @IBAction func nextButtonDidTapped() {
        colorStackView.isHidden = false
        buttonsStackView.isHidden = false
        nextButton.isHidden = true
        resultLabel.isHidden = true
        currentColor = CurrentColor.allCases.randomElement()
    }
    
    private func setupInterface() {
        nextButton.isHidden = false
        resultLabel.isHidden = false
        colorStackView.isHidden = true
        buttonsStackView.isHidden = true
    }
    
}

extension SecondViewController {
    private enum CurrentColor: CaseIterable {
        case red, yellow, green
    }
}
