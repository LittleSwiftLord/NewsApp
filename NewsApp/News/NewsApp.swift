//
//  NewsApp.swift
//  NewsApp
//
//  Created by Aidar Satindiev on 5/2/23.
//
import SwiftUI
import CoreData

@main
struct NewsApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environment(\.managedObjectContext, persistentContainer.viewContext)
        }
    }
    
    var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "NewsApp")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
}
