//
//  Digit.swift
//  R-Card App
//
//  Created by Singh, Akash | RIEPL on 21/11/22.
//

import Foundation

enum Digit: Int, CaseIterable, CustomStringConvertible {
    case zero, one, two, three, four, five, six, seven, eight, nine
    
    var description: String {
        "\(rawValue)"
    }
}
