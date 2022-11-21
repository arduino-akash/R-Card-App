//
//  ClientModel.swift
//  R-Card App
//
//  Created by Singh, Akash | RIEPL on 20/11/22.
//

import SwiftUI

// MARK: - FACT MODEL

struct Fact: Identifiable {
  var id = UUID()
  var image: String
  var content: String
}
