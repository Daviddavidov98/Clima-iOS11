//
//  ChangeCityViewController.swift
//  WeatherApp
//
//  Created by David Davidov on 11/14/17.
//  Copyright (c) 2017 David Davidov. All rights reserved.
//

import UIKit


//Write the protocol declaration here:
protocol ChangeCityDelegate {
    func userEnteredANewCityName(city: String)
}


class ChangeCityViewController: UIViewController {
    
    var delegate : ChangeCityDelegate?
    
    //This is the pre-linked IBOutlets to the text field:
    @IBOutlet weak var changeCityTextField: UITextField!

    
    //This is the IBAction that gets called when the user taps on the "Get Weather" button:
    
    
    @IBAction func getWeatherPressed(_ sender: AnyObject) {

        let cityName = changeCityTextField.text!
        
        delegate?.userEnteredANewCityName(city: cityName)

        self.dismiss(animated: true, completion: nil)
        
    }
    
    

    //This is the IBAction that gets called when the user taps the back button. It dismisses the ChangeCityViewController.
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
