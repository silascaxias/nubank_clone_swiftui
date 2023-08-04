//
//  ContentView.swift
//  nubank_clone_swiftui
//
//  Created by Silas Da Silva Caxias on 04/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack() {
            HeaderView()
            AccountView()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
