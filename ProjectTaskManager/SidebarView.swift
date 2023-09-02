//
//  SidebarView.swift
//  ProjectTaskManager
//
//  Created by Jacek Kosinski U on 02/09/2023.
//

import SwiftUI

struct SidebarView: View {
    
    @Binding var userCreatedGroups: [TaskGroup]
    @Binding var selection: TaskSection

    var body: some View {
        List(selection: $selection) {
            Section("Favorites") {
                ForEach(TaskSection.allCases) {
                    selection in
                    Label(selection.displayName, systemImage: selection.iconName)
                        .tag(selection)
                }
            }
            Section("Your groups") {
                ForEach($userCreatedGroups) { $group in
                    HStack{
                        Image(systemName: "folder")
                        TextField("Grupa",text: $group.title)
                    }
                        .tag(TaskSection.list(group))
                }
            }
        }
        .safeAreaInset(edge: .bottom) {
            Button(action: {
              let newGroup = TaskGroup(title: "Nowa Grupa")
                userCreatedGroups.append(newGroup)
            }, label: {
                Label("Add Group",systemImage: "plus.circle")
            })
            .buttonStyle(.borderless)
            .foregroundColor(.accentColor)
            .padding()
            .frame(maxWidth: .infinity,alignment: .leading)

        }
    }
}

struct SidebarView_Previews: PreviewProvider {
    static var previews: some View {
        SidebarView(userCreatedGroups: .constant(TaskGroup.examples()), selection: .constant(TaskSection.all))
            .listStyle(.sidebar)
    }
}
