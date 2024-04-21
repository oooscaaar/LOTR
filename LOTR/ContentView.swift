//
//  ContentView.swift
//  LOTR
//
//  Created by Oscar M. on 21/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                Image(.background)
                    .resizable()
            }.ignoresSafeArea()
            VStack {
                Image(.prancingpony).resizable().scaledToFit().frame(height:200)
                HStack{
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
