//
//  AccountView.swift
//  nubank_clone_swiftui
//
//  Created by Silas Da Silva Caxias on 04/08/23.
//

import SwiftUI

let shortcutSection: [ShortcutIcon] = [
    .pix,
    .transfer,
    .loan,
    .deposit,
    .investment
]

let othersSection: [String] = [
    "Dinheiro Extra no fim do Ano? Guarde nas Caixinhas!",
    "Dinheiro Extra no fim do Ano? Guarde nas Caixinhas!",
    "Dinheiro Extra no fim do Ano? Guarde nas Caixinhas!",
    "Dinheiro Extra no fim do Ano? Guarde nas Caixinhas!",
]

struct AccountView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Conta")
                    .font(.title3)
                    .fontWeight(.medium)
                Spacer()
                Image(systemName: "chevron.right")
            }
            .padding()
            Text("R$ 5.000,95")
                .fontWeight(.medium)
                .padding(.horizontal)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top) {
                    ForEach(shortcutSection, id: \.hashValue) { shortcut in
                        CircleButtonView(viewModel: ComponentViewModel(title: shortcut.title, iconName: shortcut.icon) {
                            print("\(shortcut.title) button action.")
                        })
                    }
                }
            }
            CardButtonView(viewModel: ComponentViewModel(title: "Meus Cartões", iconName: "lanyardcard") {
                print("Meus Cartões button action.")
            })
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top) {
                    ForEach(othersSection, id: \.hashValue) { title in
                        CardView(viewModel: ComponentViewModel(title: title) {
                            print("\(title) button action.")
                        })
                    }
                }
            }
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
