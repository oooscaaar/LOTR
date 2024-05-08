//
//  ContentView.swift
//  LOTR
//
//  Created by Oscar M. on 21/4/24.
//

import SwiftUI

struct ContentView: View {
    @State var displayExchangeInfo = false
    @State var leftAmount = ""
    @State var rightAmount = ""
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
                                TextField(
                                    "Amount",
                                    text: $rightAmount).textFieldStyle(.roundedBorder)
                            }
                            Image(systemName: "equal").foregroundColor(.white).padding(.top).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            VStack{
                                HStack{
                                    Image(.goldpiece)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 33)
                                    Text("Gold Piece").font(.headline).foregroundStyle(.white)
                                }
                                TextField(
                                    "Amount",
                                    text: $rightAmount).textFieldStyle(.roundedBorder).multilineTextAlignment(.trailing)
                            }
                            
                        }.padding().background(.black.opacity(0.5)).cornerRadius(15)
                    }.padding()
                }
                Spacer()
                HStack{
                    Spacer()
                    Button{
                        displayExchangeInfo.toggle()
                        print("Show info: \(displayExchangeInfo)")
                    } label: {
                        Image(systemName: "info.circle.fill").foregroundColor(.white).font(.largeTitle)
                    }.padding(.trailing)
                }

            }

        }.sheet(isPresented: $displayExchangeInfo, content: {
            ExchangeInfoView()
        })
    }
}

#Preview {
    ContentView()
}
