//
//  ContentView.swift
//  nubank_clone_swiftui
//
//  Created by Silas Da Silva Caxias on 04/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            ScrollView {
                AccountView()
                Divider()
                    .frame(height: 1.0)
                    .background(Color("CardBackground"))
                CurrencyView(viewModel: CurrencyViewViewModel(title: "Cartão de crédito",
                                                              subTitle: "Fatura atual",
                                                              value: "R$ 500,00",
                                                              description: "Limite disponível de R$ 495,12"))
                Divider()
                    .frame(height: 1.0)
                    .background(Color("CardBackground"))
                CurrencyView(viewModel: CurrencyViewViewModel(title: "Empréstimo",
                                                              subTitle: "Valor disponível de até",
                                                              value: "R$ 15.000,00"))
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
