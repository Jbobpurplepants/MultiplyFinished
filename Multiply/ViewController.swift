//
//  ViewController.swift
//  Multiply
//
//  Created by Phipps, Jacob - Student on 8/29/22.
//

import UIKit

@IBDesignable extension UIButton {

    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }

    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }

    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}

class ViewController: UIViewController {
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    var numOneString = ""
    var numTwoString = ""
    var numOneDouble = 0.0
    var numTwoDouble = 0.0
    var numSolutionDouble = 0.0
    var numSolutionString = ""
    
    @IBOutlet weak var firstTextEntry: UITextField!
    
    @IBOutlet weak var secondTextEntry: UITextField!
    
    @IBOutlet weak var nameSolution: UILabel!
    
    @IBOutlet weak var myImageView: UIImageView!
    let myImage = UIImage(named: "DK")
    
    @IBAction func actionButtonMultiply(_ sender: Any) {
        numOneString = firstTextEntry.text ?? "0"
        firstTextEntry.resignFirstResponder()
        numTwoString = secondTextEntry.text ?? "0"
        secondTextEntry.resignFirstResponder()
        numOneDouble = Double(numOneString) ?? 0.0
        numTwoDouble = Double(numTwoString) ?? 0.0
        numSolutionDouble = numOneDouble * numTwoDouble
        numSolutionString = String(numSolutionDouble)
        nameSolution.text = numSolutionString
        if numSolutionDouble == 64.0 {
            myImageView.isHidden = false
            myImageView.image = myImage
    }
}
    @IBAction func actionButtonAdd(_ sender: Any) {
        numOneString = firstTextEntry.text ?? "0"
        firstTextEntry.resignFirstResponder()
        numTwoString = secondTextEntry.text ?? "0"
        secondTextEntry.resignFirstResponder()
        numOneDouble = Double(numOneString) ?? 0.0
        numTwoDouble = Double(numTwoString) ?? 0.0
        numSolutionDouble = numOneDouble + numTwoDouble
        numSolutionString = String(numSolutionDouble)
        nameSolution.text = numSolutionString
        if numSolutionDouble == 64.0 {
            myImageView.isHidden = false
            myImageView.image = myImage
    }
}

    @IBAction func actionButtonSubtract(_ sender: Any) {
        numOneString = firstTextEntry.text ?? "0"
        firstTextEntry.resignFirstResponder()
        numTwoString = secondTextEntry.text ?? "0"
        secondTextEntry.resignFirstResponder()
        numOneDouble = Double(numOneString) ?? 0.0
        numTwoDouble = Double(numTwoString) ?? 0.0
        numSolutionDouble = numOneDouble - numTwoDouble
        numSolutionString = String(numSolutionDouble)
        nameSolution.text = numSolutionString
        if numSolutionDouble == 64.0 {
            myImageView.isHidden = false
            myImageView.image = myImage
    }
}
    
    @IBAction func actionButtonDivide(_ sender: Any) {
        numOneString = firstTextEntry.text ?? "0"
        firstTextEntry.resignFirstResponder()
        numTwoString = secondTextEntry.text ?? "0"
        secondTextEntry.resignFirstResponder()
        numOneDouble = Double(numOneString) ?? 0.0
        numTwoDouble = Double(numTwoString) ?? 0.0
        numSolutionDouble = numOneDouble / numTwoDouble
        numSolutionString = String(numSolutionDouble)
        nameSolution.text = numSolutionString
        if numSolutionDouble == 64.0 {
            myImageView.isHidden = false
            myImageView.image = myImage
    }
}
    @IBAction func actionClear(_ sender: Any) {
        myImageView.isHidden = true
        nameSolution.text = "Result"
        firstTextEntry.text = ""
        secondTextEntry.text = ""
        
        
    }
}

