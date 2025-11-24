//
//  moreMenu.swift
//  notilify
//
//  Created by Ariel Araya-Madrigal on 6/10/23.
//

import SwiftUI

struct moreMenu: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: nametonumber()) {
                    GestureRow(title: "Text to Phone", description: "Turn phone numbers like 1-800-Flowers to 1-800-356-9377", SFSymbol: "phone")
                }
                NavigationLink(destination: PhotoUploadView()) {
                    GestureRow(title: "Text to Phone", description: "Turn phone numbers like 1-800-Flowers to 1-800-356-9377", SFSymbol: "phone")
                }
            }
            .navigationTitle("More")
        ContentView()
        }
    }
}

struct moreMenu_Previews: PreviewProvider {
    static var previews: some View {
        moreMenu()
    }
}
