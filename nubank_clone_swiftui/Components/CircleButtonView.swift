//
//  CircleButtonView.swift
//  nubank_clone_swiftui
//
//  Created by Silas Da Silva Caxias on 04/08/23.
//

import SwiftUI

struct CircleButtonView: View {
    var viewModel: ComponentViewModel

    var body: some View {
        HStack(alignment: .top) {
            Button {
                viewModel.action()
            } label: {
                VStack(alignment: .center) {
                    ZStack {
                        Circle().foregroundColor(Color("CardBackground"))
                            .frame(width: 80.0, height: 90.0)
                        Image(systemName: viewModel.iconName)
                            .font(.title3)
                            .padding(10.0)
                    }
                    Text(viewModel.title)
                        .font(.system(size: 15))
                }
                .foregroundColor(.primary)
                .frame(width: 90.0)
            }
        }
    }
}
