#  Swift code snippet challenges


## 1. Where is the error and why? How can it be fixed?

let value1: Int = 1
let value2: UInt = 1
let value3: Double = 3.34
var result = value1 + value2 + value3
print(result)

## 2. What’s the value of the length variable, and why?

var array1 = [1, 2, 3, 4, 5]
var array2 = array1
array2.append(6)
var length = array1.count
print(length)

## 3. The following will give compile error, and why?

let d = ["john", "james", "vincent", "louis"]
let x = d.sort()
print(x)

## 4. What will be the value of productBarcode?

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

## 5. What will be the value of earthsOrder?

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}
let earthsOrder = Planet.earth.rawValue

## 6. What will be the value of sunsetDirection?

enum CompassPoint: String {
    case north, south, east, west
}
let sunsetDirection = CompassPoint.west.rawValue

## 7. What is the value of reversedNames?

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by: backward)

## 8. The init call throws error, what is it and how to fix it in two ways?

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

## 9. What will be the value of lightSwitch after the code is executed?

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
