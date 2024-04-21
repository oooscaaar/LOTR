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
                                }
                                Text("Input Placeholder").foregroundStyle(.gray)
                            }
                            VStack{Image(systemName: "equal").foregroundColor(.white)}
                            VStack{
                                HStack{
                                    Image(.goldpiece)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 33)
                                    Text("Gold Piece").font(.headline).foregroundStyle(.white)
                                }
                                Text("Input Placeholder").foregroundStyle(.gray)
                            }
                        }.padding().background(.black).cornerRadius(15)
                    }.padding()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
