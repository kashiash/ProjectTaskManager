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
                Button("Add new task") {

                }
                .keyboardShortcut(KeyEquivalent("r"),modifiers: .command)
            }
            CommandGroup(after: .newItem) {
                Button("Add new group") {

                }
            }
        }
        WindowGroup("Special window") {
            Text("special window")
                .frame(minWidth: 200, idealWidth: 300, minHeight: 200)
        }
        .defaultPosition(.leading)

    }
}
