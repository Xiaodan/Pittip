//
//  SettingsViewController.swift
//  Pittip
//
//  Created by Sally Zhang on 9/20/16.
//  Copyright © 2016 Sally Zhang. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    let tipPercentages = [0.15, 0.18, 0.2, 0.25]

    @IBOutlet weak var statePicker: UIPickerView!
    var states: [String] = [String]()
    
    //let states = ["CA", "IL", "NY", "FL", "TX", "AZ"]
    var selectedState = ""
    
    @IBOutlet weak var defaultTip: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let defaults = UserDefaults.standard
        let defaultTipIndex = defaults.integer(forKey: "defaultTipIndex")
        defaultTip.selectedSegmentIndex = defaultTipIndex
        
        // Connect data:
        self.statePicker.dataSource = self
        self.statePicker.delegate = self
        
        // Input data into the array:
        states = [ "AK - Alaska",
                   "AL - Alabama",
                   "AR - Arkansas",
                   "AS - American Samoa",
                   "AZ - Arizona",
                   "CA - California",
                   "CO - Colorado",
                   "CT - Connecticut",
                   "DC - District of Columbia",
                   "DE - Delaware",
                   "FL - Florida",
                   "GA - Georgia",
                   "GU - Guam",
                   "HI - Hawaii",
                   "IA - Iowa",
                   "ID - Idaho",
                   "IL - Illinois",
                   "IN - Indiana",
                   "KS - Kansas",
                   "KY - Kentucky",
                   "LA - Louisiana",
                   "MA - Massachusetts",
                   "MD - Maryland",
                   "ME - Maine",
                   "MI - Michigan",
                   "MN - Minnesota",
                   "MO - Missouri",
                   "MS - Mississippi",
                   "MT - Montana",
                   "NC - North Carolina",
                   "ND - North Dakota",
                   "NE - Nebraska",
                   "NH - New Hampshire",
                   "NJ - New Jersey",
                   "NM - New Mexico",
                   "NV - Nevada",
                   "NY - New York",
                   "OH - Ohio",
                   "OK - Oklahoma",
                   "OR - Oregon",
                   "PA - Pennsylvania",
                   "PR - Puerto Rico",
                   "RI - Rhode Island",
                   "SC - South Carolina",
                   "SD - South Dakota",
                   "TN - Tennessee",
                   "TX - Texas",
                   "UT - Utah",
                   "VA - Virginia",
                   "VI - Virgin Islands",
                   "VT - Vermont",
                   "WA - Washington", 
                   "WI - Wisconsin", 
                   "WV - West Virginia", 
                   "WY - Wyoming" ]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func setDefaultTips(_ sender: AnyObject) {
        let defaults = UserDefaults.standard
        defaults.set(defaultTip.selectedSegmentIndex, forKey: "defaultTipIndex")
        defaults.synchronize()
        // print("index: ", defaultTip.selectedSegmentIndex)
        
    }
    
    // The number of columns of data
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    
    // Catpure the picker view selection
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // This method is triggered whenever the user makes a change to the picker selection.
        // The parameter named row and component represents what was selected.
        selectedState = states[row]
        print(selectedState)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
