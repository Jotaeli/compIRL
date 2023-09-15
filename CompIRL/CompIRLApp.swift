//
//  CompIRLApp.swift
//  CompIRL
//
//  Created by João Lucas G. on 14/09/23.
//

import SwiftUI

@main
struct CompIRLApp: App {
    @StateObject private var dataController = DataController()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
