// Basic Functions

// function squareRoot( input ) {
//		return input * input;
// }
// var result = squareRoot( 7 );

func squareRoot(input:Int) -> Int {
	return input * input
}
let result = squareRoot(7)

// Functions returning undefined values

// function optionalFunction( flag ) {
//		if ( flag ) {
//			return "Some data";
//		} else {
//			return null;
//		}
// }
// var optionalReturn = optionalFunction(false);

// Show optional return
func optionalFunction(flag:Bool) -> String? {
	if flag {
		return "Some data"
	} else {
		return nil
	}
}
let optionalReturn = optionalFunction(true)

// Tuples

// function getName() {
//	return {
//		first: "Kevin",
//		last: "Kazmierczak"
//	};
// }
// var myName = getName();

func getName() -> (first:String, last:String) {
	return ("kevin", "kazmierczak")
}
let myName = getName()
let (first, last) = myName

// ES6 Destructuring
// var {first, last} = myName

// Named parameters

// function combineString(obj){
//  // Logic to ensure properties exist with defaults
//	return obj.first + " " + obj.mi + " " + obj.last;
// }
// var combined = combineString({first:"Kevin", last:"Kazmierczak", mi:"R"})

func combineStrings(first:String, last:String, mi:String = "") -> String {
	return "\(first) \(mi) \(last)"
}
let combined = combineStrings("Kevin", "Kazmierczak", mi:"R")

// Closures

// var names = ["Kevin", "Andrea"];
// var sorted = names.map( function(name) {
//		return name + " was here";
// });

let names = ["Kevin", "Andrea", "Emily"]
let sorted = names.map({
	(name: String) -> String in
	return "\(name) is here"
})

let sorted2 = names.map({ "\($0) is here" })

// var numbers = [1,2,3,4,5];
// var sum = numbers.reduce( function(number, start){
//		return start + number;
// }, 0);

let numbers = [1,2,3,4,5]
let sum = numbers.reduce(0, combine: { (total:Int, value:Int) -> Int in
	return total + value
})

let sum2 = numbers.reduce(10){$0 + $1}
sum2

func getFullName() -> (first:String, last:String) {
	return ("Kevin", "Kazmierczak")
}
let name = getFullName().first // returns "Kevin"
