//
//  SelectCurrency.swift
//  LOTR
//
//  Created by Oscar Mellado Arbelo on 8/5/24.
//

import SwiftUI

struct SelectCurrency: View {

    @Environment (\.dismiss) var dismiss

    var body: some View {
        ZStack {
            Image(.parchment)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .background(.brown)
            VStack {
                Text("Select the currency you are starting with:").fontWeight(.bold)
                CurrencyIcon(currencyImage: .copperpenny, currencyName: "Copper Penny")
                
                Text("Select the currency you would like to convert to:").fontWeight(.bold)
                // Currencies
                
                Button("Done"){
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .padding(10)
            .multilineTextAlignment(.center)

        }
    }
}

#Preview {
    SelectCurrency()
}


