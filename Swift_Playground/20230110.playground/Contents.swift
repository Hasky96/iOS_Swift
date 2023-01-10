import Foundation
import UIKit
// 클로저

let hello = {() -> () in
    print("hello")
}

hello()

let hello2 = {(name: String) -> String in
    return "Hello, \(name)"
}

hello2("Dlflk")

func doSomething(closure: () -> ()) {
    closure()
}

doSomething(closure: {() -> Void in
    print("hello")
})

doSomething() {
    print("hello2")
}

doSomething{
    print("hello2")
}



func doSomething2() -> () -> () {
    return{ () -> () in
        print("hello4")
    }
}

doSomething2()()

func doSomething2(success:()->(), fail:()->()){
    
}

doSomething2 {
    <#code#>
} fail: {
    <#code#>
}

func doSomething3(closure: (Int, Int, Int) -> Int){
    closure(1,2,3)
}

doSomething3(closure: { (a,b,c) in
    return a+b+c
})

doSomething3(closure: {
    return $0+$1+$2
})

doSomething3(){
    return $0+$1+$2
}

doSomething3(){
    $0+$1+$2
}

doSomething3{
    $0+$1+$2
}

// 고차함수 map filter reduce
//map
let number = [0,1,2,3]
let mapArray = number.map {(number)-> Int in
    return number*2
}
print("map \(mapArray)")

//filter
let intArray = [10,5,20,13,4]
let filterArray = intArray.filter { $0>5 }
print("filter \(filterArray)")

//reduce
let someArray = [1,2,3,4,5]
let reduceResult = someArray.reduce(0){
    (result: Int, element: Int) -> Int in
    print("\(result) + \(element)")
    return result + element
}

print("reduce \(reduceResult)")
