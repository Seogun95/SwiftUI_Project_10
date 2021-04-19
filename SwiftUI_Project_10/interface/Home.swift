//
//  Home.swift
//  SwiftUI_Project_10
//
//  Created by 김선중 on 2021/04/10.
//

import SwiftUI

struct Home: View {
    let movie: Movie
    
    var body: some View {
        NavigationView {
            List(movie.products, id: \.name) { product in
                NavigationLink(
                    destination: Text("디테일 뷰")) {
                    ProductRow(product: product)
                }
            }
            .navigationBarTitle("지브리 스튜디오")
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home(movie: Movie())
    }
}
