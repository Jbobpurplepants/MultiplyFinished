//
//  ViewController.swift
//  Multiply
//
//  Created by Phipps, Jacob - Student on 8/29/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var numOneString = ""
    var numTwoString = ""
    var numOneDouble = 0.0
    var numTwoDouble = 0.0
    var numSolutionDouble = 0.0
    var numSolutionString = ""
    
 
    @IBOutlet weak var firstTextEntry: UITextField!
    
    @IBOutlet weak var secondTextEntry: UITextField!
    
    @IBAction func actionButtonPressed(_ sender: Any) {
        numOneString = firstTextEntry.text ?? "0"
        numTwoString = secondTextEntry.text ?? "0"
        numOneDouble = Double(numOneString) ?? 0.0
        numTwoDouble = Double(numTwoString) ?? 0.0
        numSolutionDouble = numOneDouble * numTwoDouble
        numSolutionString = String(numSolutionDouble)
        nameSolution.text = numSolutionString

    }
    @IBOutlet weak var nameSolution: UILabel!
}

