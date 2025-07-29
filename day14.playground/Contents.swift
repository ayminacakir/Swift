import UIKit

//FUNCTIONS

func favoriteAlbum() {
    print("My favorite is Fearless")
}

favoriteAlbum()


func favoriteAlbum(name: String){
    print("My favotire album \(name)")
}
favoriteAlbum(name: "Fearless")

func printAlbumRelease(name: String, year: Int) {
    print("\(name) was released in \(year)")
}

printAlbumRelease(name: "Fearless", year: 2008)
printAlbumRelease(name: "speak now", year:2010)


func countLettersInString(string: String){
    print("The string \(string) has \(string.count) letters")
}
countLettersInString(string: "Hello")



func countLettersInString(myString str: String) {
    print("The string \(str) has \(str.count) letters.")
}

countLettersInString(myString: "Hello")


func countLettersInString(_ str: String) {
    print("The string \(str) has \(str.count) letters.")
}

countLettersInString("Hello")


func countLetters(in string: String) {
    print("The string \(string) has \(string.count) letters.")
}
countLetters(in: "Hello")


func countLetters(string: String) {
    print("The string \(string) has \(string.count) letters.")
}
countLetters(string: "Hello")



func albumIsTaylor(name: String)-> Bool {
    if name == "Taylor Swft" {
        return true
    }
    if name == "Fearless" { return true }
    if name == "Speak Now" { return true }
    if name == "Red" { return true }
    if name == "1989" { return true }

    return false
}

if albumIsTaylor(name: "Red") {
    print("That's one of hers!")
} else {
    print("Who made that?!")
}

if albumIsTaylor(name: "Blue") {
    print("That's one of hers!")
} else {
    print("Who made that?!")
}


func getMeaningOfLife() -> Int {
    42
}
getMeaningOfLife()


//OPTINALS
func getHaterStatus(weather: String) -> String? { //eğer bir değer döndürebileceğini veya                                                    döndürmeyebileceğini söylemek istersek
    if weather == "sunny"{
        return nil
    } else {
        return "Hate"
    }
}

getHaterStatus(weather: "sunny")
getHaterStatus(weather: "stormy")


var status: String
status = getHaterStatus(weather: "rainy")!

/*getHaterStatus fonksiyonu String? döner, yani:
 
 Ya bir String döndürür ("Hate" gibi)

 Ya da hiç değer döndürmez (nil)

 Ancak sen bu değeri doğrudan String türündeki status değişkenine atamaya çalışıyorsun.Opsiyoneli unwrap etmek
 Opsiyonel bir değeri kullanmadan önce onu açman (unwrap etmen) gerekir. Aşağıda bazı yöntemler var:Opsiyoneli unwrap etmek
 Opsiyonel bir değeri kullanmadan önce onu açman (unwrap etmen) gerekir. Aşağıda bazı yöntemler var:*/



func getHaterStatus2(weather: String) -> String? {
    if weather == "sunny" {
        return nil
    } else {
        return "Hate"
    }
}

func takeHaterAction(status: String) {
    if status == "Hate" {
        print("Hating")
    }
}

if let haterStatus = getHaterStatus2(weather: "rainy") {
    takeHaterAction(status: haterStatus)
}

/*getHaterStatus2(weather: "rainy") fonksiyonu çağrılır.
 
 Bu fonksiyon "Hate" döner (çünkü hava "sunny" değil).

 if let ile bu opsiyonel String? güvenli şekilde açılır.

 haterStatus değişkeni artık String türündedir.

 takeHaterAction(status: haterStatus) çalıştırılır → "Hating" yazdırılır.
 
 Eğer hava "sunny" olsaydı?
 Bu durumda getHaterStatus2 fonksiyonu nil döner.

 if let başarısız olur, içeri girmez.

 takeHaterAction hiç çağrılmaz.

 Ekrana hiçbir şey yazılmaz.

*/


func yearAlbumReleased(name: String) -> Int? {
    if name == "Taylor Swift" { return 2006 }
    if name == "Fearless" { return 2008 }
    if name == "Speak Now" { return 2010 }
    if name == "Red" { return 2012 }
    if name == "1989" { return 2014 }

    return nil
}

yearAlbumReleased(name: "Lantern")


var items = ["James", "John", "Sally"]

func position(of string: String, in array: [String]) -> Int? {
    for i in 0..<array.count {
        if array[i] == string {
            return i
        }
    }
    return nil
}
    let jamesPosition = position(of: "James", in: items)
    let johnPosition = position(of: "John", in: items)
    let sallyPosition = position(of: "Sally", in: items)
    let bobPosition = position(of: "Bob", in: items)



func yearAlbumReleased2(name: String) -> Int? {
    if name == "Taylor Swift" { return 2006 }
    if name == "Fearless" { return 2008 }
    if name == "Speak Now" { return 2010 }
    if name == "Red" { return 2012 }
    if name == "1989" { return 2014 }

    return nil
}

var year = yearAlbumReleased(name: "Red")

if year == nil {
    print("There was an error")
} else {
    print("It was released in \(year!)")
}




var name: String? = nil

if let realName = name {
    print(realName)
}


