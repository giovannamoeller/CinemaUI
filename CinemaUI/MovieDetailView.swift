//
//  MovieDetailView.swift
//  CinemaUI
//
//  Created by Giovanna Moeller on 02/10/21.
//

import SwiftUI

struct MovieDetailView: View {
  @State var aboutView: Bool = false
  @Environment(\.presentationMode) var presentationMode
  var movie: Movies
  var body: some View {
    NavigationView {
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
            Text("Movie Detail")
              .font(.title2)
              .bold()
            Spacer()
            Button(action: {
              self.aboutView = true
            }) {
              Text("About")
                .foregroundColor(Color(#colorLiteral(red: 0.3176470588, green: 0.09803921569, blue: 0.6784313725, alpha: 1)))
            }.sheet(isPresented: $aboutView, content: {
              AboutView(movie: movie)
            })
          }.padding(.bottom, 48)
          
          
          VStack(spacing: 48) {
            
            Image(movie.image)
              .resizable()
              .aspectRatio(contentMode: .fit)
              .cornerRadius(8)
              .shadow(radius: 20)
            
            VStack(spacing: 8) {
              Text(movie.title)
                .font(.title2)
                .bold()
              Text(movie.year)
                .bold()
            }
            
            NavigationLink(destination: TicketsView().navigationTitle("")
                            .navigationBarHidden(true)) {
              
                Text("Buy Tickets")
                  .bold()
                  .padding(.vertical)
                  .padding(.horizontal, 32)
                  .background(Color(#colorLiteral(red: 0.3176470588, green: 0.09803921569, blue: 0.6784313725, alpha: 1)))
                  .cornerRadius(8.0)
              
            }
            
            
          }
          
          Spacer()
        }.foregroundColor(.white)
        .padding()
      }.navigationTitle("")
      .navigationBarHidden(true)
    }
    
  }
}

struct MovieDetailView_Previews: PreviewProvider {
  static var previews: some View {
    MovieDetailView(movie: movies[0])
  }
}
