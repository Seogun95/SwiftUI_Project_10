//
//  ProductRow.swift
//  SwiftUI_Project_10
//
//  Created by 김선중 on 2021/04/16.
//

import SwiftUI

struct ProductRow: View {
    
    let product: Product
    
    var body: some View {
        HStack {
            productImage
            productDescription
        }
        .frame(height: 150)
        .background(Color.primary.colorInvert()) //다크모드 라이트모드
        .cornerRadius(10)
        .shadow(color: .primaryShadow, radius: 1, x: 2, y: 2)
        .padding(.vertical, 10)
    }
}

private extension ProductRow {
    var productImage: some View {
        Image(product.ImageName)
            .resizable()
            .scaledToFill()
            .frame(width: 150)
            .clipped()
    }
    var productDescription: some View {
        VStack(alignment: .leading){
            Text(product.name)
                .font(.headline)
                .fontWeight(.medium)
                .padding(.bottom, 10)
            
            Text(product.description)
                .font(.footnote)
                .foregroundColor(.secondary)
                .lineLimit(3)
            
            Spacer()
            
            footerView

        }
        .padding([.leading, .bottom], 10)
        .padding([.trailing, .top])
    }
    var footerView: some View {
        HStack(spacing: 0) {
            Text(.init(systemName: "film.fill"))
                .font(.footnote)
                .foregroundColor(.lightRed) + Text(product.movie)
                .font(.footnote)
            
            Spacer()
            
            Image(systemName: "heart")
              .imageScale(.large)
              .foregroundColor(.lightRed)
              .frame(width: 32, height: 32)
            
            Image(systemName: "cart")
              .foregroundColor(.lightRed)
              .frame(width: 32, height: 32)
            
        }
    }
}


struct ProductRow_preview: PreviewProvider {
    static var previews: some View {
        ProductRow(product: ProductList[0])
    }
}
