//
//  ContentView.swift
//  ProjectTaskManager
//
//  Created by Jacek Kosinski U on 01/09/2023.
//

import SwiftUI

struct ContentView: View {

    @State private var selection: TaskSection? = TaskSection.all
    @State private var allTasks = Task.examples()
    @State private var userCreatedGroups = TaskGroup.examples()

    @State private var searchTerm: String = ""
    
    var body: some View {
        NavigationSplitView{
            SidebarView(userCreatedGroups: $userCreatedGroups,
                        selection: $selection)

        } detail: {
            if searchTerm.isEmpty {
                switch selection {
                case .all:
                    TaskListView(title: "All", tasks: $allTasks)
                case .done:
                    StaticTaskListView(title:"Done", tasks: allTasks.filter({ $0.isCompleted }))
                case .upcoming:
                    StaticTaskListView(title: "Upcoming", tasks: allTasks.filter({$0.isCompleted == false }))
                case .list(let taskGroup):
                    StaticTaskListView(title: taskGroup.title, tasks: taskGroup.tasks)
                case .none:
                    TaskListView(title: "All", tasks: $allTasks)
                }
            } else {
                StaticTaskListView(title: "Upcoming", tasks: allTasks.filter({$0.title.contains(searchTerm)}))
            }
        }
        .searchable(text: $searchTerm)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
