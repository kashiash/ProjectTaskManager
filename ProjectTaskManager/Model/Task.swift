import Foundation


struct Task: Identifiable,Hashable {
    internal init(title: String, isCompleted: Bool = false, dueDate: Date = Date(), details: String? = nil) {
        self.title = title
        self.isCompleted = isCompleted
        self.dueDate = dueDate
        self.details = details
    }


    let id = UUID()
    var title: String
    var isCompleted: Bool
    var dueDate: Date
    var details: String?


    static func example() -> Task {
        Task(title: "Kup flaszkę",  dueDate: Calendar.current.date(byAdding: .day, value: 2, to: Date())!, details: "Najchętniej Taliskera")
    }

    static func examples() -> [Task] {
        return [
            Task(title: "Kup chleb", details: "A jak będą to jajka, to tuzin"),
            Task(title: "Przygotuj prezentację",isCompleted: true, dueDate: Calendar.current.date(byAdding: .day, value: 3, to: Date())!, details: "Dla spotkania zespołu"),
            Task(title: "Odwiedź lekarza", dueDate: Calendar.current.date(byAdding: .day, value: 7, to: Date())!, details: "Badanie ogólne"),
            Task(title: "Zaplanuj wakacje", dueDate: Calendar.current.date(byAdding: .month, value: 2, to: Date())!, details: "Trasa i zakwaterowanie"),
            Task(title: "Zrób zakupy spożywcze"),
            Task(title: "Napisz list motywacyjny", dueDate: Calendar.current.date(byAdding: .day, value: 5, to: Date())!, details: "Podanie o pracę"),
            Task(title: "Uczyć się nowego języka programowania", isCompleted: true, details: "Najlepiej PHP, przyda sie w robocie"),
            Task(title: "Obejrzyj ulubiony film", details: "Wieczór filmowy z przyjaciółmi"),
            Task(title: "Przeczytaj książkę", details: "Dokładnie 50 stron dziennie"),
            Task(title: "Zorganizuj urodziny", dueDate: Calendar.current.date(byAdding: .month, value: 1, to: Date())!, details: "Lista gości i menu"),
            Task(title: "Napraw wyciek kranu"),
            Task(title: "Rozpocznij kurs online", dueDate: Calendar.current.date(byAdding: .day, value: 10, to: Date())!, details: "Programowanie w Swift"),
            Task(title: "Ogarnij dokumenty podatkowe", dueDate: Calendar.current.date(byAdding: .month, value: 3, to: Date())!, details: "Dla księgowego"),
            Task(title: "Kup prezent dla mamy",isCompleted: true, dueDate: Calendar.current.date(byAdding: .day, value: 14, to: Date())!, details: "Na urodziny"),
            Task(title: "Zbuduj nową stronę internetową", details: "Projekt portfolio"),
            Task(title: "Obejrzyj kurs jogi online"),
            Task(title: "Zacznij bieganie", details: "3 razy w tygodniu"),
            Task(title: "Zorganizuj piknik", dueDate: Calendar.current.date(byAdding: .month, value: 2, to: Date())!, details: "Na świeżym powietrzu"),
            Task(title: "Przetestuj nową aplikację", dueDate: Calendar.current.date(byAdding: .day, value: 2, to: Date())!, details: "Feedback dla deweloperów")
        ]
    }

}

