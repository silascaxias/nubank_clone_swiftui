//
//  CardView.swift
//  nubank_clone_swiftui
//
//  Created by Silas Da Silva Caxias on 04/08/23.
//

import SwiftUI

struct CardView: View {
    var viewModel: ComponentViewModel

    var body: some View {
        Button {
            viewModel.action()
        } label: {
            Text(viewModel.title)
                .fontWeight(.regular)
                .multilineTextAlignment(.leading)
                .font(.system(size: 14.0))
                .padding()
                .frame(width: 300.0, height: 100.0)
                .background(Color("CardBackground"))
                .cornerRadius(16.0)
                .foregroundColor(.primary)
                .padding([.leading, .top])
        }

    }
}
