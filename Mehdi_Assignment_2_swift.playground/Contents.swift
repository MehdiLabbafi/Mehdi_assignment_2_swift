import Foundation

// Define Location struct
struct Location {
    let x: Double
    let y: Double
}

// Define Customer struct
struct Customer {
    let name: String
    let email: String
    let phoneNumber: String
    let acceptedNewsletter: Bool
    let location: Location
}

// names, emails, and phone numbers
let Names = ["John Doe", "Jane Smith", "David Johnson", "Emily Brown", "Michael Wilson", "Sarah Jones", "Robert Martinez", "Jennifer Taylor", "William Anderson", "Jessica Garcia"]
let Emails = ["jdoe@gmail.com", "jsmith@gmail.com", "djohnson@gmail.com", "ebrown@gmail.com", "mwilson@gmail.com", "sjones@gmail.com", "rmartinez@gmail.com", "jtaylor@gmail.com", "wanderson@gmail.com", "jgarcia@gmail.com"]
let PhoneNumbers = ["1234567890", "0987654321", "1112223333", "4445556666", "7778889999", "3332221111", "6665554444", "9998887777", "0001112222", "1231231234"]

// customer locations
var customerLocations: [[Location]] = []
for _ in 0..<10 {
    var locations: [Location] = []
    for _ in 0..<10 {
        let location = Location(x: Double.random(in: 0.0...50.0), y: Double.random(in: 0.0...50.0))
        locations.append(location)
    }
    customerLocations.append(locations)
}

// customers
var customers: [Customer] = []
for i in 0..<10 {
    let name = Names[i]
    let email = Emails[i]
    let phoneNumber = PhoneNumbers[i]
    let locations = customerLocations[i]
    let customer = Customer(name: name, email: email, phoneNumber: phoneNumber, acceptedNewsletter: true, location: locations[0])
    customers.append(customer)
}

// Define store locations
let store1 = Location(x: 10.0, y: 20.0)
let store2 = Location(x: 30.0, y: 40.0)

// Function to print email addresses of customers within store range
func printCustomersWithinStoreRange(storeLocation: Location, customers: [Customer], storeRange: Double) {
    print("Customers within store range:")
    for customer in customers {
        let distance = sqrt(pow((storeLocation.x - customer.location.x), 2) + pow((storeLocation.y - customer.location.y), 2))
        if distance <= storeRange {
            print("Name: \(customer.name) Email: \(customer.email)")
        }
    }
}

// Call function for store1
printCustomersWithinStoreRange(storeLocation: store1, customers: customers, storeRange: 2.5)

// Call function for store2
printCustomersWithinStoreRange(storeLocation: store2, customers: customers, storeRange: 2.5)
