//
//  interestCalculators.swift
//  Notilify
//
//  Created by Ariel Araya-Madrigal on 4/11/23.
//

import SwiftUI

struct interestCalculators: View {
    @State private var principalAmount = ""
        @State private var interestRate = ""
        @State private var numYears = ""
        
        private var principal: Double {
            return Double(principalAmount) ?? 0
        }
        
        private var rate: Double {
            return Double(interestRate) ?? 0
        }
        
        private var years: Double {
            return Double(numYears) ?? 0
        }
        
        private var interest: Double {
            let decimalRate = rate / 100
            return principal * decimalRate * years
        }
        
        private var totalAmount: Double {
            return principal + interest
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
                                TextField("Principal Amount", text: $principalAmount)
                                    .keyboardType(.decimalPad)
                                TextField("Interest Rate", text: $interestRate)
                                    .keyboardType(.decimalPad)
                                TextField("Number of Years", text: $numYears)
                                    .keyboardType(.numberPad)
                            }
                            .padding(20)
                        }
                }
                .padding()
            Text("Total Interest: $\(interest, specifier: "%.2f")")
                    .padding(.bottom)
            Text("Total Amount: $\(totalAmount, specifier: "%.2f")")
            }
            .padding()
            .navigationTitle("Interest")
        }
}

struct interestCalculators_Previews: PreviewProvider {
    static var previews: some View {
        interestCalculators()
    }
}
