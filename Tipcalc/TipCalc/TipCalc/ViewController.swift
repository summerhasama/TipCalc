//
//  ViewController.swift
//  TipCalc
//
//  Created by Summer Hasama on 8/12/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var customField: UITextField!
    
    @IBOutlet weak var percentLabel: UILabel!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!

    @IBOutlet weak var splitButton: UIButton!
    {
          didSet{
              splitButton.backgroundColor = .clear
              splitButton.layer.cornerRadius = 10
              splitButton.layer.borderWidth = 2
              splitButton.layer.borderColor = UIColor.white.cgColor
          }
      }
    @IBOutlet weak var splittabView: UIView!
  
    @IBOutlet weak var twosplitLabel: UILabel!
    
    @IBOutlet weak var foursplitLabel: UILabel!
    
    @IBOutlet weak var threesplitLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    // Sets the title in the Navigation Bar
        
        self.title = "Tip Calculator"
     
    }
 
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
       let defaults = UserDefaults.standard
        let intValue = defaults.integer(forKey: "default")
        self.tipControl.selectedSegmentIndex = intValue
    }
 
    @IBAction func splitOpen(_ sender: Any) {
        if self.splittabView.isHidden == true{
            self.splittabView.isHidden = false
        }
        else{
            self.splittabView.isHidden = true
        }
    }
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
        let bill = Double(billField.text!) ?? 0
        if tipControl.selectedSegmentIndex == 3{
        self.customField.isHidden = false
        self.percentLabel.isHidden = false

        let customtip = Double(self.customField.text!) ?? 0
        let tip = bill * customtip * 0.01
        let total = bill + tip
        let twosplit = total/2
        let threesplit = total/3
        let foursplit = total/4
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f",total)
        twosplitLabel.text = String(format: "$%.2f",twosplit)
        threesplitLabel.text = String(format: "$%.2f",threesplit)
        foursplitLabel.text = String(format: "$%.2f",foursplit)
        }
    }
   
    
    @IBAction func calculateTip(_ sender: Any) {
        // get the bill amount
        let bill = Double(billField.text!) ?? 0
        
        //calculate tip and total
        let tipPercentages = [0.15,0.18,0.2]
        
        if tipControl.selectedSegmentIndex == 3{
               self.customField.isHidden = false
               self.percentLabel.isHidden = false

               let customtip = Double(self.customField.text!) ?? 0
               let tip = bill * customtip * 0.01
               let total = bill + tip
               tipLabel.text = String(format: "$%.2f", tip)
               totalLabel.text = String(format: "$%.2f",total)
                let twosplit = total/2
                let threesplit = total/3
                let foursplit = total/4
                tipLabel.text = String(format: "$%.2f", tip)
                totalLabel.text = String(format: "$%.2f",total)
                twosplitLabel.text = String(format: "$%.2f",twosplit)
                threesplitLabel.text = String(format: "$%.2f",threesplit)
                foursplitLabel.text = String(format: "$%.2f",foursplit)
               }
        else
           {
            customField.text = ""
            self.customField.isHidden = true
            self.percentLabel.isHidden = true
            let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
            let total = bill + tip
            tipLabel.text = String(format: "$%.2f", tip)
            totalLabel.text = String(format: "$%.2f",total)
            let twosplit = total/2
            let threesplit = total/3
            let foursplit = total/4
            tipLabel.text = String(format: "$%.2f", tip)
            totalLabel.text = String(format: "$%.2f",total)
            twosplitLabel.text = String(format: "$%.2f",twosplit)
            threesplitLabel.text = String(format: "$%.2f",threesplit)
            foursplitLabel.text = String(format: "$%.2f",foursplit)
        }
        }
        
       
   
    
        
        //update tip and total labels
        
    }
    
    




