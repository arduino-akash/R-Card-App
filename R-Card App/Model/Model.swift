//
//  Model.swift
//  R-Card App
//
//  Created by Singh, Akash | RIEPL on 14/11/22.
//

import SwiftUI

struct Data: Identifiable {
  var id = UUID()
  var title: String
  var headline: String
  var image: String
  var gradientColors: [Color]
  var description: String
  var url: String

  var info: [String]
}

struct Fact: Identifiable {
  var id = UUID()
  var image: String
  var content: String
}

struct Details: Identifiable {
  var id = UUID()
  var title: String
  var headline: String
  var image: String
  var Description: String
  var info: [String]
}

struct Header: Identifiable {
  var id = UUID()
  var image: String
  var headline: String
  var subheadline: String
}

struct Welcome: Identifiable {
  var id = UUID()
  var image: String
  var title: String
  var description: String
  var gradientColors: [Color]
  var info: String
}
