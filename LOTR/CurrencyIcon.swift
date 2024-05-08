//
//  CurrencyIcon.swift
//  LOTR
//
//  Created by Oscar Mellado Arbelo on 8/5/24.
//

import SwiftUI

struct CurrencyIcon: View {
        
    let currencyImage: ImageResource
    let currencyName: String
    
        var body: some View {
            
            ZStack(alignment: .bottom){
                Image(currencyImage).resizable().scaledToFit()
                Text(currencyName).font(.caption).padding(3).frame(maxWidth: .infinity).background(.brown.opacity(0.75))
            }.padding(3).frame(width: 100, height: 100).background(.brown).clipShape(.rect(cornerRadius: 25))
            
        }
}

#Preview {
    CurrencyIcon(currencyImage: .copperpenny, currencyName: "Copper Penny")
}
