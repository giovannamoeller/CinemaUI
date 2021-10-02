//
//  AboutView.swift
//  CinemaUI
//
//  Created by Giovanna Moeller on 01/10/21.
//

import SwiftUI

struct AboutView: View {
  var body: some View {
    ZStack {
      Color(#colorLiteral(red: 0.06666666667, green: 0.06666666667, blue: 0.06666666667, alpha: 1)).edgesIgnoringSafeArea(.all)
      
      
      
      VStack(alignment: .leading) {
        VStack {
          Image("avengers")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(height: 240)
            .clipped()
        }.edgesIgnoringSafeArea(.top)
        
        VStack(alignment: .leading, spacing: 16) {
          Text("Avengers - Endgame")
            .font(.title2)
            .bold()
          Text("2019")
            .font(.callout)
            .foregroundColor(.white.opacity(0.5))
            
          HStack {
            Text("4.8")
              .bold()
            
            Group {
              Image(systemName: "star.fill")
              Image(systemName: "star.fill")
              Image(systemName: "star.fill")
              Image(systemName: "star.fill")
              Image(systemName: "star.fill")
            }.foregroundColor(Color(#colorLiteral(red: 0.3176470588, green: 0.09803921569, blue: 0.6784313725, alpha: 1)))
            
            
          }
          
          Text("Synopsis".uppercased())
            .kerning(6.0)
            .padding(.vertical)
          
          Text("After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos' actions and restore balance to the universe.")
            .foregroundColor(.white.opacity(0.5))
            .lineSpacing(4.0)
        }.padding()
        
        
        
        Spacer()
        
        
      }.foregroundColor(.white)
      
      
    }
  }
}

struct AboutView_Previews: PreviewProvider {
  static var previews: some View {
    AboutView()
  }
}
