//
//  quadratics.swift
//  Notilify
//
//  Created by Ariel Araya-Madrigal on 2/18/23.
//

import SwiftUI

struct quadratics: View {
    @State private var a = ""
        @State private var b = ""
        @State private var c = ""
        @State private var solution1 = ""
        @State private var solution2 = ""
        
        var body: some View {
            VStack {
                Rectangle()
                    .stroke(.teal, lineWidth: 1)
                    .frame(height: 150)
                    .clipped()
                    .foregroundColor(.clear)
                    .overlay {
                        VStack{
                            HStack{
                                TextField("#", text: $a)
                                        .keyboardType(.decimalPad)
                                Text("x2 + ")
                                TextField("#", text: $b)
                                    .keyboardType(.decimalPad)
                                Text("x + ")
                                TextField("#", text: $c)
                                    .keyboardType(.decimalPad)
                                    Text(" = 0")
                            }
                            .padding()
                        }
                        .padding(20)
                    }
                Button("Calculate") {
                    if let aValue = Double(a), let bValue = Double(b), let cValue = Double(c) {
                        let (x1, x2) = quadraticFormula(a: aValue, b: bValue, c: cValue)
                        solution1 = String(format: "%.2f", x1)
                        solution2 = String(format: "%.2f", x2)
                    }
                }
                .padding()
                if !solution1.isEmpty {
                    Text("Solution 1: \(solution1)")
                    Text("Solution 2: \(solution2)")
                }
            }.padding()
                .navigationTitle("Quadratic Formula")
        }
        
        private func quadraticFormula(a: Double, b: Double, c: Double) -> (Double, Double) {
            let discriminant = b * b - 4 * a * c
            let x1 = (-b + sqrt(discriminant)) / (2 * a)
            let x2 = (-b - sqrt(discriminant)) / (2 * a)
            return (x1, x2)
        }
}

struct quadratics_Previews: PreviewProvider {
    static var previews: some View {
        quadratics()
    }
}
