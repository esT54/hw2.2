//
//  ViewController.swift
//  hw2.2
//
//  Created by Семен on 23.08.2020.
//  Copyright © 2020 Семен. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSlider.value = 0.0
        greenSlider.value = 0.0
        blueSlider.value = 0.0
        
        redLabel.text = "0.0"
        greenLabel.text = "0.0"
        blueLabel.text = "0.0"
        
        changeColorView(redValue: redSlider.value,
                    greenValue: greenSlider.value,
                    blueValue: blueSlider.value)
        
    }

    @IBAction func changeSliderValue(_ sender: Any) {
        redLabel.text = String(format: "%.2f",redSlider.value)
        greenLabel.text = String(format: "%.2f",greenSlider.value)
        blueLabel.text = String(format: "%.2f",blueSlider.value)
        changeColorView(redValue: redSlider.value,
                    greenValue: greenSlider.value,
                    blueValue: blueSlider.value)
    }
    
    func changeColorView(redValue: Float, greenValue: Float, blueValue: Float) {
        mainView.backgroundColor = .init(red: CGFloat(redValue),
                                         green: CGFloat(greenValue),
                                         blue: CGFloat(blueValue),
                                         alpha: 1.0)
    }
    
}

