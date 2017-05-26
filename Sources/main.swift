import Foundation
import Swift_Sandbox_Model

// Below is a hands on exercise based on https://www.hackingwithswift.com/swift4

// MARK: - Encoding and decoding

let groceryTask = Swift_Sandbox_Model.Task(id: "abc123", title: "Do grocery shopping", isDone: false)
var encodedGroceryTask: Data?

let encoder = JSONEncoder()
let decoder = JSONDecoder()

// Encode Swift struct type to `Data` like a boss 😎
if let encodedTask = try? encoder.encode(groceryTask) {
	encodedGroceryTask = encodedTask
	print("Encoded task \(encodedTask) of \(type(of: encodedTask)) type")
	
	// convert `Data` into JSON string
	if let json = String(data: encodedTask, encoding: .utf8) {
		print("JSON representation \(json)")
	}
}

// Decode `Data` into Swift struct type like a boss 😎
if let decodedTask = try? decoder.decode(Swift_Sandbox_Model.Task.self, from: encodedGroceryTask!) {
	print(decodedTask)
}

print("\n")

// MARK: - Multi-line string literals

let longString = """
Lorem Ipsum is simply dummy text
of the printing and typesetting
industry. Lorem Ipsum has been
the industry's standard dummy text
ever since the 1500s, when an
unknown printer took a galley
of type and scrambled it to make
a type specimen book.
"""

print(longString)

print("\n")

// MARK: - Improved dictionary functionality

let cities = ["Shanghai": 24_256_800, "Karachi": 23_500_000, "Beijing": 21_516_000, "Seoul": 9_995_000];
let massiveCities = cities.filter { $0.value > 10_000_000 }	// returns a new Dictionary
print(massiveCities)

let roundedCities = cities.mapValues { "\($0 / 1_000_000) million people" } // map only values of given dictionary 🎉
print(roundedCities)

let groupedCities = Dictionary(grouping: cities.keys) { $0.characters.first! } // converts a sequence into a dictionary of sequences that are grouped by whatever you want
print(groupedCities)

let groupedCities2 = Dictionary(grouping: cities.keys) { $0.count } // group the cities based on the length of their names
print(groupedCities2)

print("\n")

// MARK: - Strings are collections again!
let quote = "Czech Republic"
let reversed = quote.reversed()

for letter in quote { print(letter) }
