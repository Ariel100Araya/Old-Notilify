//
//  fractiontoDecimal.swift
//  Notilify
//
//  Created by Ariel Araya-Madrigal on 4/11/23.
//

import SwiftUI

struct fractiontoDecimal: View {
    @State private var numeratorString = ""
    @State private var denominatorString = ""
    
    private var numerator: Double {
        return Double(numeratorString) ?? 0
    }
    
    private var denominator: Double {
        return Double(denominatorString) ?? 0
    }
    
    private var result: Double {
        if denominator == 0 {
            return 0
        } else {
            return numerator / denominator
        }
    }
    var body: some View {
           VStack {
               ZStack {
                   Rectangle()
                       .stroke(.teal, lineWidth: 1)
                       .frame(height: 150)
                       .clipped()
                       .foregroundColor(.clear)
                       .overlay {
                           VStack{
                               HStack {
                                   TextField("Numerator", text: $numeratorString)
                                       .keyboardType(.numberPad)
                                   Text("/")
                                   TextField("Denominator", text: $denominatorString)
                                       .keyboardType(.numberPad)
                               }
                               .padding()
                           }
                           .padding(20)
                       }
               }
               .padding()
               Text("Result: \(result, specifier: "%.4f")")
           }
           .padding()
           .navigationTitle("Fraction to Decimal")
       }
}

struct fractiontoDecimal_Previews: PreviewProvider {
    static var previews: some View {
        fractiontoDecimal()
    }
}
