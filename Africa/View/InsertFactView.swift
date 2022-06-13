//
//  InsertFactView.swift
//  Africa
//
//  Created by Nicholas on 13/06/2022.
//

import SwiftUI

struct InsertFactView: View {
    // MARK: - PROPERTIES
    let animal: Animal
    //MARK:- BODY
    var body: some View {
        Group {
            TabView{
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }// : BOX
    }
}
// MAKR:- PREVIEW
struct InsertFactView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsertFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
