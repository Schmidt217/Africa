//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by Michael Schmidt on 9/22/22.
//

import SwiftUI

struct ExternalWeblinkView: View {
    let animal: Animal
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                Group{
                    Image(systemName: "arrow.up.right.square")
                    
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
                }//: GROUP
                .foregroundColor(.accentColor)
            }//: HSTACK
        }//: BOX
    }
}

struct ExternalWeblinkView_Previews: PreviewProvider {
    static var animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        ExternalWeblinkView(animal: animals[0])
    }
}
