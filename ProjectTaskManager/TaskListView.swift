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
    @State private var inspectorIsShown: Bool = false
    @State private var selectedTask: Task?

    var body: some View {
        List($tasks){ $task in
            TaskView(task: $task,selectedTask: $selectedTask, inspectorIsShown: $inspectorIsShown)
        }
        .navigationTitle(title)
        .toolbar {
            ToolbarItemGroup{
                Button {
                    tasks.append(Task(title: "Nowe zadanie"))
                } label: {
                    Label("Nowe zadanie", systemImage: "plus")
                }
                Button {
                    inspectorIsShown.toggle()
                } label: {
                    Label("Show inspector",systemImage: "sidebar.right")
                }
            }
        }
         //MARK: Avaiable in macos 14
//        .inspector(isPresented: $inspectorIsShown) {
//            Group{
//                if selectedTask {
//                    Text(selectedTask.title).font(.title)
//                } else {
//                    Text("nothing selected")
//                }
//            }
//            .frame(minWidth:100,maxWidth: .infinity)
//        }
    }
}

struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView(title:"All", tasks: .constant(Task.examples()))
    }
}
