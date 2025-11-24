//
//  moletoMolecules.swift
//  notilify
//
//  Created by Ariel Araya-Madrigal on 5/9/23.
//

import SwiftUI

struct moletoMolecules: View {
    @State private var molesInput: String = ""
    @State private var moleculesOutput: String = ""
    
    var body: some View {
        VStack {
            TextField("Enter Moles", text: $molesInput)
                .keyboardType(.decimalPad)
                .padding()
            
            Button(action: {
                if let moles = Double(molesInput) {
                    let molecules = moles * 6.0221409e23
                    moleculesOutput = String(format: "%.2e", molecules)
                } else {
                    moleculesOutput = "Invalid Input"
                }
            }, label: {
                Text("Convert")
            })
            .padding()
            
            Text("Molecules: \(moleculesOutput)")
                .padding()
            
            Spacer()
            Button {
              UIPasteboard.general.string = moleculesOutput
            } label: {
              Label("Copy to Clipboard", systemImage: "clipboard")
            }
            .multilineTextAlignment(.center)
            .padding(.vertical)
        }
        .navigationBarTitle("Mole to Molecules")
    }
}


struct moletoMolecules_Previews: PreviewProvider {
    static var previews: some View {
        moletoMolecules()
    }
}