var name2: String! = "Ahmet" //örtük Olarak Açılmış Opsiyonel String!

//Bu da bir opsiyoneldir, ama otomatik olarak açılır (implicitly unwrapped optional).

/*Tehlikesi Ne?
 Örtük olarak açılmış opsiyonellerin içinde nil varsa ve sen onu doğrudan kullanırsan uygulama çöker (crash olur).

*//*
var name: String! = nil
print(name.count) // ❌ ÇÖKER

*/
/*Ne Zaman Kullanılır?
 String! gibi değişkenler, genellikle:

 İlk başta nil olabilir ama sonradan kesinlikle bir değer atanacaksa

 Özellikle UIKit gibi Apple framework’lerinde IBOutlet tanımlarında kullanılır:*/

/*

//Optional chaining

func albumReleased(year: Int) -> String? {
    switch year {
    case 2006: return "Taylor Swift"
    case 2008: return "Fearless"
    case 2010: return "Speak Now"
    case 2012: return "Red"
    case 2014: return "1989"
    default: return nil
    }
}
let album = albumReleased(year: 2006)?.uppercased() ?? "unknown"

print("The album is \(album)")




var score = 60

if score >= 75 && score <= 100{
    print("çok zekisin")
} else if score >= 50 {
    print("idare edersin")
} else if score >= 25 {
    print("işin zor ")
} else if score >= 0 {
    print("senden hiç bir şey olmaz")
} else {
    print("inanılmaz")
}

if score >= 60 {
    print("geçti")
} else {
    print("kaldı")
}


// ternary if
score >= 60 ? print("geçti") : print("kaldı")


//enum
/*Belirli bir olası değer kümesini tanımlamak için kullanılır.
*/

enum WeatherType {
    case sun, cloud, rain, wind, snow
}

func getHaterStatus(weather: WeatherType) -> String? {
    if weather == .sun {
        return nil
    } else {
        return "Hate"
    }
}


func getHaterStatus(weather: WeatherType) -> String? {
    switch weather {
    case .sun:
        return nil
    case .cloud, .wind:
        return "dislike"
    case .rain, .snow:
        return "hate"
    }
}


//Enum İçine Değer Eklemek (Associated Values):

enum WeatherType {
    case sun
    case cloud
    case rain
    case wind(speed: Int)
    case snow
}


// Şartlı Eşleştirme (Pattern Matching):
 
func getHaterStatus(weather: WeatherType) -> String? {
    switch weather {
    case .sun:
        return nil
    case .wind(let speed) where speed < 10:
        return "meh"
    case .cloud, .wind:
        return "dislike"
    case .rain, .snow:
        return "hate"
    }
}

*/

//Structs

struct Person {
    var clothes: String
    var shoes: String
}

let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heels")

var taylorCopy = taylor
taylorCopy.shoes = "flip flops"

print(taylor)
print(taylorCopy)

print(taylor.clothes)
print(other.shoes)


struct Person2 {
    var clothes: String
    var shoes: String
    
    func describe() {
        print("I like wearing \(clothes) with \(shoes)")
    }
}

let taylor2 = Person(clothes: "T-shirts", shoes: "sneakers")
taylor.describe()


//Bir yapı içine bir fonksiyon yazdığınızda, ona metot denir.




//CLASSES

class Person {    //Bu sınıf hatalıdır çünkü clothes ve shoes değişkenlerine değer verilmemiştir. Swift, sınıflarda otomatik init(...) oluşturmaz. Bu yüzden:
    
    var clothes: String
    var shoes: String
    
    init(clothes: String, shoes: String){
        self.clothes = clothes
        self.shoes = shoes
    }
}

class Singer {
    var name: String
    var age: Int
    
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
    
    func sing(){
        print("La la la la")
    }
    
}

class CountrySinger: Singer {
    override func sing(){
        print("Trucks, guitars, and liquor")
    }
}

var taylor = CountrySinger(name: "Taylor", age: 25)
taylor.sing()

//override → Üst sınıftan gelen bir metodu yeniden tanımlamak için kullanılır.




//super.init Üst Sınıfa Parametre Geçmek

/*Eğer alt sınıfın kendine ait yeni bir özelliği varsa, o özelliğe değer verdikten sonra super.init(...) ile üst sınıfın init’ine değer geçirmen gerekir*/

class Singer2 {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func sing() {
        print("La la la la")
    }
}

class HeavyMetalSinger: Singer {
    var noiseLevel: Int

    init(name: String, age: Int, noiseLevel: Int) {
        self.noiseLevel = noiseLevel
        super.init(name: name, age: age)
    }

    override func sing() {
        print("Grrrrr rargh rargh rarrrrgh!")
    }
}

/*Swift kodunun bazı kısımları Objective-C tarafında da çalışacaksa, o fonksiyona @objc etiketi eklemen gerekir.*/
@objc func delayedMethod() {
    print("This method can be called by Objective-C")
}

@objcMembers class MyClass: NSObject {
    func myFunc() { ... }
}


/*
SwiftUI → struct ile arayüz yapar
UIKit → class ile arayüz yapar
*/
