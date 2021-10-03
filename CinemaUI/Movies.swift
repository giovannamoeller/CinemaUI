//
//  Movies.swift
//  CinemaUI
//
//  Created by Giovanna Moeller on 02/10/21.
//

import Foundation

struct Movies: Identifiable, Codable {
  var id: Int
  var title: String
  var year: String
  var image: String
  var rate: Double
  var synopsis: String
  
  /*init(title: String = "", year: String = "", image: String = "", rate: Double = 0.0, synopsis: String = "") {
    self.title = title
    self.year = year
    self.image = image
    self.rate = rate
    self.synopsis = synopsis
  }*/
}
