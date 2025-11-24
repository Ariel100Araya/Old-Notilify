//
//  navigationBar.swift
//  Notilify
//
//  Created by Ariel Araya-Madrigal on 4/11/23.
//

import SwiftUI

struct navigationBar: View {
    var body: some View {
        TabView {
            scienceMenu()
                .tabItem {
                    Label("Science", systemImage: "atom")
                }
            mathMenu()
                .tabItem {
                    Label("Math", systemImage: "sum")
                }
            englishMenu()
                .tabItem {
                    Label("English", systemImage: "book")
                }
            moreMenu()
                .tabItem {
                    Label("More", systemImage: "archivebox")
                }
            CreditsView()
                .tabItem {
                    Label("Credits", systemImage: "info.circle")
                }
        }
    }
}

struct navigationBar_Previews: PreviewProvider {
    static var previews: some View {
        navigationBar()
    }
}
