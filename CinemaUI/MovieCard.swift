//
//  MovieCard.swift
//  CinemaUI
//
//  Created by Giovanna Moeller on 02/10/21.
//

import SwiftUI

struct MovieCard: View {
  var movie: Movies
  
  var body: some View {
    VStack {
      Image(movie.image)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .cornerRadius(8.0)
        .frame(width: 230, height: 230)
        .clipped()
        .shadow(radius: 20)
        .padding(.bottom)
      
      VStack(spacing: 8) {
        Text(movie.title)
          .bold()
          .multilineTextAlignment(.center)
        Text(movie.year)
          .font(.caption)
          .foregroundColor(.white.opacity(0.8))
      }
    }.foregroundColor(.white)
      .navigationTitle("")
      .navigationBarHidden(true)
  }
}

struct MovieCard_Previews: PreviewProvider {
  static var previews: some View {
    MovieCard(movie: movies[0])
  }
}
