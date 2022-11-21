//
//  PageModel.swift
//  R-Card App
//
//  Created by Singh, Akash | RIEPL on 18/11/22.
//

import Foundation

struct Page: Identifiable {
  let id: Int
  let imageName: String
}

extension Page {
  var thumbnailName: String {
    return "thumb-" + imageName
  }
}
