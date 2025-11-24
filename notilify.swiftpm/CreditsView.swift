//
//  CreditsView.swift
//  Notilify
//
//  Created by Ariel Araya-Madrigal on 4/11/23.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        let year = "2023"
        let version = "1.0"
        VStack{
            Image("notilifyIconNoFill")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 140)
                .clipped()
                .padding()
            Group{
                Text("Hello from Frederick.")
                    .font(.largeTitle)
                    .bold()
                Text("My name is Ariel and this is my project Notilify, I was in my Chemestry Class when we were doing Scientific Notation and I was one of the only people who understood it in my class, so I solved the problem by making this small app.")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,20)
                Text("Since then I saw the WWDC Swift Student Challenge and set out to do that. I added a couple more Calculators, made a bunch of stuff along the way and learned more about Math and Science!")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,20)
                
            Text("Thank you for trying Notilify, Hope you liked it as much as I liked making it.\n\n -Ariel Araya(" + year + ", Version " + version + ")")
                .multilineTextAlignment(.center)
                .padding(.horizontal,20)
            }
            .padding(.vertical,10)
        }
        .navigationTitle("Credits")
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
