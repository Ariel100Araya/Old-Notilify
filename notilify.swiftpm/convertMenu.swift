//
//  convertMenu.swift
//  Notilify
//
//  Created by Ariel Araya-Madrigal on 4/12/23.
//

import SwiftUI

struct convertMenu: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: unitConversion()) {
                    GestureRow(title: "Temparature", description: "", SFSymbol: "thermometer.high")
                }
                NavigationLink(destination: volumeConversion()) {
                    GestureRow(title: "Volume", description: "", SFSymbol: "viewfinder")
                }
            }
            .navigationTitle("Convert")
        ContentView()
        }
    }
}

struct convertMenu_Previews: PreviewProvider {
    static var previews: some View {
        convertMenu()
    }
}
