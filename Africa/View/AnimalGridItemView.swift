//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by Nicholas on 19/06/2022.
//

import SwiftUI

struct AnimalGridItemView: View {
    // MARK: - PROPERTIES
    
    let animal: Animal
    var body: some View {
        
    // MARK : - BODY
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}
// MARK : - PREVIEW
struct AnimalGridItemView_Previews: PreviewProvider {
    
    static let animals: [Animal] = Bundle.main.decode("animal.json")
    static var previews: some View {
        AnimalGridItemView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
