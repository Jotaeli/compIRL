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
    @State private var calories: Double = 0
    var body: some View {
        Form {
            Section {
                TextField("Nome da comida", text: $name)
                
                VStack {
                    Text("Calories: \(Int(calories))")
                    Slider(value: $calories, in: 10...1000, step: 10)
                }.padding()
                
                HStack {
                    Spacer()
                    Button("Submit") {
                        DataController().addFood(name: name, calories: calories, context: managedObjContext)
                    }
                    Spacer()
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
