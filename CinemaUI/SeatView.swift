//
//  SeatView.swift
//  CinemaUI
//
//  Created by Giovanna Moeller on 01/10/21.
//

import SwiftUI

extension View {
    /// Applies the given transform if the given condition evaluates to `true`.
    /// - Parameters:
    ///   - condition: The condition to evaluate.
    ///   - transform: The transform to apply to the source `View`.
    /// - Returns: Either the original `View` or the modified `View` if the condition is `true`.
    @ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}

struct SeatView: View {
  
  @Binding var totalPrice: Double
  let seatPrice: Double = 8.0
  @State var seat: Row
  
  var body: some View {
    
    if !seat.isTaken {
      
      ZStack {
        
        RoundedRectangle(cornerRadius: 8)
          .stroke(Color(#colorLiteral(red: 0.3176470588, green: 0.09803921569, blue: 0.6784313725, alpha: 1)), lineWidth: 1)
          .background(RoundedRectangle(cornerRadius: 8).fill(seat.isSelected ? Color(#colorLiteral(red: 0.3176470588, green: 0.09803921569, blue: 0.6784313725, alpha: 1)) : Color(#colorLiteral(red: 0.06666666667, green: 0.06666666667, blue: 0.06666666667, alpha: 1))))
          .frame(width: 32, height: 28)
          .onTapGesture {
            seat.isSelected.toggle()
            
            if seat.isSelected {
              totalPrice += seatPrice
            } else {
              totalPrice -= seatPrice
            }
          }
      }.animation(.easeInOut)
      
    } else {
      ZStack {
        RoundedRectangle(cornerRadius: 8)
          .stroke(Color(#colorLiteral(red: 0.6745098039, green: 0.6745098039, blue: 0.6745098039, alpha: 1)), lineWidth: 1)
          .frame(width: 32, height: 28)
        Image(systemName: "xmark")
          .foregroundColor(Color(#colorLiteral(red: 0.6745098039, green: 0.6745098039, blue: 0.6745098039, alpha: 1)))
      }
    }
  }
}

struct SeatView_Previews: PreviewProvider {
  static var previews: some View {
    SeatView(totalPrice: .constant(0.0), seat: Row(row: 1, column: 1))
  }
}
