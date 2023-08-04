//
//  CardButtonView.swift
//  nubank_clone_swiftui
//
//  Created by Silas Da Silva Caxias on 04/08/23.
//

import SwiftUI

struct CardButtonView: View {
    var title: String
    var icon: String
    var action: () -> Void

    var body: some View {
        Button {
            action()
        } label: {
            HStack {
                Image(systemName: icon)
                    .font(.title2)
                Text(title)
                    .padding(.leading)
                Spacer()
            }
            .padding()
            .foregroundColor(.primary)
            .frame(width: 350.0, height: 60.0)
            .background(Color("CardBackground"))
            .cornerRadius(16.0)
            .padding()
        }
    }
}
