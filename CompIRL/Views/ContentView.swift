//
//  ContentView.swift
//  CompIRL
//
//  Created by João Lucas G. on 14/09/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) var managedObjContext
    @FetchRequest(sortDescriptors: [SortDescriptor(\.date, order: .reverse)]) var food: FetchedResults<Food>
    
    var body: some View {
        NavigationView{
            VStack(alignment: .leading) {
                Text("\(Int(totalCaloriesToday())) Kcal (Today)")
                    .foregroundColor(.gray)
                    .padding(.horizontal)
                List {
                    ForEach(food) { food in
                        NavigationLink(destination: Text("\(food.calories)")) {
                            HStack {
                                
                            }
                        }
                    }
                }
            }.navigationTitle("compIRL")
        }
    }
}

private func totalCaloriesToday() -> Double {
    return 0.0
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
