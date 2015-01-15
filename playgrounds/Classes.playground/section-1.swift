// Classes Example

// var Person = function (firstName, lastName){
//		this.firstName = firstName;
//		this.lastName = lastName;
//		this.address = undefined;
// };
// Person.prototype.getNameAndAddress = function () {
//		if ( this.address ) {
//			return this.firstName + " " + this.lastName + " lives in " + this.address;
//		} else {
//			return this.firstName + " " + this.lastName;
//		}
// };

// var p = new Person("Kevin", "Kazmierczak");
// p.address = "Marlborough";
// var full = p.getNameAndAddress();

class Person {
	var firstName = ""
	var lastName = ""
	var address:String?
	var fullName:String {
		return "\(firstName) \(lastName)"
	}
	init(fName:String){
		firstName = fName
	}
	func getNameAndAddress() -> String {
		if address != nil {
			return "\(firstName) \(lastName) lives in \(address!)"
		} else {
			return "\(firstName) \(lastName)"
		}
	}
}

class Programmer: Person{
	var favoriteLanguage = "Swift"
}

let myPerson = Person(fName: "Kevin")
myPerson.lastName = "Kazmierczak"
myPerson.address = "Marlborough"
let full = myPerson.getNameAndAddress()

let myProgrammer = Programmer(fName: "Emily")
myProgrammer.favoriteLanguage = "HTML"
