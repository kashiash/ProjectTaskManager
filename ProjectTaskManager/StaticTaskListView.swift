//
//  TaskListView.swift
//  ProjectTaskManager
//
//  Created by Jacek Kosinski U on 02/09/2023.
//

import SwiftUI

struct StaticTaskListView: View {

    let title: String
    let tasks: [Task]
    var body: some View {
        List(tasks){ task in
            HStack{
                Image(systemName: task.isCompleted ? "largecircle.fill.circle" : "circle")
                Text(task.title)
            }
        }
        .navigationTitle(title)
    }
}

struct StaticTaskListView_Previews: PreviewProvider {
    static var previews: some View {
        StaticTaskListView(title: "Zadanka", tasks: Task.examples())
    }
}
