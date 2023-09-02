//
//  TaskGroup.swift
//  ProjectTaskManager
//
//  Created by Jacek Kosinski U on 02/09/2023.
//

import Foundation

struct TaskGroup:Identifiable,Hashable {
    internal init(title: String,  tasks: [Task] = []) {
        self.title = title
        self.creationDate = Date()
        self.tasks = tasks
    }

    let id = UUID()
    var title:String
    let creationDate: Date
    var tasks: [Task]

    static func example() ->  TaskGroup {

        let task1 =  Task(title: "Kup wino czerwone", details: "Ulubione wino do kolacji")
        let task2 =  Task(title: "Zakup whisky", details: "Single malt Scotch")
        let task3 =  Task(title: "Kup piwo", details: "Craft beer z lokalnej browarni, mocno chmielone!")

        var group = TaskGroup(title: "Zakupy pierwszej potrzeby")
        group.tasks = [task1,task2,task3]
        return group
    }

    static func examples() -> [TaskGroup] {
        let group1 = TaskGroup.example()
        let group2 = TaskGroup(title: "Zakupy opcjonalne",  tasks: [
            Task(title: "Kup pieluchy", details: "Rozmiar 2, paczka 100 sztuk"),
            Task(title: "Zakup mleko modyfikowane", details: "Dla niemowląt"),
        ])
        let group3 = TaskGroup(title: "Projekt domowy",  tasks: [
            Task(title: "Zaprojektuj kuchnię", details: "Nowa zabudowa meblowa"),
            Task(title: "Kup materiały budowlane", details: "Farba, płytki, narzędzia"),
        ])
        let group4 = TaskGroup(title: "Programowanie",  tasks: [
            Task(title: "Napisz kod źródłowy", details: "Implementacja nowego funkcjonalności"),
            Task(title: "Zaktualizuj dokumentację", details: "Opis nowych zmian"),
            Task(title: "Testowanie oprogramowania", details: "Sprawdzenie poprawności działania"),
            Task(title: "Rozwiązywanie błędów", details: "Debugowanie aplikacji"),
            Task(title: "Spotkanie z zespołem", details: "Omówienie postępu prac"),
        ])
        return [group1, group2, group3, group4]
    }

}
