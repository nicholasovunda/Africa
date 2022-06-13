//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by Nicholas on 14/06/2022.
//

import SwiftUI

struct ExternalWeblinkView: View {
    // MARK:- PROPERTIES
    let animal: Animal
    // MARK:- BODY
    var body: some View {
        Group{
        HStack{
            Image(systemName: "globe")
            Text("Wikipedia")
            Spacer()
            
            Group{
                Image(systemName: "arrow.up.right.square")
                
                Link(animal.name, destination: (URL(string: animal.link)
                                                ?? URL (string: "https://wikipedia.org"))!)
            }
            .foregroundColor(.accentColor)
        }
       }
    }
}
// MARK:- PREVIEW
struct ExternalWeblinkView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        ExternalWeblinkView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
