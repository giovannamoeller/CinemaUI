//
//  ContentView.swift
//  CinemaUI
//
//  Created by Giovanna Moeller on 01/10/21.
//

import SwiftUI

struct ContentView: View {
  
  @State var aboutView: Bool = false
  
  
  var body: some View {
    NavigationView {
      ZStack {
        Color(#colorLiteral(red: 0.06666666667, green: 0.06666666667, blue: 0.06666666667, alpha: 1)).edgesIgnoringSafeArea(.all)
        
        let items: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
        
        VStack {
          
          ScrollView(.vertical, showsIndicators: false) {
            Text("Movies")
              .foregroundColor(.white)
              .font(.title2)
              .bold()
              .padding()
              .frame(maxWidth: .infinity, alignment: .leading)
            LazyVGrid(columns: items, spacing: 48) {
              ForEach(movies, id: \.id) { movie in
                NavigationLink(destination: MovieDetailView(movie: movie)
                                .navigationTitle("")
                                .navigationBarHidden(true)) {
                  MovieCard(movie: movie)
                }
              }
            }
          }
        }.padding()
        
      }.preferredColorScheme(.dark)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
