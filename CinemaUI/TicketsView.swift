//
//  TicketsView.swift
//  CinemaUI
//
//  Created by Giovanna Moeller on 01/10/21.
//

import SwiftUI

struct TicketsView: View {
  
  @State var totalValue: Double = 0.0
  @Environment(\.presentationMode) var presentationMode

  
  var body: some View {
    ZStack {
      Color(#colorLiteral(red: 0.06666666667, green: 0.06666666667, blue: 0.06666666667, alpha: 1)).edgesIgnoringSafeArea(.all)
      VStack {
        HStack {
          Button(action: {
            self.presentationMode.wrappedValue.dismiss()
          }) {
            Image(systemName: "chevron.backward")
              .font(.title2)
          }
          
          Spacer()
          Text("Select Seats")
            .font(.title2)
            .bold()
          Spacer()
        }.padding()
        
        
        // 64 de 4 cadeiras -> 8 cada fileira (64)
        // 12 de 3 cadeiras -> 6 cada fileira (12)
        
        
        VStack(spacing: 32) {
          
          RoundedRectangle(cornerRadius: 8).fill(Color(#colorLiteral(red: 0.1137254902, green: 0.1137254902, blue: 0.1137254902, alpha: 1)))
            .frame(height: 32)
            .padding()
          
          // Seats
          
          SeatsView(totalPrice: $totalValue)
          
          ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 32) {
              Button(action: {}) {
                Text("11:30")
                  .bold()
                  .padding(.vertical)
                  .padding(.horizontal, 32)
                  .background(Color(#colorLiteral(red: 0.3176470588, green: 0.09803921569, blue: 0.6784313725, alpha: 1)))
                  .cornerRadius(8.0)
              }
              Button(action: {}) {
                Text("12:30")
                  .bold()
                  .padding(.vertical)
                  .padding(.horizontal, 32)
                  .background(Color(#colorLiteral(red: 0.3176470588, green: 0.09803921569, blue: 0.6784313725, alpha: 0.3)))
                  .foregroundColor(.white.opacity(0.3))
                  .cornerRadius(8.0)
              }
              Button(action: {}) {
                Text("13:30")
                  .bold()
                  .padding(.vertical)
                  .padding(.horizontal, 32)
                  .background(Color(#colorLiteral(red: 0.3176470588, green: 0.09803921569, blue: 0.6784313725, alpha: 0.3)))
                  .foregroundColor(.white.opacity(0.3))
                  .cornerRadius(8.0)
              }
            }.padding(.leading)
          }
          
          HStack {
            VStack(alignment: .leading) {
              Text("Total Value")
              Text("$ \(String(format: "%.2f", totalValue))")
                .font(.title2)
                .bold()
                .foregroundColor(Color(#colorLiteral(red: 0.3176470588, green: 0.2581954657, blue: 0.825255102, alpha: 1)))
            }
            Spacer()
            Button(action: {
              
            }) {
              
              Text("Buy Tickets")
                .bold()
                .padding(.vertical)
                .padding(.horizontal, 32)
                .background(Color(#colorLiteral(red: 0.3176470588, green: 0.09803921569, blue: 0.6784313725, alpha: 1)))
                .cornerRadius(8.0)
            }
            //Text("\(Row.allSeats.count)")
          }.padding()
        }
        
      }.foregroundColor(.white)
    }
  }
}

struct TicketsView_Previews: PreviewProvider {
  static var previews: some View {
    TicketsView()
  }
}
