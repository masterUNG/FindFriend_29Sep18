//
//  SecondViewController.swift
//  ListFriend
//
//  Created by MasterUNG on 29/9/2561 BE.
//  Copyright © 2561 MasterUNG. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var numberFactorString: String = ""
    var numberFactorInt: Int = 1
    var numberMasterInt: Int = 1
    var numberInts = [1]
    
    
    
    let crossString = " X "
    
    let numberLoopInt: Int = 12
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberLoopInt
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let showCell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "NumberCell")
        
        while numberMasterInt < numberLoopInt {
            
            numberMasterInt += 1
            numberInts.append(numberMasterInt)
            
        }
        
        showCell.textLabel?.text = String(numberInts[indexPath.row]) + crossString + String(numberFactorInt) + " = " + String(numberInts[indexPath.row] * numberFactorInt)
        return showCell
    }
    
    
    
    
    
    @IBOutlet weak var numberTextField: UITextField!
    
    @IBAction func calculateButton(_ sender: Any) {
        
        numberFactorString = numberTextField.text!
        print("numberFactor ==> \(numberFactorString)")
        numberFactorInt = Int(numberFactorString)!
        
        
        
    }   // calcutateButton
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }   // Main Function
    
}   // Main Class
