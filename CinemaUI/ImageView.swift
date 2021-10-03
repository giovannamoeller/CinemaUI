//
//  ImageView.swift
//  CinemaUI
//
//  Created by Giovanna Moeller on 02/10/21.
//

import SwiftUI

extension String {
  func load() -> UIImage {
    do {
      guard let url = URL(string: self) else { return UIImage() }
      
      let data: Data = try Data(contentsOf: url)
      
      return UIImage(data: data) ?? UIImage()
    }
    catch {
      
    }
    
    return UIImage()
  }
}

struct ImageView: View {
  let image: String
  var body: some View {
    Image(uiImage: image.load())
      .resizable()
      .aspectRatio(contentMode: .fit)
  }
}

struct ImageView_Previews: PreviewProvider {
  static var previews: some View {
    ImageView(image: movies[0].image)
  }
}
