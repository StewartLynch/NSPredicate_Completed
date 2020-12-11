/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 
 ## Compound Predicates
 Combining more than one NSPredicate.
 
 */
import Foundation

code(for: "Compound Predicates") {
    // Soccer players making more than $100 milion salary
    let sport = "soccer"
    let highMin = 100.0
    let highSportEarners = Athlete.allNSArray
        .filtered(using: NSPredicate(format: "sport.name ==[c] %@ && sport.salary > %f", sport,highMin))
//    dump(highSportEarners)

    // Athletes playing the guard or forward position, excluding soccer players
    let position1 = "forward"
    let position2 = "guard"
    let sport2 = "soccer"
    let nonSportInPositions = Athlete.allNSArray
        .filtered(using: NSPredicate(format: "(sport.position CONTAINS[c] %@ || sport.position CONTAINS[c] %@) AND NOT sport.name =[c] %@", position1, position2, sport2))
//    dump(nonSportInPositions)
}

code(for: "Compound Predicates Part II") {
    // Athlets playing one of the 'ball' sports making between $70 and $100 million per year.
    let lowerLimit = 70
    let higherLimit = 100
    let ballGamers = "*ball"
    let midRangeEarnersPredicate = NSPredicate(format: "sport.salary BETWEEN {%d, %d}", lowerLimit,higherLimit)
    let ballGameAthletesPredicate = NSPredicate(format: "sport.name LIKE[c] %@", ballGamers)
    let midRangeBallGamePlayers = Athlete.allNSArray
        .filtered(using: NSCompoundPredicate(andPredicateWithSubpredicates: [midRangeEarnersPredicate, ballGameAthletesPredicate]))
    dump(midRangeBallGamePlayers)
}

/*:
 
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
