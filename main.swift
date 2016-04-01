import Foundation
let possibleNumber = "123"
let convertNumber = Int(possibleNumber)
if convertNumber != nil {
    print(convertNumber!)
}else {
    print("not convertnumber: \(convertNumber)")
}

//let age = -3
//assert(age > 0, " age must  > 0")

print("====================")

var serverResponseCode : Int? = 404
print(serverResponseCode)
//serverResponseCode = nil

var servCode : Int = serverResponseCode!
//servCode = nil

let assumeString : String! = "nillll"
let implicitString : String = assumeString;
print(implicitString)

for index in 1...5 {
    print("\(index) ")
}

let names = ["a","b","🐱"]
let count = names.count
for index in 0..<count {
    print(names[index] + " " )
}

var str1 = "ThisisaString"
str1.insert("%",atIndex: str1.startIndex)
print(str1)
str1.insertContentsOf("SSHHIITT".characters,at: str1.endIndex)
print(str1)
str1.removeAtIndex(str1.endIndex.predecessor())
print(str1)

var someInts = [Int]()
someInts.append(2);
someInts.append(3);
for index in 0..<someInts.endIndex{
    print(someInts[index])
}

var someDoubles = [Double](count:5,repeatedValue:1.1)
for i in someDoubles.startIndex..<someDoubles.endIndex{
    print(someDoubles[i])
}

var shopList = ["Egg","Milk"]
shopList.append("flour")
shopList += ["cheese","butter","maple syrup"]
let maple = shopList.removeLast()
print(maple)

for (i,k) in shopList.enumerate(){
    print("item \(i+1): \(k)")
}

var strSets = Set<String>()
strSets.insert("apple")
strSets.insert("pear")
strSets.insert("kiwi")
strSets.insert("applee")
for fru in strSets.sort(){
    print(fru)
}

var nameOfIntegers = [Int : String ]()
nameOfIntegers[16] = "sixteen"
nameOfIntegers[15] = "fifteen"
nameOfIntegers[13] = "thirteen"
nameOfIntegers[16] = "shit"
for item in nameOfIntegers{
    print("***\(item.0) : \(item.1)")
//    print(item)
}

let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
case 8:
    description += " sss "
    fallthrough
default:
    description += " an integer."
}
print(description)

if #available(iOS 9, OSX 10.10, *){
  print("ios 9")
} else {
    print("not ios or osx")
}

func sayHello(person : String) -> String{
    let result = person + "say hello"
    return result
}

print(sayHello("hehe"))

func findMaxMin(array:[Int])->(min : Int, max : Int)?{
    if array.isEmpty{
        return nil
    }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array{
        if value < currentMin {
            currentMin = value
        }
        if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin,currentMax)
}

//let testArray = [-9, 23, 1, 54, 98, 22, 11,-8]
var  testArray = [Int]()
let result = findMaxMin(testArray)
if result != nil{
    print("\(result!.min)" + "  \(result!.max)")
}else {
    print("array is nil")
}

func foo(to person : String, and anotherPerson : String) -> String{
//    person = "ttt"
    return "Hello \(person) " + "\(anotherPerson)"
}

print(foo(to:"Tom", and:"Lily"))

//func appendNumberToName (var name : String , maxNumber : Int) -> String {
//    for i in 0..<maxNumber{
//        name += String(i+1)
//    }
//    return name
//}
//var myName = "Vic"
//print(appendNumberToName(myName,maxNumber: 3))

func swapTwoInts( a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("\(someInt) \(anotherInt)")

func addTwoInts(a: Int, _ b: Int) -> Int{
    return a + b
}

func multiplyTwoInts(a: Int, _ b: Int) -> Int{
    return a * b
}

var mathFunc : (Int, Int) -> Int = addTwoInts;
print(mathFunc(12,3))
mathFunc = multiplyTwoInts
print(mathFunc(11,11))

func stepForward(input: Int) -> Int{
    return input+1
}

func stepBackward(input: Int) -> Int{
    return input-1
}

func chooseStepFunction(backwards : Bool) -> (Int)->Int {
    return backwards ? stepBackward : stepForward
}

var currentValue = 3
let moveNearToZero = chooseStepFunction(currentValue > 0);

while currentValue != 0 {
    print("\(currentValue)")
    currentValue = moveNearToZero(currentValue)
}

let namess = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
var reverse = namess.sort({(s1: String, s2: String) -> Bool in return s1 > s2 })
for item in reverse {
    print(item)
}

print("////////////////////////////////////////////////")

let possible = "123"
let convert = Int(possible)
print(convert)

enum VendingMachineError: ErrorType {
    case InvalidSelection
    case InsufficientFunds(coinsNeeded: Int)
    case OutOfStock
}

enum Barcode {
    case UPCA(Int, Int, Int, Int)
    case QRCode(String)
}

var productBarcode = Barcode.UPCA(8,12345,3214,3)
productBarcode = Barcode.QRCode("heheqrcode ")
switch productBarcode {
    case Barcode.UPCA(let num1, let num2, let num3, let num4):
        print("upca: \(num1),\(num2),\(num3),\(num4),")
    case Barcode.QRCode(let strQr):
        print("qr: \(strQr)")
}

class DataImporter {
    var fileName = "data.txt"
}

class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
}
let manager = DataManager()
print(manager.data)
manager.data.append("some data")
manager.data.append("some data22")
print(manager.importer.fileName)
print(manager.data)

