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
                    .resizable().ignoresSafeArea()
            }
            VStack {
                Image(.prancingpony).resizable().scaledToFit().frame(height:200)
                Text("Currency Exchange").font(.largeTitle).foregroundStyle(.white)
                HStack{
                    ZStack {
                        VStack{
                            
                        }
                        HStack{
                            VStack{
                                HStack{
                                    Image(.silverpiece)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 33)
                                    Text("Silver Piece").font(.headline).foregroundStyle(.white)
                                    input
                                }
                            }
                            VStack{Image(systemName: "equal").foregroundColor(.white)}
                            VStack{
                                
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
