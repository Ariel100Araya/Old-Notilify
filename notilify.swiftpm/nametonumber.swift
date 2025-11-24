//
//  nametonumber.swift
//  notilify
//
//  Created by Ariel Araya-Madrigal on 6/10/23.
//

import SwiftUI

struct nametonumber: View {
    @State private var phoneNumber = ""
    @State private var convertedNumber = ""
    
    var body: some View {
        VStack {
            Text("Enter a 1-800 Number:")
                .font(.headline)
                .padding()
            
            TextField("e.g. 1-800-Flowers", text: $phoneNumber)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {
                convertPhoneNumber()
            }) {
                Text("Convert")
                    .font(.headline)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
            
            Text("Converted Number:")
                .font(.headline)
                .padding()
            
            Text(convertedNumber)
                .padding()
            Button {
                UIPasteboard.general.string = convertedNumber
            } label: {
                Label("Copy Number to Clipboard", systemImage: "clipboard")
            }
            .multilineTextAlignment(.center)
            .padding(.vertical)
        }
        .navigationTitle("Text to Phone Number")
    }
    
    func convertPhoneNumber() {
        convertedNumber = phoneNumber.uppercased()
            .replacingOccurrences(of: "A", with: "2")
            .replacingOccurrences(of: "B", with: "2")
            .replacingOccurrences(of: "C", with: "2")
            .replacingOccurrences(of: "D", with: "3")
            .replacingOccurrences(of: "E", with: "3")
            .replacingOccurrences(of: "F", with: "3")
            .replacingOccurrences(of: "G", with: "4")
            .replacingOccurrences(of: "H", with: "4")
            .replacingOccurrences(of: "I", with: "4")
            .replacingOccurrences(of: "J", with: "5")
            .replacingOccurrences(of: "K", with: "5")
            .replacingOccurrences(of: "L", with: "5")
            .replacingOccurrences(of: "M", with: "6")
            .replacingOccurrences(of: "N", with: "6")
            .replacingOccurrences(of: "O", with: "6")
            .replacingOccurrences(of: "P", with: "7")
            .replacingOccurrences(of: "Q", with: "7")
            .replacingOccurrences(of: "R", with: "7")
            .replacingOccurrences(of: "S", with: "7")
            .replacingOccurrences(of: "T", with: "8")
            .replacingOccurrences(of: "U", with: "8")
            .replacingOccurrences(of: "V", with: "8")
            .replacingOccurrences(of: "W", with: "9")
            .replacingOccurrences(of: "X", with: "9")
            .replacingOccurrences(of: "Y", with: "9")
            .replacingOccurrences(of: "Z", with: "9")
    }
}

struct nametonumber_Previews: PreviewProvider {
    static var previews: some View {
        nametonumber()
    }
}

