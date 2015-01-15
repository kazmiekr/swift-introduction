// Loops

// for ( var x = 1; x <= 5; x++ ) {
//		console.log( x * 5 )
// }

for var x = 1; x <= 5; x++ {
	println(x * 5)
}

for x in 1...5 {
	println(x * 5)
}

// Array Looping

// var names = ["Kevin", "Bob", "George"]
// names.forEach( function ( name ) {
//		console.log( name )
// } );

var names = ["Kevin", "Bob", "George"]
for name in names {
	println(name)
}

for index in 0..<names.count {
	println(names[index])
}

// Dictionary Loops

// var nameObject = { first:"Kevin", last:"Kazmierczak" }
// for ( var key in nameObject ) {
//		console.log( nameObject[key] )
// }

var nameObject = ["first":"Kevin", "last":"Kazmierczak"]
for (key, value) in nameObject {
	println("\(key):\(value)")
}