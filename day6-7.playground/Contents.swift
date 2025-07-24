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


//Normal Closure Parametresiyle Fonksiyon Çağırma
func travel1(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travel1(action: {
    print("I'm driving in my car")
})

//Trailing Closure Syntax
travel1() {
    print("I'm driving in my car")
}
//Parantezleri Bile Atlayabilirsin (Tek Parametreli Fonksiyonlarda)
travel1 {
    print("I'm driving in my car")
}

//Closure’ın Parametre Alması
func travel2(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London") // closure'ı çalıştırırken "London" argümanını geçiyoruz
    print("I arrived!")
}
//Fonksiyonu Çağırma (Trailing Closure ile)
travel2 { (place: String) in
    print("I'm going to \(place) in my car")
}

//String alıp string döndüren clouser
func travel3(action: (String) -> String){
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

//Fonksiyonu Çağırma – Trailing Closure ile
travel3 { (place:String) -> String in
    return "I'm going to \(place) in my car"
}

//Swift’in closure sadeleştirmeleri
travel3 { place in
    return "I'm going to \(place) in my car"
}
//return kaldırılabilir – tek satırlıksa otomatik olarak döndürülür:

travel3 { place in
    "I'm going to \(place) in my car"
}

//3. $0 gibi kısa isimler kullanılabilir – closure’ın ilk parametresini temsil eder:
travel3 {
    "I'm going to \($0) in my car"
}


//örnek:
func travel4(action:(String,Int)->String){
    print("I'm getting ready to go.")
    let description = action("London",60)
    print(description)
    print("I arrived!")
}
travel4 { //Bu satırda ise fonksiyonu çağırıyoruz ve ona bir closure gönderiyoruz.
    "I'm going to \($0) at \($1) km/h"
}
    print("------------------")

func travel5(text: String, number: Int) {
    print("I'm getting ready to go.")
  
    print("I am going to \(text) at \(number) km/h")
    print("I arrived!")
}
    travel5(text: "London", number: 60)

print("--------------")

func travel6(text: String,number: Int) -> String {
    let line1 = "I'm getting ready to go."
    let line2 = "I am going to \(text) at \(number) km/h"
    let line3 = "I arrived!"
    return "\(line1)\n\(line2)\n\(line3)"
}

 print(travel6(text: "London", number: 60))





print("--------------")

//ÖR1:
func calculate (operation: (Int,Int) -> Int){
    let result = operation(10,20)
    print(result)
}

calculate{
    $0 + $1
}
print("--------------")
func makeMessage(make:(String,Int) -> String){
    let message = make("ayşe",3)
    print(message)
}
makeMessage{
    "\($0),\($1) yasında"
}

print("--------------")
func processName(_ transform: (String) -> String) {
    let original = "Ahmet"
    let processed = transform(original)
    print("Sonuç: \(processed)")
}

processName {
    $0.uppercased()
}
print("--------------")
func processName(text: String) {
    let result = text.uppercased()
    print("Adı: \(result)")
}

processName(text: "ahmet")

print("--------------")
func processName2(text: String) -> String {
    let result = text.uppercased()
    return "Adı: \(result)"
}
print(processName2(text: "ahmet"))
