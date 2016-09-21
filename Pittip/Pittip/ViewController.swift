//
//  ViewController.swift
//  Pittip
//
//  Created by Sally Zhang on 9/8/16.
//  Copyright © 2016 Sally Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        billField.text = "100.00"
        tipControl.selectedSegmentIndex = 0
        calculateTipHelper()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
        
        let defaults = UserDefaults.standard
        let defaultTipIndex = defaults.integer(forKey: "defaultTipIndex")
        tipControl.selectedSegmentIndex = defaultTipIndex
        calculateTipHelper()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }
    
    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: AnyObject) {
        calculateTipHelper()
    }
    
    func calculateTipHelper() {
        let tipPercentages = [0.15, 0.18, 0.2, 0.25]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        
        //tipLabel.text = "$\(tip)"
        tipLabel.text = String(format: "$%.2f", tip)
        //totalLabel.text = "$\(total)"
        totalLabel.text = String(format: "$%.2f", total)
    }

}

