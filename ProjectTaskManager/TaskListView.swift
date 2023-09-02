//
//  TaskListView.swift
//  ProjectTaskManager
//
//  Created by Jacek Kosinski U on 02/09/2023.
//

import SwiftUI

struct TaskListView: View {
    let title: String
    @Binding var tasks: [Task]
    var body: some View {
        List(tasks){ task in
            HStack{
                Image(systemName: task.isCompleted ? "largecircle.fill.circle" : "circle")
                Text(task.title)
            }
        }
        .toolbar {
            Button {

            } label: {
                Label("Nowe zadanie", systemImage: "plus")
            }
        }
    }
}

struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView(title:"All", tasks: .constant(Task.examples()))
    }
}
