class Person {
    let name: String
    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }

    var gadget: Gadget?
    deinit {
        print("\(name) is being deinitialized")
    }
}

class Gadget {
    let model: String
    init(model: String) { // add owner for unowned
        self.model = model
//        self.owner = owner // Uncomment for unowned
        print("\(model) is being initialized")
    }

//    var owner: Person?  // Uncomment for strong
    weak var owner: Person? // Uncomment for weak
//    unowned var owner: Person // Uncomment for unowned
    deinit {
        print("\(model) is being deinitialized")
    }
}

// MARK: STRONG
// Strong relationship in all directions with no weak or unowned and no nil assignments.
// Strong relationship only between Person and Gadget when nil assignments included.        Even though we set kelvin and iPhone both to null the deinit will never be called because of line 46 and 47. Comment those two out and deinit will be called. This leads to memory leaks. (line 49 and 50)

// MARK: WEAK
// Weak relatinship from Gadget to Person because of weak owner. Strong relationship everywhere else
// Kelvin can be deallocated because of gadget's weak attachment to owner(Kelvin: Person)

// MARK: UNOWNED
// Unowned cannot be optional they must always have a value. When you set kelvin to nil you deallocate it and subsequently gadget will be deallocated because it no longer has an owner.
var kelvin: Person?
var iphone: Gadget?

kelvin = Person(name: "Kelvin")
iphone = Gadget(model: "iPhone 8 Plus") // Comment for unowned

kelvin!.gadget = iphone
//kelvin!.gadget = Gadget(model: "iPhone 8 Plus", owner: kelvin!) // Uncomment for Unowned

iphone!.owner = kelvin // Comment for unowned

kelvin = nil
iphone = nil // Comment for unowned
