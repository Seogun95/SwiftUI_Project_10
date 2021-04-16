// ColorExtension

import SwiftUI
 
extension Color {
    static let lightRed = Color(hex: "c64756")
    static let DarkGreen = Color(hex: "00587a")
    static let deepgray = Color(hex: "6e6e6e")
    static let primaryShadow = Color.primary.opacity(0.5)
    static let background = Color(UIColor.systemGray6)
}

extension Color {
    
    //헥스(HEX) 코드 활용
    init(hex: String) {
        let scanner = Scanner(string: hex) // 문자열 파서 역할을 하는 클래스
        _ = scanner.scanString("#") // scanString은 iOS 13부터 지원.
        
        var rgb: UInt64 = 0
        //문자열을 Int64 타입으로 변환해 rgb 변수에 저장. 변환할 수 없다면 0을 반환함
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255.0   // 좌측 문자열 2개 추출
        let g = Double((rgb >> 8) & 0xFF) / 255.0    // 중간 문자열 2개 추출
        let b = Double((rgb >> 0) & 0xFF) / 255.0    // 우측 문자열 2개 추출
        self.init(red: r, green: g, blue: b)
        
    }
 }
