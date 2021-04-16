//
//  ContentView.swift
//  SwiftUI_Project_10
//
//  Created by 김선중 on 2021/04/10.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack {
            ProductRow()
            ProductRow()
            ProductRow()
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
