//
//  ViewController.swift
//  ColorMix
//
//  Created by Arun Seshan on 03/07/17.
//  Copyright © 2017 Arun Seshan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func updateColor(){
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        
        if redSwitch.isOn{
            red = CGFloat(redSlider.value)
        }
        
        if greenSwitch.isOn{
            green = CGFloat(greenSlider.value)
        }
        
        if blueSwitch.isOn{
            blue = CGFloat(blueSlider.value)
        }
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        
        colorView.backgroundColor = color
    }
    @IBOutlet weak var colorView: UIView!

    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var redSwitch: UISwitch!

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        colorView.backgroundColor = .white
        updateColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func switched(_ sender: UISwitch) {
        updateColor()
    }
    
    @IBAction func slided(_ sender: UISlider) {
        updateColor()
    }
    @IBAction func resetValues(_ sender: Any) {
        redSwitch.isOn = false
        redSlider.value = 0
        
        greenSwitch.isOn = false
        greenSlider.value = 0
        
        blueSwitch.isOn = false
        blueSlider.value = 0
        
        colorView.backgroundColor = .white
    }
   
}

