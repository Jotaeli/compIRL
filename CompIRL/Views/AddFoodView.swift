//
//  AddFoodV iew.swift
//  CompIRL
//
//  Created by João Lucas G. on 15/09/23.
//

import SwiftUI

import SwiftUI

struct AddFoodView: View {
    @Environment(\.managedObjectContext) var managedObjContext
    @Environment(\.dismiss) var dismiss
    
    @State private var name = ""
    @State private var calories = 0
    var body: some View {
        Form {
            Section {
                TextField("Nome da comida", text: $name)
                
                VStack {
                    
                }
            }
        }
    }
}

struct AddFoodView_Previews: PreviewProvider {
    static var previews: some View {
        AddFoodView()
    }
}
