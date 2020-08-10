//
//  ViewController.swift
//  Raymond_L_Storing_Default_Values_Exercise
//
//  Created by Raymond Lo on 8/10/20.
//  Copyright © 2020 Raymond. All rights reserved.
//

import UIKit

class ViewController: UIViewController {



	@IBAction func mySaveButton(_ sender: Any){
		UserDefaults.standard.set(myText.text, forKey: "Text")
		UserDefaults.standard.set(mySlider.value, forKey: "Slider")
		UserDefaults.standard.set(mySwitch.isOn, forKey: "Switch")
	}
	
	
	@IBAction func myLoadButton(_ sender: Any){
		myText.text = UserDefaults.standard.string(forKey: "Text")
		mySlider.value = UserDefaults.standard.float(forKey: "Slider")
		mySwitch.isOn = UserDefaults.standard.bool(forKey: "Switch")
	}
	


	@IBAction func myDeleteButton(_ sender: Any){
		myText.text = ""
		mySlider.value = 0.5
		mySwitch.isOn = true
	}
	
	@IBOutlet weak var myText: UITextField!
	
	
	@IBOutlet weak var mySlider: UISlider!
	
	

	@IBOutlet weak var mySwitch: UISwitch!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}


}

