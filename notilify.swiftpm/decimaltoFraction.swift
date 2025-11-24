//
//  decimaltoFraction.swift
//  Notilify
//
//  Created by Ariel Araya-Madrigal on 4/11/23.
//

import SwiftUI

struct decimaltoFraction: View {
    @State private var decimalString = ""
    
    private var decimal: Double {
        return Double(decimalString) ?? 0
    }
    
    private var resultString: String {
        if decimal == 0 {
            return "0"
        }
        let sign = decimal.sign == .minus ? "-" : ""
        var remainder = abs(decimal)
        var denominator = 1.0
        var numerator = 0.0
        var wholeNumber = 0.0
        while remainder.truncatingRemainder(dividingBy: 1) != 0 {
            denominator *= 10
            numerator = remainder * denominator
            wholeNumber = floor(numerator)
            remainder = numerator - wholeNumber
        }
        if remainder == 0 {
            return "\(sign)\(Int(wholeNumber))"
        } else {
            let gcd = greatestCommonDivisor(Int(numerator), Int(denominator))
            let simplifiedNumerator = numerator / Double(gcd)
            let simplifiedDenominator = denominator / Double(gcd)
            return "\(sign)\(Int(wholeNumber)) \(String(format: "%.0f/%.0f", simplifiedNumerator, simplifiedDenominator))"
        }
    }

    
    var body: some View {
        VStack {
            TextField("Decimal", text: $decimalString)
                .keyboardType(.decimalPad)
            Text("Result: \(resultString)")
        }
        .padding()
    }
    
    private func greatestCommonDivisor(_ a: Int, _ b: Int) -> Int {
        if b == 0 {
            return a
        } else {
            return greatestCommonDivisor(b, a % b)
        }
    }
}

struct decimaltoFraction_Previews: PreviewProvider {
    static var previews: some View {
        decimaltoFraction()
    }
}
