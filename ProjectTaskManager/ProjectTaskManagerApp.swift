//
//  ProjectTaskManagerApp.swift
//  ProjectTaskManager
//
//  Created by Jacek Kosinski U on 01/09/2023.
//

import SwiftUI

@main
struct ProjectTaskManagerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .commands {
            CommandMenu("Task") {
                Button("Add new Task") {

                }
                .keyboardShortcut(KeyEquivalent("r"), modifiers: /*@START_MENU_TOKEN@*/.command/*@END_MENU_TOKEN@*/)
            }

            CommandGroup(after: .newItem) {
                Button("Add new Group") {

                }
            }
        }

        #if os(macOS)
        WindowGroup("Special window") {
            Text("special window")
                .frame(minWidth: 200, idealWidth: 300, minHeight: 200)
        }
        .defaultPosition(.leading)

        Settings {
            Text("Setting")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }

        MenuBarExtra("Menu") {
            Button("Do something amazing") {

            }
        }
        #endif
    }
}
