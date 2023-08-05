//
//  CardButtonView.swift
//  nubank_clone_swiftui
//
//  Created by Silas Da Silva Caxias on 04/08/23.
//

import SwiftUI

struct CardButtonView: View {
    var viewModel: ComponentViewModel

    var body: some View {
        Button {
            viewModel.action()
        } label: {
            HStack {
                Image(systemName: viewModel.iconName)
                    .font(.title2)
                Text(viewModel.title)
                    .padding(.leading)
                Spacer()
            }
            .padding()
            .foregroundColor(.primary)
            .frame(width: 350.0, height: 60.0)
            .background(Color("CardBackground"))
            .cornerRadius(16.0)
            .padding(.horizontal, 8.0)
            .padding(.top, 16.0)
        }
    }
}
