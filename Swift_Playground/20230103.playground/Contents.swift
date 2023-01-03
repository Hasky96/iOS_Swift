import UIKit

// 조건문
let age = 20
if age<19 {
    print(" \(age)살은 미성년자 입니다.")
} else{
    print(" \(age) adult!")
}

let animal: String = "pig"

if animal == "dog"{
    print("강아지 사료주기!")
} else if animal == "cat"{
    print("고양이 사료주기!")
} else {
    print("해당하는 동물 사료 없음!")
}

// switch
let color = "blue"

switch color {
case "blue":
    print("blue color")
    
case "green":
    print("green color")
    
default:
    print("not color")
}

let temperature = 9

switch temperature{

case -20...9:
    print("winter")
case 10...14:
    print("fall")
case 15...20:
    print("spring")
case 26...35:
    print("summer")
default:
    print("hell")
}

// 반복문
for i in 1...4{
    print(i)
}

var array: Array<Int> = Array<Int>()
array = [1,2,3,4,5]
for i in array{
    print(i)
}

var number = 5
while number < 10{
    number+=1
}

var x = 6

repeat{
    x+=2
}while x < 5
print(x)

// Optional nil
var name2: String?

var number2: Int? = nil

var optionalName: String? = "dean"

print(optionalName!)

// Optional binding
var number3: Int?
//print(number3!)
//print(number3!)

if let result = number3 {
    print(result)
}else{
    print("nilnilnil")
}

func test(){
    let number: Int? = 5
    guard let result = number else {return}
    print(result)
}

test()

let value: Int? = 6
if value==6{
    print("value = 6")
}else{
    print("value != 6")
}

let String = "12"
var stringToInt: Int! = Int(String)
print(stringToInt + 1)

// structure
struct User{
    var nickname: String
    var age: Int
    
    func information(){
        print("\(nickname) \(age)")
    }
}

var user = User(nickname: "James", age: 16)
print(user)
print(user.nickname)
print(user.age)

user.nickname = "Thomas"
print(user.nickname)

user.information()

// Class
class Dog{
    var name: String = ""
    var age: Int = 0
    
    init(){
    }
    
    func introduce(){
        print("\(name) \(age)")
    }
}

var dog = Dog()
dog.name = "Coco"
dog.age = 3

dog.name
dog.age
dog.introduce()

// initialization
class User2 {
    var nickname : String
    var age: Int
    
    init(nickname: String, age: Int){
        self.nickname = nickname
        self.age = age
    }
    init(age: Int){
        self.nickname = "aaa"
        self.age = age
    }
    
    deinit{
        print("deinit User ")
    }
}

var user2 = User2(nickname: "Kano", age: 65)

user2.nickname
user2.age

var user3 = User2(age: 26)
user3.nickname
user3.age


var user4 : User2? = User2(age:23)
user4 = nil







