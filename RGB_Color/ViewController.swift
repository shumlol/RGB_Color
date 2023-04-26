//
//  ViewController.swift
//  RGB_Color
//
//  Created by Вадим Ахматханов on 24.04.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet var colorView: UIView!
    
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    // MARK: - LifeCicle View
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 15
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        
        setColor()
        setValue(for: redLabel, greenLabel, blueLabel)
//        redLabel.text = String(format: "%.2f", redSlider.value)
//        greenLabel.text = String(format: "%.2f", greenSlider.value)
//        blueLabel.text = String(format: "%.2f", blueSlider.value)
        
    }
    
    
    //MARK: - IBAction
    @IBAction func rgbSkider(_ sender: UISlider) {
        setColor()
        
        
        switch sender {
            case redSlider:
                setValue(for: redLabel)
            case greenLabel:
                setValue(for: greenLabel)
            default:
                setValue(for: blueLabel)
        }
        
        //        redLabel.text = String(format: "%.2f", redSlider.value)
        //        greenLabel.text = String(format: "%.2f", greenSlider.value)
        //        blueLabel.text = String(format: "%.2f", blueSlider.value)
    }
    
    //MARK: - Private Methods
    private func setColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label {
                case redLabel:
                    label.text = string(from: redSlider)
                case greenLabel:
                    label.text = string(from: greenSlider)
                default:
                    label.text = string(from: blueSlider)
            }
        }
        
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value )
    }
    
}
