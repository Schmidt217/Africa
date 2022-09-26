//
//  CenterModifier.swift
//  Africa
//
//  Created by Michael Schmidt on 9/26/22.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
}
