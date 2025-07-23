import UIKit
/*
//Creating basic closures
let driving = {
    print("I am driving in my car")
}
driving()

*/
/*
//Closure Tanımı:
let driving = {(place: String) in
        print("I'm going to\(place) in my car")
}
driving("London")

*/
/* Fonksiyonlarda
 
 func drive(to place: String) {...}
 drive(to:"London")
 
 */

/* Closure da
 
 let driving = { (place: String) in ... }
 driving("London") // ✅ sadece değeri veriyoruz, etiket yok
*/

//Closure’ı Çağırma ve Dönen Değeri Kullanma
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("London")
print(message)

//Fonksiyonda aynı şey şöyle olurdu
func driving(place: String) -> String {
    return "I'm going to \(place) in my car"
}

//Parametre Almıyor, Değer Döndürüyor
let payment = { () -> Bool in
print("Paying an anonymous person…")
return true
}



// Closure Tanımı
let driving = {
    print("I'm driving in my car")
}
//Closure’ı Parametre Olarak Alan Fonksiyon
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action() // gönderilen closure burada çalıştırılır
    print("I arrived!")
}


Normal Closure Parametresiyle Fonksiyon Çağırma
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travel(action: {
    print("I'm driving in my car")
})

//Trailing Closure Syntax
travel() {
    print("I'm driving in my car")
}
//Parantezleri Bile Atlayabilirsin (Tek Parametreli Fonksiyonlarda)
travel {
    print("I'm driving in my car")
}

//Closure’ın Parametre Alması
func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London") // closure'ı çalıştırırken "London" argümanını geçiyoruz
    print("I arrived!")
}
//Fonksiyonu Çağırma (Trailing Closure ile)
travel { (place: String) in
    print("I'm going to \(place) in my car")
}

//String alıp string döndüren clouser
func travel(action: (String) -> String){
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

//Fonksiyonu Çağırma – Trailing Closure ile
travel { (place:String) -> String in
    return "I'm going to \(place) in my car"
}

//Swift’in closure sadeleştirmeleri
travel { place in
    return "I'm going to \(place) in my car"
}
//return kaldırılabilir – tek satırlıksa otomatik olarak döndürülür:

travel { place in
    "I'm going to \(place) in my car"
}

//3. $0 gibi kısa isimler kullanılabilir – closure’ın ilk parametresini temsil eder:
travel {
    "I'm going to \($0) in my car"
}


//örnek:
func travel(action:(String,Int)->String){
    print("I'm getting ready to go.")
    let description = action("London",60)
    print(description)
    print("I arrived!")
}
travel {
    "I'm going to \($0) at \($1) km/h"
}
