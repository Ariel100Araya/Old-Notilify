//
//  mathMenu.swift
//  Notilify
//
//  Created by Ariel Araya-Madrigal on 4/11/23.
//

import SwiftUI

struct mathMenu: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: quadratics()) {
                    GestureRow(title: "Quadratic", description: "Calculate with that weird formula that nobody remembers", SFSymbol: "x.squareroot")
                }
                NavigationLink(destination: percentCalculator()) {
                    GestureRow(title: "Percentage", description: "Calculate the percent of a number", SFSymbol: "percent")
                }
                NavigationLink(destination: fractiontoDecimal()) {
                    GestureRow(title: "Fraction to Decimal", description: "From 25/46 to 0.5435", SFSymbol: "plus.forwardslash.minus")
                }
                NavigationLink(destination: interestCalculators()) {
                    GestureRow(title: "Interest", description: "Those weird annoying numbers simplified", SFSymbol: "creditcard")
                }
//                NavigationLink(destination: interestCalculators()) {
//                    GestureRow(title: "give me answers to calculus problems button", description: "", SFSymbol: "airtag")
//                }
//                NavigationLink(destination: decimaltoFraction()) {
//                    GestureRow(title: "Decimal to Fraction", description: "From 0.5435 to 25/46", SFSymbol: "plus.forwardslash.minus")
//                }
            }
            .navigationTitle("Math")
        ContentView()
        }
    }
}

struct mathMenu_Previews: PreviewProvider {
    static var previews: some View {
        mathMenu()
    }
}
