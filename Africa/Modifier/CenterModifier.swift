//
//  CenterModifier.swift
//  Africa
//
//  Created by Nicholas on 20/06/2022.
//

import Foundation
import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
