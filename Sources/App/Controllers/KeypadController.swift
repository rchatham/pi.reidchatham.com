//
//  KeypadController.swift
//  App
//
//  Created by Reid Chatham on 10/21/19.
//

import Foundation

var keypadController: KeypadController?

// Do something to interact with the keypad using GPIO
class KeypadController {

    var enteredValues: String = ""
    let keypad: Keypad

    init() {
        keypad = Keypad()
        keypad.buttonPressed = { button in
            // do something with button response
            print(button.rawValue)
            self.enteredValues.append(button.rawValue)
        }
        keypad.receiverPositionChanged = { position in
            print("Receiver engaged: \(!position)")
        }
    }

}
