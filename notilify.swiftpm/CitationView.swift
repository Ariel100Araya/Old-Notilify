import SwiftUI

struct CitationView: View {
    @State private var author = ""
    @State private var title = ""
    @State private var publisher = ""
    @State private var date = ""
    @State private var citation = ""
    
    func generateCitation() {
        citation = "\(author), \"\(title).\" \(publisher), \(date)."
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Author:")
            TextField("Enter author name", text: $author, onEditingChanged: { _ in
                generateCitation()
            })
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("Title:")
            TextField("Enter title", text: $title, onEditingChanged: { _ in
                generateCitation()
            })
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("Publisher:")
            TextField("Enter publisher name", text: $publisher, onEditingChanged: { _ in
                generateCitation()
            })
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("Date:")
            TextField("Enter publication date", text: $date, onEditingChanged: { _ in
                generateCitation()
            })
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Group {
                Text("MLA Format Citation:")
                    .bold()
                    .multilineTextAlignment(.center)
                
                Text("\(citation)")
                    .padding(.bottom)
                    .multilineTextAlignment(.center)
                
                Button {
                  UIPasteboard.general.string = citation
                } label: {
                  Label("Copy to Clipboard", systemImage: "clipboard")
                }
                .multilineTextAlignment(.center)
                .padding(.vertical)
            }
            
        }
        .navigationTitle("MLA Article Citations")
        .padding()
    }
}

struct CitationView_Previews: PreviewProvider {
    static var previews: some View {
        CitationView()
    }
}
