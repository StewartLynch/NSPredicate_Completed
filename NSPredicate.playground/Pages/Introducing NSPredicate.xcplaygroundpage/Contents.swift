/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 
 ## Introducing NSPredicate
 An introduction to NSPredicate formats, arguments and format options..
 
 */
import Foundation

code(for: "NSPredicate Formats") {
    // The athlete with the first name "Carson"
    let firstNameIsCarson = Athlete.allNSArray
        .filtered(using: NSPredicate(format: "firstName == 'Carson'"))
//    dump(firstNameIsCarson)

    // All athletes with a first name containing the letter c
    let firstNameContainsC = Athlete.allNSArray
        .filtered(using: NSPredicate(format: "firstName CONTAINS[c] 'c'"))
//    dump(firstNameContainsC)
    // All athletes making a salary greater than $100 million per year
    let highEarners = Athlete.allNSArray
        .filtered(using: NSPredicate(format: "sport.salary > 100"))
//    dump(highEarners)
    // All athletes earning between $70 and $100 million a year
    let midRangeEarners = Athlete.allNSArray
        .filtered(using: NSPredicate(format: "sport.salary BETWEEN {70, 100}"))
//    dump(midRangeEarners)

    //--------- More Formats Where NSPredicate Shines ------------------
    
    // Athletes with a first name beginning with the letter c
    let lastNameBeginsWithM = Athlete.allNSArray
        .filtered(using: NSPredicate(format: "lastName BEGINSWITH[c] 'm'"))
//    dump(lastNameBeginsWithM)
    // Athletes playing some kind of 'ball' sport
    let ballGameAthletes = Athlete.allNSArray
        .filtered(using: NSPredicate(format:"sport.name LIKE[c] '*ball'"))
//    dump(ballGameAthletes)

    // Athletes playing a ball game beginning with the letter 'f'
    let fBallAthletes = Athlete.allNSArray
        .filtered(using: NSPredicate(format:"sport.name LIKE[c] 'f*ball'"))
//    dump(fBallAthletes)
}

code(for: "NSPredicate Argments") {
    // Convert all examples above to use NSPredicate arguments
    // The athlete with the first name "Carson"
    let name = "Carson"
    let firstNameIsCarson = Athlete.allNSArray
        .filtered(using: NSPredicate(format: "firstName == %@", name))
//    dump(firstNameIsCarson)

    // All athletes with a first name containing the letter c
    let letter = "c"
    let firstNameContainsC = Athlete.allNSArray
        .filtered(using: NSPredicate(format: "firstName CONTAINS[c] %@", letter))
//    dump(firstNameContainsC)
    // All athletes making a salary greater than $100 million per year
    let highMin = 100
    let highEarners = Athlete.allNSArray
        .filtered(using: NSPredicate(format: "sport.salary > %d", highMin))
//    dump(highEarners)
    // All athletes earning between $70 and $100 million a year
    let lowerLimit = 70
    let higherLimit = 100
    let midRangeEarners = Athlete.allNSArray
        .filtered(using: NSPredicate(format: "sport.salary BETWEEN {%d, %d}", lowerLimit, higherLimit))
//    dump(midRangeEarners)

    //--------- More Formats Where NSPredicate Shines ------------------
    
    // Athletes with a first name beginning with the letter c
    let beginLetter = "m"
    let lastNameBeginsWithM = Athlete.allNSArray
        .filtered(using: NSPredicate(format: "lastName BEGINSWITH[c] %@", beginLetter))
//    dump(lastNameBeginsWithM)
    // Athletes playing some kind of 'ball' sport
    let ballGamers = "*ball"
    let ballGameAthletes = Athlete.allNSArray
        .filtered(using: NSPredicate(format:"sport.name LIKE[c] %@", ballGamers))
//    dump(ballGameAthletes)

    // Athletes playing a ball game beginning with the letter 'f'
    let fBallers = "f*ball"
    let fBallAthletes = Athlete.allNSArray
        .filtered(using: NSPredicate(format:"sport.name LIKE[c] %@", fBallers))
//    dump(fBallAthletes)
}

code(for: "Comparison Predicate Options") {
// Athletes with 'junior' as a suffix for their last name
    let name = "junior"
    let athletsWithName = Athlete.allNSArray
        .filtered(using: NSPredicate(format: "lastName CONTAINS[cd] %@",name))
    dump(athletsWithName)
}

/*:
 
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
