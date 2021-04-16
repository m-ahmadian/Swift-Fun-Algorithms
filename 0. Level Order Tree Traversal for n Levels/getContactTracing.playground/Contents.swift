import Foundation

class Patient {
    var name: String
    var contacts: [Patient]?
    
    init(name: String) {
        self.name = name
        self.contacts = []
    }
}

func getContactTracing(_ patient: Patient, degree: Int) -> [String] {
    
    var results: [String] = []
    var queue: [Patient] = [patient]
    var queueNext: [Patient] = []
    var counter = degree
    
    while counter >= 0 && !queue.isEmpty {
        
        for _ in 0..<queue.count {
            let node = queue.removeFirst()
            results += [node.name]
            if let nodeContacts = getContacts(node) {
                queueNext += nodeContacts
            }
        }
        queue = queueNext
        queueNext.removeAll()
        counter -= 1
    }
    return results
}


// Helper Method

func getContacts(_ patient: Patient) -> [Patient]? {
    if patient.contacts == nil {
        return []
    }
    
    return patient.contacts
}



// Test Code
let alex = Patient(name: "Alex")

let tom = Patient(name: "Tom")
let leila = Patient(name: "Leila")

let karl = Patient(name: "Karl")
let jackie = Patient(name: "Jackie")
let andre = Patient(name: "Andre")
let bob = Patient(name: "Bob")

let sandra = Patient(name: "Sandra")
let mark = Patient(name: "Mark")
let ashley = Patient(name: "Ashley")
let michelle = Patient(name: "Michelle")
let charles = Patient(name: "Charles")
let daniella = Patient(name: "Daniella")
let julie = Patient(name: "Julie")
let veronica = Patient(name: "Veronica")

alex.contacts = [tom, leila]
tom.contacts = [karl, jackie]
leila.contacts = [andre, bob]

karl.contacts = [sandra, mark]
jackie.contacts = [ashley, michelle]
andre.contacts = [charles, daniella]
bob.contacts = [julie, veronica]

print(getContactTracing(alex, degree: 3))
// Should print: ["Alex", "Tom", "Leila", "Karl", "Jackie", "Andre", "Bob", "Sandra", "Mark", "Ashley", "Michelle", "Charles", "Daniella", "Julie", "Veronica"]
