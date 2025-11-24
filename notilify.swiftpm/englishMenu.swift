//
//  englishMenu.swift
//  Notilify
//
//  Created by Ariel Araya-Madrigal on 5/8/23.
//

import SwiftUI

struct englishMenu: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: mlaBookCitationView()) {
                    GestureRow(title: "MLA Book Citations", description: "Citations Using the MLA format, made for Books", SFSymbol: "book.closed")
                }
                NavigationLink(destination: CitationView()) {
                    GestureRow(title: "MLA Article Citations", description: "Citations Using the MLA format, made for Articles", SFSymbol: "chart.bar.doc.horizontal")
                }
            }
            .navigationTitle("English")
        ContentView()
        }
    }
}
//
struct englishMenu_Previews: PreviewProvider {
    static var previews: some View {
        englishMenu()
    }
}
