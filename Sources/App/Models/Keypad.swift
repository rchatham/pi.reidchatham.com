//
//  Keypad.swift
//  App
//
//  Created by Reid Chatham on 10/21/19.
//

// import SwiftyGPIO
import Foundation

class Keypad {
    enum Button: String {
        case one = "1"
        case two = "2"
        case three = "3"
        case four = "4"
        case five = "5"
        case six = "6"
        case seven = "7"
        case eight = "8"
        case nine = "9"
        case zero = "0"
        case star = "*"
        case pound = "#"
    }

    var buttonPressed: ((Button) -> Void)?
}
