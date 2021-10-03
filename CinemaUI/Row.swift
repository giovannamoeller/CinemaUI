//
//  Row.swift
//  CinemaUI
//
//  Created by Giovanna Moeller on 01/10/21.
//

import Foundation

class Row: Identifiable, ObservableObject {
    
  var id = UUID()
  let row: Int
  let column: Int
  var isTaken: Bool
  var isSelected: Bool
  
  init(row: Int, column: Int, isTaken: Bool = false, isSelected: Bool = false) {
    self.row = row
    self.column = column
    self.isTaken = isTaken
    self.isSelected = isSelected
  }
}
