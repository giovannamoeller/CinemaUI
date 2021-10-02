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
        VStack {
          HStack {
            Button(action: {}) {
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
              AboutView()
            })
          }
          
          
          VStack(spacing: 48) {
            Spacer()
            Image("avengers")
              .resizable()
              .aspectRatio(contentMode: .fit)
              
              .cornerRadius(8)
              .shadow(radius: 20)
            VStack(spacing: 8) {
              Text("Avengers - Endgame")
                .font(.title2)
                .bold()
              Text("2019")
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

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
