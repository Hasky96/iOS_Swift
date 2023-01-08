// 옵셔널 체이닝

import Foundation
struct Develolper{
    let name: String
}

struct Company {
    let name: String
    var developer: Develolper?
}
var developer = Develolper(name: "jdlsk")
var company = Company(name: "aa", developer: developer)

print(company.developer?.name)
print(company.developer!.name)

// try catch
// throwing catching propagating manupulating

enum PhoneError: Error {
    case unknown
    case batteryLow(batteryLevel: Int)
}

//throw PhoneError.batteryLow(batteryLevel: 10)

func checkPhoneBatteryStatus(batteryLevel: Int) throws -> String{
    guard batteryLevel != -1 else {throw PhoneError.unknown}
    guard batteryLevel > 20 else {throw PhoneError.batteryLow(batteryLevel: 20)}
    return "베터리 상태가 정상입니다."
}
 
do {
    try checkPhoneBatteryStatus(batteryLevel: 19)
} catch PhoneError.unknown{
    print("알 수 없는 에러")
} catch PhoneError.batteryLow(let batteryLevel){
    print("배터리 부족 \(batteryLevel)%")
} catch {
    print(error)
}

let status = try? checkPhoneBatteryStatus(batteryLevel: 30)
print(status)

let status2 = try! checkPhoneBatteryStatus(batteryLevel: 30)
print(status2)

