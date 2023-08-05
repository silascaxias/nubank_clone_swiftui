//
//  CreditCardView.swift
//  nubank_clone_swiftui
//
//  Created by Silas Da Silva Caxias on 04/08/23.
//

import SwiftUI

struct CurrencyView: View {
    var viewModel: CurrencyViewViewModel

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(viewModel.title)
                    .font(.title3)
                    .fontWeight(.medium)
                Spacer()
                Image(systemName: "chevron.right")
            }
            .padding()
            Text(viewModel.subTitle)
                .foregroundColor(Color.black.opacity(0.7))
                .padding(.horizontal)
                .padding(.top, 8.0)
            Text(viewModel.value)
                .foregroundColor(.primary)
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.top, 0.1)
                .padding(.horizontal)
            Text(viewModel.description)
                .foregroundColor(Color.gray)
                .padding(.horizontal)
                .padding(.top, 7.0)
        }.padding(.horizontal, 16.0)
    }
}
