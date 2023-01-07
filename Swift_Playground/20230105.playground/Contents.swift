

// protocol
protocol SomeProtocol{
    
    
}
protocol SomeProtocol2{
    
    
}

struct SomeStructure: SomeProtocol, SomeProtocol2{
    
}

protocol FirstProtocol {
    var name: Int {get set}
    var age: Int {get}
}

protocol AnotherProtocol {
    static var someTypeProperty: Int {get set}
}

protocol FullyNames {
    var fullName: String {get set}
    func printFullName()
}

struct Person : FullyNames{
    var fullName: String
    func printFullName() {
        print(self.fullName)
    }
}

protocol SomeProtocol3 {
    func someTypeMethod()
}
protocol SomeProtocol5 {
    init()
}

class SomeClass : SomeProtocol5{
    required init(){
        
    }
}

// extension

extension Int{
    var isEven: Bool{
        return self % 2 == 0
    }
    var isOdd: Bool{
        return self % 2 == 1
    }
}

var number = 4
number.isOdd
number.isEven

extension String {
    func convertToInt() -> Int? {
        return Int(self)
    }
}

var string = "0"
string.convertToInt()

// 열거형
enum CompassPoint: String{
    case north = "북"
    case south = "남"
    case east = "동"
    case west = "서"
}

var direction = CompassPoint.east
direction = .north

switch direction{
case .north:
    print(direction.rawValue)
case .south:
    print(direction.rawValue)
case .east:
    print(direction.rawValue)
case .west:
    print(direction.rawValue)
}

let direction2 = CompassPoint(rawValue: "남")

enum PhoneError{
    case unknown
    case batteryLow(String)
}

let error = PhoneError.batteryLow("베터리가 곧 방전됩니다.")

switch error{
case .batteryLow(let message):
    print(message)
case .unknown:
    print("알 수 없는 에러입니다.")
}


