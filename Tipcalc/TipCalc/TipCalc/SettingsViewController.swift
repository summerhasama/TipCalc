//
//  SettingsViewController.swift
//  TipCalc
//
//  Created by Twins Hasama on 8/12/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var tipDefaultController: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func tipDefault(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(tipDefaultController.selectedSegmentIndex, forKey:"default")
        defaults.synchronize()
    }
    override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
       let defaults = UserDefaults.standard
        let intValue = defaults.integer(forKey: "default")
        self.tipDefaultController.selectedSegmentIndex = intValue
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
