//
//  SeatsView.swift
//  CinemaUI
//
//  Created by Giovanna Moeller on 01/10/21.
//

import SwiftUI

struct SeatsView: View {
  
  @Binding var totalPrice: Double
  
  var body: some View {
    
    let rowOfFour = 8
    let rowOfThree = 2
    let totalRows = rowOfFour + rowOfThree
    //let totalSeatsOfFour = rowOfFour * 8
    //let totalSeatsOfThree = rowOfThree * 6
    //let totalSeats = rowOfFour + rowOfThree
    
    VStack {
      ForEach(0..<totalRows) { row in
        HStack {
          if row == 0 || row == totalRows - 1 {
            ForEach(0..<rowOfFour - 2) { index in
              if index == (rowOfFour - 2) / 2 {
                Spacer()
              }
              
              if row == 0 && index == 2 {
                SeatView(totalPrice: $totalPrice, seat: Row(row: row, column: index, isTaken: true))
              } else {
                SeatView(totalPrice: $totalPrice, seat: Row(row: row, column: index))
              }
              
              
            }
          } else {
            ForEach(0..<rowOfFour) { index in
              if index == rowOfFour / 2 {
                Spacer()
              }
              if (row == 1 && index == 3) || (row == 5 && index == 1) {
                SeatView(totalPrice: $totalPrice, seat: Row(row: row, column: index, isTaken: true))
              } else {
                SeatView(totalPrice: $totalPrice, seat: Row(row: row, column: index))
              }
            }
          }
        }
      }
    }.padding()
  }
}

struct SeatsView_Previews: PreviewProvider {
  static var previews: some View {
    SeatsView(totalPrice: .constant(0.0))
  }
}
