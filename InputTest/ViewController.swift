//
//  ViewController.swift
//  InputTest
//
//  Created by Michael Louis on 16/05/19.
//  Copyright © 2019 Michael Louis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var phonetextField: UITextField!
    @IBOutlet weak var fullnameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fullnameTextField.delegate = self
        phonetextField.delegate = self
    }


}
//breakpoint where focus doesn't move to another field
extension ViewController: UITextFieldDelegate
{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == fullnameTextField
        {
            phonetextField.becomeFirstResponder()
        }
        else if textField == phonetextField
        {
            phonetextField.resignFirstResponder()
        }
        return true
    }
}
