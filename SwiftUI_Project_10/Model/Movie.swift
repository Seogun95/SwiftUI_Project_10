//  Movie.swift

import Foundation

final class Movie {
  var products: [Product]
  
  // MARK: Initialization
  
                          //Json 파일명 입력
  init(filename: String = "ProductData.json") {
    self.products = Bundle.main.decode(filename: filename, as: [Product].self)
  }
}
