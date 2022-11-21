//
//  WelcomeModel.swift
//  R-Card App
//
//  Created by Singh, Akash | RIEPL on 21/11/22.
//

import SwiftUI

// MARK: RIPENING MODEL

struct Welcome: Identifiable {
  var id = UUID()
  var image: String
  var title: String
  var description: String
  var gradientColors: [Color]

  var info: String
}
