//
//  notationtobase.swift
//  Notilify
//
//  Created by Ariel Araya-Madrigal on 4/11/23.
//

import SwiftUI

struct ScientificNotationConverterView: View {
    @State private var scientificNotation: String = ""
    @State private var baseNumber: String = ""
    
    var body: some View {
        VStack {
            Text("Please enter a number in scientific notation like this:")
                .multilineTextAlignment(.center)
            Text("1.23e+6")
                .padding()
            TextField("", text: $scientificNotation)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Button("Convert") {
                self.convertToBaseNumber()
            }
            .padding()
            Text("Base number: \(baseNumber)")
        }
        .navigationTitle("Scientific to Base")
    }
    
    func convertToBaseNumber() {
        let formatter = NumberFormatter()
        formatter.numberStyle = .scientific
        if let number = formatter.number(from: scientificNotation) {
            baseNumber = String(number.doubleValue)
        } else {
            baseNumber = "Invalid input"
        }
    }
}
