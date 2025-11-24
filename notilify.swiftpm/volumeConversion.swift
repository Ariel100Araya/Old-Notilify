//
//  volumeConversion.swift
//  Notilify
//
//  Created by Ariel Araya-Madrigal on 4/17/23.
//

import SwiftUI

struct volumeConversion: View {
    @State private var volumeString = ""
    @State private var fromUnit = 0
    @State private var toUnit = 0
    
    private var volume: Double {
        return Double(volumeString) ?? 0
    }
    
    private var convertedVolume: Double {
        var convertedValue: Double = 0
        
        switch fromUnit {
        case 0: // Milliliters
            switch toUnit {
            case 0: // Milliliters
                convertedValue = volume
            case 1: // Liters
                convertedValue = volume / 1000
            case 2: // US Fluid Ounces
                convertedValue = volume / 29.5735
            case 3: // US Cups
                convertedValue = volume / 236.588
            default:
                convertedValue = 0
            }
        case 1: // Liters
            switch toUnit {
            case 0: // Milliliters
                convertedValue = volume * 1000
            case 1: // Liters
                convertedValue = volume
            case 2: // US Fluid Ounces
                convertedValue = volume * 33.814
            case 3: // US Cups
                convertedValue = volume * 4.22675
            default:
                convertedValue = 0
            }
        case 2: // US Fluid Ounces
            switch toUnit {
            case 0: // Milliliters
                convertedValue = volume * 29.5735
            case 1: // Liters
                convertedValue = volume / 33.814
            case 2: // US Fluid Ounces
                convertedValue = volume
            case 3: // US Cups
                convertedValue = volume / 8
            default:
                convertedValue = 0
            }
        case 3: // US Cups
            switch toUnit {
            case 0: // Milliliters
                convertedValue = volume * 236.588
            case 1: // Liters
                convertedValue = volume / 4.22675
            case 2: // US Fluid Ounces
                convertedValue = volume * 8
            case 3: // US Cups
                convertedValue = volume
            default:
                convertedValue = 0
            }
        default:
            convertedValue = 0
        }
        
        return convertedValue
    }
    
    var body: some View {
        Form {
            Section(header: Text("Enter Volume")) {
                TextField("Volume", text: $volumeString)
                    .keyboardType(.decimalPad)
                Picker(selection: $fromUnit, label: Text("From")) {
                    Text("Milliliters").tag(0)
                    Text("Liters").tag(1)
                    Text("US Fluid Ounces").tag(2)
                    Text("US Cups").tag(3)
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            Section(header: Text("Convert to")) {
                Picker(selection: $toUnit, label: Text("To")) {
                    Text("Milliliters").tag(0)
                    Text("Liters").tag(1)
                    Text("US Fluid Ounces").tag(2)
                    Text("US Cups").tag(3)
                }
                .pickerStyle(SegmentedPickerStyle())
            }
        }
        .navigationTitle("Volume")
    }
}

struct volumeConversion_Previews: PreviewProvider {
    static var previews: some View {
        volumeConversion()
    }
}
