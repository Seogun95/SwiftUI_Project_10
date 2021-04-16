//
//  ContentView.swift
//  SwiftUI_Project_10
//
//  Created by 김선중 on 2021/04/10.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack(spacing: 0) {
                ProductRow(product: ProductList[0])
                ProductRow(product: ProductList[1])
                ProductRow(product: ProductList[2])
                ProductRow(product: ProductList[3])
                ProductRow(product: ProductList[4])
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
