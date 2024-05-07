//
//  ExchangeInfo.swift
//  LOTR
//
//  Created by Oscar Mellado Arbelo on 7/5/24.
//

import SwiftUI

struct ExchangeInfoView: View {
    
    var body: some View {
        
        ZStack {
            Image(.parchment).resizable().ignoresSafeArea().background(.brown)
            VStack{
                Text("Exchange Rate").font(.largeTitle).tracking(2.0)
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:").font(.title2).padding()
                ExchangeRateView(leftImage: .goldpiece, exchangeText: "1 Gold Piece = 4 Gold Pennies", rightImage: .goldpenny)
                ExchangeRateView(leftImage: .copperpenny, exchangeText: "1 Penny = 4 Silver coins", rightImage: .silverpenny)
                ExchangeRateView(leftImage: .copperpenny, exchangeText: "1 Penny = 4 Silver coins", rightImage: .silverpenny)
                ExchangeRateView(leftImage: .copperpenny, exchangeText: "1 Penny = 4 Silver coins", rightImage: .silverpenny)
                Button("Done"){
                    print("Done pressed")
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
                Spacer()
            }
        }
    }
}

#Preview {
    ExchangeInfoView()
}
