//
//  ProductRow.swift
//  SwiftUI_Project_10
//
//  Created by 김선중 on 2021/04/16.
//

import SwiftUI

struct ProductRow: View {
    var body: some View {
        HStack {
            productImage
            productDescription
        }
        .frame(height: 150)
        .background(Color.primary.colorInvert()) //다크모드 라이트모드
        .cornerRadius(10)
        .shadow(color: Color.primary.opacity(0.3), radius: 1, x: 2, y: 2)
        .padding(.vertical, 20)
    }
}

private extension ProductRow {
    var productImage: some View {
        Image("Sosuke")
            .resizable()
            .scaledToFit()
            .frame(height: 150)
            .clipped()
    }
    var productDescription: some View {
        VStack(alignment: .leading){
            Text("소스케")
                .font(.headline)
                .fontWeight(.medium)
                .padding(.bottom, 10)
            
            Text("5살 남자 아이. 본작품의 주인공. 벼랑 위에 있는 2~3층 정도 되는 주택에서 엄마와 함께 살고 있다.")
                .font(.footnote)
                .foregroundColor(.secondary)
            
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
                .foregroundColor(.lightRed) + Text("영화정보")
                .font(.footnote)
            
            Spacer()
            
            Text("벼랑위의 포뇨").font(.headline).foregroundColor(.DarkGreen)
            
        }
    }
}


struct ProductRow_preview: PreviewProvider {
    static var previews: some View {
        ProductRow()
    }
}
