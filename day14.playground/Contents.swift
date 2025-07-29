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


