//
//  percentCalculator.swift
//  Notilify
//
//  Created by Ariel Araya-Madrigal on 3/23/23.
//

import SwiftUI

struct percentCalculator: View {
    @State private var numberString = ""
    
        @State private var percentageString = ""
        
        private var number: Double {
            return Double(numberString) ?? 0
        }
        
        private var percentage: Double {
            return Double(percentageString) ?? 0
        }
        
        private var result: Double {
            return number * percentage / 100
        }
    var body: some View {
        VStack {
            Rectangle()
                .stroke(.teal, lineWidth: 1)
                .frame(height: 150)
                .clipped()
                .foregroundColor(.clear)
                .overlay {
                    VStack{
                        TextField("Number", text: $numberString)
                            .keyboardType(.numberPad)
                        TextField("Percentage", text: $percentageString)
                            .keyboardType(.numberPad)
                    }
                    .padding(20)
                }
            Text("Result: \(result, specifier: "%.2f")")
            .padding()
                }
                .padding()
                .navigationTitle("Percentages")
    }
}

struct percentCalculator_Previews: PreviewProvider {
    static var previews: some View {
        percentCalculator()
    }
}
