#  Swift code snippet challenges


## 1. Where is the error and why? How can it be fixed?

```swift 
let value1: Int = 1
let value2: UInt = 1
let value3: Double = 3.34
var result = value1 + value2 + value3
print(result)
```
## 2. What’s the value of the length variable, and why?

```swift
var array1 = [1, 2, 3, 4, 5]
var array2 = array1
array2.append(6)
var length = array1.count
print(length)
```

## 3. The following will give compile error, and why?

```swift
let d = ["john", "james", "vincent", "louis"]
let x = d.sort()
print(x)
```

## 4. What will be the value of productBarcode?

```swift
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(8, 85909, 51226, 3)
productBarcode = .qrCode("ABCDEFGHIJKLMNOP")

switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")

case .qrCode(let productCode):
    print("QR code: \(productCode).")
}
```

## 5. What will be the value of earthsOrder?

```swift 
enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}
let earthsOrder = Planet.earth.rawValue
```

## 6. What will be the value of sunsetDirection?

```swift
enum CompassPoint: String {
    case north, south, east, west
}
let sunsetDirection = CompassPoint.west.rawValue
```

## 7. What is the value of reversedNames?

```swift
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by: backward)
```

## 8. The init call throws error, what is it and how to fix it in two ways?

```swift
struct Color {
    let red, green, blue: Double
    init(red: Double, green: Double, blue: Double) {
        self.red   = red
        self.green = green
        self.blue  = blue
    }
    init(white: Double) {
        red   = white
        green = white
        blue  = white
    }
}

let newColor = Color(0.3, 1.1, 4.0)
```

## 9. What will be the value of lightSwitch after the code is executed?

```swift
enum OnOffSwitch: Togglable {
    case off, on
    mutating func toggle() {
        switch self {
        case .off:
            self = .on
        case .on:
            self = .off
        }
    }
}
var lightSwitch = OnOffSwitch.off
lightSwitch.toggle()
```

## 10. Explain the following code, how are protocols and extensions used? 

```swift
protocol Vehicle {
    var numberOfWheels: Int { get }
    func startEngine()
}

extension Vehicle {
    func honkHorn() {
        print("Honk honk!")
    }
}

class Car: Vehicle {
    var numberOfWheels: Int = 4

    func startEngine() {
        print("Engine started.")
    }
}

let myCar = Car()
myCar.startEngine()
myCar.honkHorn()
``` 
## 11. Identify and correct the error in this code

```swift
func calculateAverage(numbers: [Int]) -> Double {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum / numbers.count
}
let numbers = [10, 20, 30, 40, 50]
let average = calculateAverage(numbers: numbers)
print("Average: \(average)") 
```

## 12. Identify and correct the error in this code. 

```swift
var name: String? = "Devon"
var greeting = "Hello, " + name
print(greeting)
```

## 13. What are we doing here? What are the differences between `filter()`, `map()`, and `compactMap()`?

```swift
let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let evenNumbers = numbers.filter { $0 % 2 == 0 }
let squaredNumbers = evenNumbers.map { $0 * $0 }
print("Even numbers: \(evenNumbers)")
print("Squared even numbers: \(squaredNumbers)")
```

## 14. How can we use this example in a networking scenario? How can we provide an error description within the enum? 

```swift 
enum NetworkError: Error {
    case noConnection
    case serverError
}

func fetchData() throws {
    throw NetworkError.serverError
}

do {
    try fetchData()
} catch NetworkError.noConnection {
    print("No network connection.")
} catch NetworkError.serverError {
    print("Server error.")
} catch {
    print("An unexpected error occurred.")
}
```

## 15. What happens here when we call `increment`? How can we imporve this?

```swift 
class CounterViewModel {
    private var count = 0 {
        didSet {
            updateCounter?()
        }
    }
    
    var countString: String {
        return "Count: \(count)"
    }
    
    var updateCounter: (() -> Void)?
    
    func increment() {
        count += 1
    }
}

let counter = CounterViewModel()

counter.updateCounter = {
    print(counter.countString)
}

counter.increment()
```

## 16. What is wrong with this code? How would you correct it?

```swift 
var username: String? = "John"
if username != nil {
    print("Welcome, \(username)")
} else {
    print("No username provided")
}
```
## 17. What is wrong with this code? Can you explain to what generics are? 

```swift 
protocol Printable {
    var description: String { get }
}

func printDescription<T: Printable>(_ item: T) {
    print(item.description)
}

struct Book {
    var title: String

    var description: String {
        return "Book Title: " + title
    }
}

let myBook = Book(title: "The Swift Programming Language")
printDescription(myBook)
```



# SwiftUI Challenge Questions

## 1. What can we create to reuse the `padding()` and `.border()` modifiers on other views

```swift
struct ContentView: View {
    var body: some View {
        Text("Hello, SwiftUI!")
            .modifier(CustomBorder())
            .padding(10)
            .border(Color.red, width: 1)
    }
}
```

## 2. WHat is wrong with this code? Can you explain the concepts of State and Bindings?

```swift 
struct ContentView: View {
    @State private var name = "Devon"

    var body: some View {
        ChildView(name: $name)
    }
}

struct ChildView: View {
    @State var name: String

    var body: some View {
        TextField("Name", text: $name)
    }
}
```

## 3. What will happen to the counts displayed in `CounterView` when we change state in `RandomNumberView`? Can you explain the differences between `@ObservedObject` and ` @StateObject`? 

```swift
final class CounterViewModel: ObservableObject {
    @Published var count = 0

    func incrementCounter() {
        count += 1
    }
}

struct RandomNumberView: View {
    @State var randomNumber = 0

    var body: some View {
        VStack {
            Text("Random number is: \(randomNumber)")
            Button("Randomize number") {
                randomNumber = (0..<1000).randomElement()!
            }
        }.padding(.bottom)

        CounterView()
    }
}

struct CounterView: View {
    @StateObject var count1 = CounterViewModel()
    @ObservedObject var count2 = CounterViewModel()

    var body: some View {
        VStack {
            Text("Count1 is: \(count1.count)")
            Button("Increment Counter") {
                count1.incrementCounter()
            }

            Text("Count2 is: \(count2.count)")
            Button("Increment Counter") {
                count2.incrementCounter()
            }
        }
    }
}
```