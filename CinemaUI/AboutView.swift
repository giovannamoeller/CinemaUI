//
//  AboutView.swift
//  CinemaUI
//
//  Created by Giovanna Moeller on 01/10/21.
//

import SwiftUI

struct AboutView: View {
  var movie: Movies
  var body: some View {
    ZStack {
      Color(#colorLiteral(red: 0.06666666667, green: 0.06666666667, blue: 0.06666666667, alpha: 1)).edgesIgnoringSafeArea(.all)
      
      
      
      VStack(alignment: .leading) {
        VStack {
          Image(movie.image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(height: 240, alignment: .top)
            .clipped()
        }.edgesIgnoringSafeArea(.top)
        
        VStack(alignment: .leading, spacing: 16) {
          Text(movie.title)
            .font(.title2)
            .bold()
          Text(movie.year)
            .font(.callout)
            .foregroundColor(.white.opacity(0.5))
            
          HStack {
            Text(String(format: "%.1f", movie.rate))
              .bold()
            
            Group {
                            
              ForEach(0..<Int(movie.rate.rounded())) { rate in
                Image(systemName: "star.fill")
              }
              
            }.foregroundColor(Color(#colorLiteral(red: 0.3176470588, green: 0.09803921569, blue: 0.6784313725, alpha: 1)))
            
            
          }
          
          Text("Synopsis".uppercased())
            .kerning(6.0)
            .padding(.vertical)
          
          Text(movie.synopsis)
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
    AboutView(movie: movies[1])
  }
}
