/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

 ## Filtering Arrays Review
A brief review of using the array filter method to filter an array

*/
import Foundation

code(for: "Array Filter") {
    // The athlete with the first name "Carson"
    let firstNameIsCarson = Athlete.all
        .filter{ $0.firstName == "Carson" }
//    dump(firstNameIsCarson)
    
    // All athletes with a first name containing the letter c
    let firstNameContainsC = Athlete.all
        .filter { $0.firstName.lowercased().contains("c")}
//    dump(firstNameContainsC)
    // All athletes making a salary greater than $100 million per year
    let highEarners = Athlete.all
        .filter { $0.sport.salary > 100 }
//    dump(highEarners)
    // All athletes earning between $70 and $100 million a year
    let midRangeEarners = Athlete.all
        .filter { $0.sport.salary > 70 && $0.sport.salary < 100 }
    dump(midRangeEarners)
}



/*:

 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
