//
//  ViewController.swift
//  HelloSwift
//
//  Created by Simon Gladman on 26/07/2014.
//  Copyright (c) 2014 Simon Gladman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        setUpUserInterface();
    }

    
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var sliderOne: UISlider!
    @IBOutlet weak var sliderTwo: UISlider!
    @IBOutlet weak var operatorButton: UISegmentedControl!
    @IBOutlet weak var resultLabel: UILabel!
    
    private func setUpUserInterface() -> Void
    {
        sliderOne.minimumValue = 0;
        sliderOne.maximumValue = 100;
        
        sliderTwo.minimumValue = 0;
        sliderTwo.maximumValue = 100;
        
        operatorButton.selectedSegmentIndex = 0;
    }
    
    @IBAction func sliderOneChange(sender: AnyObject)
    {
        //labelOne.text = NSString(format: "%.2f", sliderOne.value);
        labelOne.text = sliderOne.value.format(decimalPlaces: 2);
        updateTotal();
    }
    
    @IBAction func sliderTwoChange(sender: AnyObject)
    {
        //labelTwo.text = NSString(format: "%.2f", sliderTwo.value);
        labelTwo.text = sliderTwo.value.format(decimalPlaces: 2);
        updateTotal();
    }
    
    @IBAction func segmentedButtonChange(sender: AnyObject)
    {
        updateTotal();
    }
    
    
    private func updateTotal() -> Void
    {
        var total:Float;
        
        switch(operatorButton.selectedSegmentIndex)
        {
            case 0:
                total = sliderOne.value + sliderTwo.value;
            case 1:
                total = sliderOne.value - sliderTwo.value;
            case 2:
                total = sliderOne.value * sliderTwo.value;
            case 3:
                total = sliderOne.value / sliderTwo.value;
            default:
                total = 0;
        }
        
        resultLabel.textColor = total < 0 ? UIColor.redColor() : UIColor.blackColor();
        resultLabel.text = total.format(decimalPlaces: 4);
    }
}

