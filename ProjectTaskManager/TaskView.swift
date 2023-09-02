//
//  TaskView.swift
//  ProjectTaskManager
//
//  Created by Jacek Kosinski U on 02/09/2023.
//

import SwiftUI

struct TaskView: View {
    @Binding var task: Task
    var body: some View {
        HStack{
            Image(systemName: task.isCompleted ? "largecircle.fill.circle" : "circle")
                .onTapGesture {
                    task.isCompleted.toggle()
                }
            TextField("New Task",text: $task.title)
                .textFieldStyle(.plain)
        }
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView(task: .constant(Task.example()))
            .padding()
    }
}
