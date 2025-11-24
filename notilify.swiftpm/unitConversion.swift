//
//  unitConversion.swift
//  Notilify
//
//  Created by Ariel Araya-Madrigal on 4/12/23.
//

import SwiftUI

struct unitConversion: View {
    @State private var temperatureString = ""
        @State private var temperatureUnit = 0
        
        private var temperature: Double {
            return Double(temperatureString) ?? 0
        }
        
        private var convertedTemperature: Double {
            switch temperatureUnit {
            case 0: // Fahrenheit
                return (temperature - 32) * 5 / 9
            case 1: // Celsius
                return temperature * 9 / 5 + 32
            case 2: // Kelvin
                return temperature - 273.15
            default:
                return 0
            }
        }
        
        private var convertedUnit: String {
            switch temperatureUnit {
            case 0:
                return "°C"
            case 1:
                return "°F"
            case 2:
                return "K"
            default:
                return ""
            }
        }
        
        var body: some View {
            Form {
                Section(header: Text("Enter Temperature")) {
                    TextField("Temperature", text: $temperatureString)
                        .keyboardType(.decimalPad)
                    Picker(selection: $temperatureUnit, label: Text("Unit")) {
                        Text("Fahrenheit").tag(0)
                        Text("Celsius").tag(1)
                        Text("Kelvin").tag(2)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                Section(header: Text("Converted Temperature")) {
                    Text("\(convertedTemperature, specifier: "%.2f") \(convertedUnit)")
                }
            }
            .navigationTitle("Temperature")
        }
}

struct unitConversion_Previews: PreviewProvider {
    static var previews: some View {
        unitConversion()
    }
}
