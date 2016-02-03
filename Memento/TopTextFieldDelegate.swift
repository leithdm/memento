//
//  TopTextFieldDelegate.swift
//  Memento
//
//  Created by Darren Leith on 03/02/2016.
//  Copyright © 2016 Darren Leith. All rights reserved.
//

import Foundation
import UIKit

class TopTextFieldDelegate: NSObject, UITextFieldDelegate {
  
  func textFieldShouldReturn(textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    return true
  }
  
  func textFieldDidBeginEditing(textField: UITextField) {
    if textField.text == "TOP" {
     textField.text = ""
    }
  }
  
  
}