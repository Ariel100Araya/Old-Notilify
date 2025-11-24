//
//  mainMenu.swift
//  Notilify
//
//  Created by Ariel Araya-Madrigal on 2/4/23.
//

import SwiftUI

struct mainMenu: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: ContentView()) {
                    GestureRow(title: "Base to Scientific Calculator", description: "From 2563.9 to 2.5639x10^3", SFSymbol: "function")
                }
                NavigationLink(destination: ScientificNotationConverterView()) {
                    GestureRow(title: "Scientific to Base Calculator", description: "From 1.23e+6 to 1230000.0", SFSymbol: "function")
                }
                NavigationLink(destination: quadratics()) {
                    GestureRow(title: "Quadratic", description: "Calculate with that weird formula that nobody remembers", SFSymbol: "x.squareroot")
                }
                NavigationLink(destination: percentCalculator()) {
                    GestureRow(title: "Percentage", description: "Calculate the percent of a number", SFSymbol: "percent")
                }
                NavigationLink(destination: ElementView()) {
                    GestureRow(title: "Elements", description: "Type in the Atomic number and get details about the element.", SFSymbol: "atom")
                }
                NavigationLink(destination: fractiontoDecimal()) {
                    GestureRow(title: "Fraction to Decimal", description: "From 25/46 to 0.5435", SFSymbol: "plus.forwardslash.minus")
                }
                NavigationLink(destination: interestCalculators()) {
                    GestureRow(title: "Interest Calculaotrs", description: "Those weird annoying numbers simplified", SFSymbol: "creditcard")
                }
                NavigationLink(destination: CreditsView()) {
                    GestureRow(title: "Credits", description: "About this app", SFSymbol: "info.circle")
                }
//                NavigationLink(destination: decimaltoFraction()) {
//                    GestureRow(title: "Decimal to Fraction", description: "From 0.5435 to 25/46", SFSymbol: "plus.forwardslash.minus")
//                }
            }
            .navigationTitle("Notilify")
        ContentView()
        }
    }
}

struct mainMenu_Previews: PreviewProvider {
    static var previews: some View {
        mainMenu()
    }
}
