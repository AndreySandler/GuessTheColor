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
    
    @IBAction func redButtonDidTapped() {
        switch currentColor {
        case .red:
            resultLabel.text = "Good"
            nextButton.isHidden = false
            colorStackView.isHidden = true
            buttonsStackView.isHidden = true
        case .yellow, .green:
            resultLabel.text = "Try again"
            nextButton.isHidden = false
            colorStackView.isHidden = true
            buttonsStackView.isHidden = true
        default:
            return
        }
    }
    
    @IBAction func yellowButtonDidTapped() {
        switch currentColor {
        case .yellow:
            resultLabel.text = "Good"
            nextButton.isHidden = false
            colorStackView.isHidden = true
            buttonsStackView.isHidden = true
        case .red, .green:
            resultLabel.text = "Try again"
            nextButton.isHidden = false
            colorStackView.isHidden = true
            buttonsStackView.isHidden = true
        default:
            return
        }
    }
    
    @IBAction func greenButtonDidTapped() {
        switch currentColor {
        case .green:
            resultLabel.text = "Good"
            nextButton.isHidden = false
            colorStackView.isHidden = true
            buttonsStackView.isHidden = true
        case .red, .yellow:
            resultLabel.text = "Try again"
            nextButton.isHidden = false
            colorStackView.isHidden = true
            buttonsStackView.isHidden = true
        default:
            return
        }
    }
    
    @IBAction func nextButtonDidTapped() {
        colorStackView.isHidden = false
        buttonsStackView.isHidden = false
        nextButton.isHidden = true
        currentColor = CurrentColor.allCases.randomElement()
    }
    
}

extension SecondViewController {
    private enum CurrentColor: CaseIterable {
        case red, yellow, green
    }
}
