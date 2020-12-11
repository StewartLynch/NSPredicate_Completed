/*:
 [< Previous](@previous)           [Home](Introduction)
 
 ## NSPredicate Evaluate Method
 Use the NSPredicate Evaluate function to filter an NSArray
 
 */
import Foundation

code(for: "Evaluate") {
    // use the NSPredicate evaluate method to find all athletes earning more than $100 million per year
    let highMin = 100
    let highEarnerPredicate = NSPredicate(format: "sport.salary > %d", highMin)
    let highEarnerAthletes = Athlete.allNSArray
        .filter {highEarnerPredicate.evaluate(with: $0)}
//    dump(highEarnerAthletes)
    // use the Evaluate function on the rainbow array to find all colors not containing the letter 'e'
    let rainbow = ["red", "orange", "yellow", "green", "blue", "indigo", "violet"]
    let noEPredicate = NSPredicate(format: "NOT SELF CONTAINS[c] 'E'")
    let noEColors = rainbow.filter {noEPredicate.evaluate(with: $0)}
    print(noEColors)
}

/*:
 
 [< Previous](@previous)           [Home](Introduction)       
 */
