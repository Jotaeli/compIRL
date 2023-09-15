//
//  DataController.swift
//  CompIRL
//
//  Created by João Lucas G. on 14/09/23.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    let container = NSPersistentContainer (name: "FoodModel")
    
    init() {
        container.loadPersistentStores { desc, error in
            if let error = error {
                print ("Falhamo to load the data \(error.localizedDescription)")
            }
        }
    }
    func save (context: NSManagedObjectContext) {
        do {
            try context.save()
            print("Salvamo a data! Vamooo")
        } catch {
            print("Nao deu p salvar a data ;-;")
        }
    }
    func addFood(name: String, calories: Double, context: NSManagedObjectContext) {
        let food = Food(context: context)
        food.id = UUID()
        food.date = Date()
        food.name = name
        food.calories = calories
        
        save(context: context)
    }
    
    func editFood(food: Food, name: String, calories: Double, context: NSManagedObjectContext) {
        food.date = Date()
        food.name = name
        food.calories = calories
        
        save(context: context)
    }
}
