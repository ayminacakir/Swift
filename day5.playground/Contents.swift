import UIKit

func printHelp() {
    let message="Welcome to MyApp!"
    print (message)

}


printHelp()

//Accepting Parameters
func square(number: Int) {
    print(number * number)
}
square(number: 8)

//Returning values
func square(number:Int) -> Int {
    return number*number
}

let result = square(number: 8)
print(result)


//Parameters labels

func square(number: Int) -> Int {
    return number * number
}

let result2 = square(number: 8)


func sayHello(to name: String) {
    print("Hello, \(name)!")
}

sayHello(to: "Alice")

/*🔹 to → dış isim (external parameter name)
 🔹 name → iç isim (internal parameter name)*/

*//*
//Omitting parameter labels
func greet(_ person: String) {
    print("Hello, \(person)!")
}
greet("Taylor")

//bazı durumlarda harici parametre adı (yani dışarıdan yazılan kısmı) kaldırmak istersen, _ (alt çizgi) kullanabilirsin

print("Hello", terminator: " ") //print()'in satır sonu davranışını kontrol eder
print("World")

//Kendi Fonksiyonlarında Varsayılan Parametre Tanımlama
//Default parameters
func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greet("Taylor")
greet("Taylor", nicely: false)


func square(numbers:Int...){  //, Int...sıfır veya daha fazla tam sayı (potansiyel olarak yüzlerce) olabilir.
    for number in numbers {
        print("\(number) squared is \(number*number)")
    }
}
square(numbers: 1,2,3,4,5)
*/


//Hata Tipini Tanımlama
enum PasswordError: Error {
    case obvious
}

//2. Hata Fırlatan Fonksiyon (throws)
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

//Running throwing functions

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}


func doubleInPlace(number: inout Int) {
    number *= 2
}
var myNum = 10
doubleInPlace(number: &myNum)  //
