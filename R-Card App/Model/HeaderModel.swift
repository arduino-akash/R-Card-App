//
//  HeaderModel.swift
//  R-Card App
//
//  Created by Singh, Akash | RIEPL on 21/11/22.
//

import SwiftUI

// MARK: - HEADER MODEL

struct Header: Identifiable {
  var id = UUID()
  var image: String
  var headline: String
  var subheadline: String
}
