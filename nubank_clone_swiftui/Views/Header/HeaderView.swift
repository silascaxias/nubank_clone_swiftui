//
//  HeaderView.swift
//  nubank_clone_swiftui
//
//  Created by Silas Da Silva Caxias on 04/08/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 28.0) {
                Image(systemName: "person")
                    .padding(12)
                    .background(Circle().foregroundColor(.white).opacity(0.2))
                Spacer()
                Image(systemName: "eye")
                Image(systemName: "questionmark.circle")
                Image(systemName: "envelope.badge")
            }
            .font(.title3)
            .padding()
            Text("Olá, Silas")
                .font(.title3)
                .padding()
        }
        .fontWeight(.medium)
        .foregroundColor(.white)
        .background(Color("NubankPurple"))
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
