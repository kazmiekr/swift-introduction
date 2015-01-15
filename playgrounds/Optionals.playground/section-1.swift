// Create an optional
var someNumber:Int?
someNumber = 10

// Output that optional
if someNumber != nil {
	println(someNumber! * 10)
} else {
	println("No value")
}

// Optional binding
if let unwrappedNumber = someNumber {
	println(unwrappedNumber * 10 )
} else {
	println("Unable to unwrap")
}

// Forced unwrap
let possibleNumber = "57"
if let actualNumber = possibleNumber.toInt() {
	println(actualNumber)
} else {
	println("Possible number isn't a number")
}

// Forced unwrap
let anotherActualNumber = possibleNumber.toInt()
let someAddition = anotherActualNumber! + 50
let someMoreAddition = anotherActualNumber! + 75

// Implicit unwrap
let implicitActualNumber:Int! = possibleNumber.toInt()
let someMultiplication = implicitActualNumber * 50
let someMoreMultiplication = implicitActualNumber * 75

// Fancy - nil coalescing operator

var optionalNumber = "43".toInt()
let fancyConversion = optionalNumber ?? 21 // is the same as doing
let notSoFancy = optionalNumber != nil ? optionalNumber! : 21
