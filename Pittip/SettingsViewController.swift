//
//  SettingsViewController.swift
//  Pittip
//
//  Created by Sally Zhang on 9/20/16.
//  Copyright © 2016 Sally Zhang. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    let tipPercentages = [0.15, 0.18, 0.2, 0.25]

    @IBOutlet weak var defaultTip: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let defaults = UserDefaults.standard
        let defaultTipIndex = defaults.integer(forKey: "defaultTipIndex")
        defaultTip.selectedSegmentIndex = defaultTipIndex
       
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