print("//////////////////////////////////////////")
struct Point {
    var x = 0.0
    var y = 0.0

    mutating func moveByX(x deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }
}
struct Size {
    var width = 0.0
    var height = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    var center : Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x:centerX,y:centerY)
        }
        set (newCenter){
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}
var square = Rect(origin: Point(x:0.0, y:0.0), size: Size(width: 10.0, height: 10.0))
let initSquareCenter = square.center
square.center = Point(x: 15.0,y: 15.0)
print("square.origin is now at (\(square.origin.x), \(square.origin.y))")

class StepCounter {
    var totalSteps: Int = 0 {
        willSet (newTotalSteps) {
            print("about to set total \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue {
                print("added \(totalSteps - oldValue)")
            }
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 200
print("=1=")
stepCounter.totalSteps = 360
print("=2=")
stepCounter.totalSteps = 890
print("=3=")

var somePoint = Point(x: 1.0, y: 1.0)
somePoint.moveByX(x:2.0, y: 3.0)
print("The point is now at (\(somePoint.x), \(somePoint.y))")

print("//////////////////////////////////")

struct LevelTracker {
    static var highestUnlockedLevel = 1
    static func unlockLevel( level: Int ) {
        if ( level > highestUnlockedLevel ) {
            highestUnlockedLevel = level
        }
    }
    static func levelIsUnlocked (level: Int) -> Bool {
        return ( level <= highestUnlockedLevel )
    }
    var currentLevel = 1
    mutating func advanceToLevel(level: Int) -> Bool {
        if (LevelTracker.levelIsUnlocked(level)) {
            currentLevel = level
            return true
        }
        else {
            return false
        }
    }
}

class Player {
    var tracker = LevelTracker()
    let playerName: String
    func completedLevel( level: Int ){
        LevelTracker.unlockLevel(level+1)
        tracker.advanceToLevel(level+1)
    }
    init(name: String){
        playerName = name
    }
}

var player = Player(name: "sun")
player.completedLevel(5)
if (player.tracker.advanceToLevel(6)){
    print("player is LV.6")
} else {
    print("LV.6 not yet been unlocked.")
}

struct TimeTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index
    }
    init(multi: Int){
        multiplier = multi
    }
}

let threeTimesTable = TimeTable(multi: 3)
print("six times three is \(threeTimesTable[6])")

struct Matrix {
    let rows: Int
    let columns: Int
    var grid: [Double]
    init(rows: Int, columns: Int){
        self.rows = rows
        self.columns = columns
        grid = Array(count: rows * columns , repeatedValue: 0.0)
    }
    func isIndexValid(row: Int, _ column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column <= columns
    }
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(isIndexValid(row, column), "Index out of range")
            return grid[(row * column) + column]
        }
        set {
            assert(isIndexValid(row, column), "Index out of range")
            grid[(row * column) + column] = newValue
        }
    }
    func showAll() {
        for item in grid {
            print("\(item)")
        }
    }
    func showInGrid() {
        var i: Int
        var j: Int
//        for i = 0; i < rows; i+=1 {
//            for j = 0; j < columns; j+=1{
//                print("\(self[i,j])")
//            }
//        }
        // swift traverse method
        print("-----------stride---------")
        for i in 0.stride(to: rows, by: 1){
            for j in 0.stride(to: columns, by: 1) {
                print("\(self[i,j])")
            }
        }

    }
}

var matrix = Matrix(rows: 2, columns: 2)
matrix[0,1] = 1.5
matrix[1,0] = 3.2
//matrix.showAll()
matrix.showInGrid()
//let someV = matrix[2,2]

class Vehicle {
    var currentSpeed = 0.0
    var description: String  {
        return "traveling at  \(currentSpeed) miles per hour"
    }
    func makeNoise(){

    }
}

class Bicycle: Vehicle {
    var hasBasket = false
}

let bike = Bicycle()
bike.hasBasket = true
bike.currentSpeed = 15.0
print("bike current speed \(bike.description)")

class Tandem: Bicycle {
    var currentPassengers = 0
}

class Train: Vehicle {
    override func makeNoise() {
        print("choo, choo")
    }
}

let train = Train()
train.makeNoise()