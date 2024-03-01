import Cocoa

// Variables

var one: Int = 1;
var Juan: Int? = nil; // optional
var string: String = "String";
var double: Double = 3.16542
var bool: Bool = true;
var array: Array = ["Dogs","Cats"];
var tuple: (String, String) = ("Ty", "Brooks")
print(tuple.1) // Brooks
// Also have float, rarely used.
print(one);
one * Int(double) // type casting.

var luckyNumbers : Set = [1,2,3,4,5,3,5] // must use set keyword to define.
var phoneBook : [String:Int] = ["Ty Brooks": 1234567890]

// Functions
func hello(){
    print("Hello")
}; hello()

func helloPerson(person: String){
    print("Hello \(person)")
}; helloPerson(person: "Ty")

if let age = Int("40"){ // this is a good way to only perform execution on an optional if it doesn't equal nil.
    print(age)
}

// Classes
class Dog{
    var name = ""
    var age = 0
    var color = ""
}

struct Cat{
    var name : String
    var age : Int
}

var myDog = Dog()
var myCat = Cat(name: "Princess", age: 12)
print(myDog.age)

enum Compass {
    case north
    case south
    case east
    case west
}

var direction = Compass.east
var direction2 : Compass = .east

