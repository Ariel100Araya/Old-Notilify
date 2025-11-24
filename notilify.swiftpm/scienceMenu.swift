//
//  scienceMenu.swift
//  Notilify
//
//  Created by Ariel Araya-Madrigal on 4/11/23.
//

import SwiftUI

struct scienceMenu: View {
    var body: some View {
        NavigationView {
        List {
            NavigationLink(destination: ContentView()) {
                GestureRow(title: "Base to Scientific Calculator", description: "From 2563.9 to 2.5639x10^3", SFSymbol: "function")
            }
            NavigationLink(destination: ScientificNotationConverterView()) {
                GestureRow(title: "Scientific to Base Calculator", description: "From 1.23e+6 to 1230000.0", SFSymbol: "function")
            }
            NavigationLink(destination: ElementView()) {
                GestureRow(title: "Elements", description: "Type in the Atomic number and get details about the element.", SFSymbol: "atom")
            }
            /*
            NavigationLink(destination: moletoMolecules()) {
                GestureRow(title: "Moles to Molecules", description: "Type in the amount of moles and get the number of molecules.", SFSymbol: "allergens")
            }
             */
        }
        .navigationTitle("Science")
    ContentView()
    }
    }
}

struct scienceMenu_Previews: PreviewProvider {
    static var previews: some View {
        scienceMenu()
    }
}
