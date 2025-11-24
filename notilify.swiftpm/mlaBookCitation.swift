//
//  apaBookCitation.swift
//  notilify
//
//  Created by Ariel Araya-Madrigal on 5/9/23.
//

import SwiftUI

struct mlaBookCitationView: View {
    @State private var author = ""
    @State private var title = ""
    @State private var publisher = ""
    @State private var date = ""
    @State private var citation = ""
    
    func generateCitation() {
        citation = "\(author). \(title). \(publisher), \(date)."
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Author:")
            TextField("Burns, Anna", text: $author, onEditingChanged: { _ in
                generateCitation()
            })
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("Book:")
            TextField("Milkman", text: $title, onEditingChanged: { _ in
                generateCitation()
            })
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("Publisher:")
            TextField("Enter publisher name", text: $publisher, onEditingChanged: { _ in
                generateCitation()
            })
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("Year:")
            TextField("Enter year the book was made", text: $date, onEditingChanged: { _ in
                generateCitation()
            })
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.bottom)
            
            Group {
                Text("MLA Format Citation:")
                    .bold()
                    .multilineTextAlignment(.center)
                
                Text("\(citation)")
                    .padding(.bottom)
                    .multilineTextAlignment(.center)
                    
                Text("Make sure that the title is in Italics when you paste it.")
                    .bold()
                    .font(.footnote)
                
                Button {
                  UIPasteboard.general.string = citation
                } label: {
                  Label("Copy to Clipboard", systemImage: "clipboard")
                }
                .multilineTextAlignment(.center)
                .padding(.vertical)
            }
        }
        .navigationTitle("MLA Book Citations")
        .padding()
    }
}

struct mlaBookCitationView_Previews: PreviewProvider {
    static var previews: some View {
        mlaBookCitationView()
    }
}
