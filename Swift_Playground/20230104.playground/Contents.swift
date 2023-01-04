import UIKit
import Foundation
// property

//저장 프로퍼티

struct Dog{
    var name: String
    let gender : String
}

var dog = Dog(name: "gunter", gender: "male")
print(dog)

dog.name = "aa"

let dog2 = Dog(name: "gunter", gender: "male")
// dog2.name = "aaa" => Error

class Cat{
    var name: String
    let gender: String
    
    init(name: String, gender: String){
        self.name = name
        self.gender = gender
    }
}

let cat = Cat(name: "json", gender : "male")
cat.name = "gunter"
print(cat.name)

struct Stock{
    var averagePrice: Int
    var quantity: Int
    var purchasePrice: Int {
        get{ // getter
            return averagePrice * quantity
        }
        
        set{ // setter
            averagePrice = newValue / quantity
        }
    }
    
    
}

var stock = Stock(averagePrice: 2300, quantity: 3)

stock.purchasePrice
stock.purchasePrice = 3000
stock.averagePrice

class Account {
    var credit: Int = 0{
        willSet{
            print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정입니다. ")
        }
        
        didSet{
            print("\(oldValue) => \(credit)")
        }
    }
}

var account = Account()
account.credit = 1000

struct SomeStructure{
    static var storedTypeProperty = "Some Value"
    static var computedTypeProperty: Int{
        return 1
    }
}

SomeStructure.computedTypeProperty

class SomeClass {
    var count: Int = 0
    
}

struct SomeStruct {
    var count: Int = 0
}

var class1 = SomeClass()
var class2 = class1
var class3 = class2

class3.count = 2
class1.count

var struct1 = SomeStruct()
var struct2 = struct1
var struct3 = struct2

struct2.count = 3
struct3.count = 4

struct1.count
struct2.count
struct3.count

// 상속
class Vehicle {
    var currentSpeed = 0.0
    var description: String{
        return "\(currentSpeed)!!"
    }
    func makeNoise(){
        print("speak up!")
    }
}

class Bicycle: Vehicle{
    var hasBasket = false
}

var bicycle = Bicycle()
bicycle.currentSpeed

class Train: Vehicle{
    override func makeNoise() {
        super.makeNoise()
        print("choo choo")
    }
}

let train = Train()
train.makeNoise()

class Car: Vehicle{
    var gear = 1
    override var description: String{
        return super.description + " in gear \(gear)"
    }
}
let car = Car()
car.currentSpeed = 30
car.gear = 2
print(car.description)

class AutomaticCar: Car{
    override var currentSpeed: Double{
        didSet{
            gear = Int(currentSpeed / 10 ) + 1
        }
    }
}

let automatic = AutomaticCar()

automatic.currentSpeed = 35.0
print(automatic.description)


// type casting
class MediaItem {
    var name: String
    init(name: String){
        self.name = name
    }
}

class Movie: MediaItem{
    var director: String
    init(name: String, director: String){
        self.director = director
        super.init(name: name)
    }
}

class Song: MediaItem{
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

let library = [
    Movie(name: "aa1", director: "d1"),
    Movie(name: "aa2", director: "d12"),
    Movie(name: "aa3", director: "d13"),
    Song(name: "s1", artist: "a1"),
    Song(name: "s12", artist: "a12")
]

library

var songCount = 0
var movieCount = 0
for item in library{
    if item is Movie{
        movieCount += 1
    }else if item is Song{
        songCount += 1
    }
}

for item in library{
    if let movie = item as? Movie{
        print("m \(movie.director)")
    }else if let song = item as?Song{
        print("s \(song.artist)")
    }
}

// assert only debugging mode

var value = 0
assert(value == 0)

value = 2
//assert(value == 0, "not zero")

// guard

func guardTest(value: Int?){
    
    guard let value = value else { return }
    print(value)
}

guardTest(value: 2)
guardTest(value: nil)

// protocol


