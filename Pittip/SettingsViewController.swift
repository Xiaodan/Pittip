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
    var stateTaxes: [Double] = [Double]()
    
    var selectedState = ""
    var selectedStateTax = 0.00
    
    @IBOutlet weak var defaultTip: UISegmentedControl!
    
    @IBOutlet weak var customTax: UITextField!
    
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
        states = [
                   "Customized Tax",
                   "No-tax State",
                   "AK - Alaska",
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
        
        //http://taxfoundation.org/sites/taxfoundation.org/files/docs/LOST2016-01_0.png
        
        stateTaxes = [ 0,
                       0,
                       0.0178,
                       0.0897,
                       0.093,
                       0,
                       0.0825,
                       0.0848,
                       0.0752,
                       0.0635,
                       0.0575,
                       0,
                       0.0666,
                       0.0701,
                       0.04,
                       0.0435,
                       0.0679,
                       0.0603,
                       0.0864,
                       0.07,
                       0.086,
                       0.06,
                       0.09,
                       0.0625,
                       0.06,
                       0.0625,
                       0.06,
                       0.0727,
                       0.0786,
                       0.0707,
                       0,
                       0.069,
                       0.0682,
                       0.0687,
                       0,
                       0.0697,
                       0.0751,
                       0.0798,
                       0.0849,
                       0.0714,
                       0.0882,
                       0,
                       0.0634,
                       0.115,
                       0.07,
                       0.0722,
                       0.0584,
                       0.0946,
                       0.0817,
                       0.0669,
                       0.0563,
                       0,
                       0.0617,
                       0.0889,
                       0.0541,
                       0.062,
                       0.0542 ]
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
    @IBAction func onTap2(_ sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func setCustomTaxValue(_ sender: AnyObject) {
            let defaults = UserDefaults.standard
            let customTaxValue = Double(customTax.text!) ?? 0
            // print(customTaxValue)
        defaults.set(customTaxValue, forKey: "customTax")
        defaults.synchronize()
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
        // print(selectedState)
        selectedStateTax = stateTaxes[row]
        // print(selectedStateTax)
        
        let defaults = UserDefaults.standard
        defaults.set(selectedState, forKey: "state")
        defaults.set(selectedStateTax, forKey: "stateTax")
        if(row > 0) {
            defaults.set(0.0, forKey: "customTax")
        }
        defaults.synchronize()
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
