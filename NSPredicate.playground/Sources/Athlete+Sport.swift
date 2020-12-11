import Foundation

@objcMembers public class Sport:NSObject {
    public let name: String
    public let position: String
    public let salary: Double

    public init(name: String, position: String, salary: Double ) {
        self.name = name
        self.position = position
        self.salary = salary
    }
}

@objcMembers public class Athlete: NSObject {
    public let firstName: String
    public let lastName: String
    public let sport: Sport

    public init(firstName: String, lastName: String, sport: Sport) {
        self.firstName = firstName
        self.lastName = lastName
        self.sport = sport
    }
    public static let all = [
        Athlete(firstName: "Carson", lastName: "Wentz",
                sport: Sport(name: "Football", position: "Quarterback", salary: 59.1)),
        Athlete(firstName: "Kirk", lastName: "Cousins",
                sport: Sport(name: "football", position: "quarterback", salary: 60.5)),
        Athlete(firstName: "Tiger", lastName: "Woods",
                sport: Sport(name: "Golf", position: "", salary: 62.3)),
        Athlete(firstName: "Kevin", lastName: "Durant",
                sport: Sport(name: "Basketball", position: "small forward", salary: 63.9)),
        Athlete(firstName: "Stephen", lastName: "Curry",
                sport: Sport(name: "Basketball", position: "point guard", salary: 74.4)),
        Athlete(firstName: "LeBron", lastName: "James",
                sport: Sport(name: "Basketball", position: "forward", salary: 88.2)),
        Athlete(firstName: "Neymar", lastName: "da Silva Santos Júnior",
                sport: Sport(name: "Soccer", position: "forward", salary: 95.5)),
        Athlete(firstName: "Lionel", lastName: "Messi",
                sport: Sport(name: "soccer", position: "forward", salary: 104)),
        Athlete(firstName: "cristiano", lastName: "Ronaldo",
                sport: Sport(name: "Soccer", position: "forward", salary: 105)),
        Athlete(firstName: "Roger", lastName: "Federer",
                sport: Sport(name: "Tennis", position: "", salary: 106.3))
    ]

    public static var allNSArray: NSArray {
        Athlete.all as NSArray
    }
}


