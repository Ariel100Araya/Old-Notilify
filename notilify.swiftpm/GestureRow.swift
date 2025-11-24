//
//  GestureRow.swift
//  Notilify
//
//  Created by Ariel Araya-Madrigal on 12/31/22.
//
import Foundation
import SwiftUI

struct GestureRow: View {
    let title: String
    let description: String
    let SFSymbol: String
    
    
    var body: some View {
        HStack {
            Image(systemName: SFSymbol)
                .frame(width: 30)
                .font(.title)
                .foregroundColor(.accentColor)
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.bottom, 2)
                Text(description)
                    .foregroundColor(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
            }.padding(10)
        }
    }
}
