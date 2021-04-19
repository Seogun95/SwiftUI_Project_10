//
//  ProductDetailView.swift
//  SwiftUI_Project_10
//
//  Created by 김선중 on 2021/04/19.
//

import SwiftUI

struct ProductDetailView: View {
    // 정보를 전달받기 위한 프로퍼티 선언
    let product: Product
    
    // MARK : Body
    var body: some View {
        VStack {
            productImage // 이미지가 올 부분
            orderView // 영화 정보를 출력하고 그 영화를 구매 하기 위한 뷰
        }
        .edgesIgnoringSafeArea(.top)
    }
}

private extension ProductDetailView {
    
    // MARK : View
    var productImage: some View {
        GeometryReader { _ in
            Image(self.product.ImageName)
                .resizable()
                .scaledToFill()
        }
    }
    var orderView: some View {
        GeometryReader {
            VStack(alignment: .leading) {
                self.productDescripsion //영화제목과 즐겨찾기 버튼 이미지 추가
                Spacer()
                //                self.priceInfo // 가격
                //                self.placeOrderButton // 주문버튼
            }
            //geometryReader가 차지하고있는 뷰 높이보다 VStack의 높이가 10 크도록 지정해줌
            .frame(height: $0.size.height + 10)
            .padding(30)
            .background(Color.white)
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.4), radius: 10, x: 0, y: -5)
        }
    }
    var productDescripsion: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text(product.name)
                    .font(.largeTitle)
                    .foregroundColor(.black)
                Spacer()
                Image(systemName: "heart") // 즐겨찾기 버튼
                    .font(.title2)
                    .foregroundColor(.lightRed)
                    .frame(width: 32, height: 32)
            }
            Text(splitText(product.description))
                .foregroundColor(.gray)
                .fixedSize()
        }
    }
    /* 한 문장으로 길게 구성된 텍스트를 화면에 적장하게 나타내기위해 두 줄로 나누워 주는 기능 */
    
    func splitText(_ text: String) -> String {
        guard !text.isEmpty else { return text }
        let centerIdx = text.index(text.startIndex, offsetBy: text.count / 2)
        let centerSpaceIdx = text[..<centerIdx].lastIndex(of: " ")
            ?? text[centerIdx...].firstIndex(of: " ")
            ?? text.index(before: text.endIndex)
        let afterSpaceIdx = text.index(after: centerSpaceIdx)
        let lhsString = text[..<afterSpaceIdx].trimmingCharacters(in: .whitespaces)
        let rhsString = text[afterSpaceIdx...].trimmingCharacters(in: .whitespaces)
        return String(lhsString + "\n" + rhsString)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: ProductList[0])
    }
}

