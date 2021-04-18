//
//  ContentView.swift
//  SwiftUI_Project_10
//
//  Created by 김선중 on 2021/04/10.
//

import SwiftUI

struct Home: View {
    let movie: Movie
    
    var body: some View {
        List(movie.products, id: \.name) { product in
            ProductRow(product: product)
            
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home(movie: Movie())
    }
}
