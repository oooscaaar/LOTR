//
//  ExchangeInfoView.swift
//  LOTR
//
//  Created by Oscar Mellado Arbelo on 7/5/24.
//

import SwiftUI

struct ExchangeRateView: View {
    
    let leftImage: ImageResource
    let exchangeText: String
    let rightImage: ImageResource
    
    var body: some View {
        HStack{
            Image(leftImage).resizable().scaledToFit()
            Text(exchangeText)
            Image(rightImage).resizable().scaledToFit()
        }.frame(height: 33)
    }
}

#Preview {
    ExchangeRateView(leftImage: .copperpenny, exchangeText: "1 Penny = 4 Silver coins", rightImage: .silverpenny)
}
