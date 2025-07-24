import UIKit

//Creating your own structs
struct Sport {
    var name: String  //property tanımladık string türünde
}
//Struct içindeki değişkenlere (property) "özellik" denir. Burada name bir özelliktir.

var tennis = Sport(name:"Tennis")  //Sport türünden tennis adında bir değişken oluşturduk,name                                  özelliğine tennis değerini verdik
print(tennis.name)


tennis.name = "Lawn Tennis " //tennis değişkeni var (değiştirilebilir) olarak tanımlandığı                                 için,içindeki name özelliğini güncelleyebiliyorsun.


struct Sport2 {
    var name : String = "Football"
}

var sport = Sport2()
print (sport.name)


print("------------------------------------------------------------------")



//What’s the difference between a struct and a tuple?
//tuple
let person = (name: "Alice", age: 30, city: "New York")
//aynı veriyi struct ile tutmak
struct User {
    var name: String
    var age: Int
    var city: String
}

let user = User(name: "Alice", age: 30, city: "New York")

print("------------------------------------------------------------------")


//Computed properties

struct Sport3 {
    var name : String
    var isOlympicSport : Bool  //bu iki özellik stored property yani değerleri bellekte doğrudan saklanan özelliklerdir.
    
    // computed property
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        }else{
            return "\(name) is not an Olympic sport"
        }
    }
}

let chessBoxing = Sport3(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)


/*Swift bize iki seçenek sunar: saklanan özellikler, bir değerin daha sonra kullanılmak üzere bir miktar belleğe saklandığı özellikler ve hesaplanan özellikler, bir değerin her çağrıldığında yeniden hesaplandığı özellikler*/



print("------------------------------------------------------------------")


//Property observers
struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print ("\(task) is now \(amount)% complete")
        } //Bu blok, amount değeri değiştikten hemen sonra çalışır.
            //Yani her seferinde bir mesaj yazdırır.
    }
}

var progress = Progress(task: "Loading...", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

/*willSet    Değer değişmeden hemen önce    Yeni değere göre hazırlık yapılabilir*/



print("------------------------------------------------------------------")


//Methods

struct City{
    
    var population: Int
    
    func collectTaxes() -> Int{
        return population * 1000
    } //Struct'ların içine func kullanarak fonksiyon (method) ekleyebilirsin. Bu fonksiyon, o struct'ın özelliklerini kullanabilir.
}

let london = City(population:9_000_000)
london.collectTaxes()



print("------------------------------------------------------------------")


//Mutating methods (değiştirici methodlar)
/*Swift’te bir struct (yapı) değiştirilemez (immutable) olarak tasarlanmıştır.
 🔐 Güvenlik Nedeniyle Swift Ne Yapıyor?
 Swift “güvenli tarafta kalmak” için her methodun, struct’ın özelliklerini değiştirip değiştirmediğini bilmek ister. Eğer değiştiriyorsa, o methodun başına mutating anahtar kelimesi konulmalıdır.*/

struct Person2 {
    var name: String
    
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person2 = Person2(name: "Ed")
person2.makeAnonymous()



struct Counter {
    var count = 0
    
    mutating func increment() {
        count += 1
    }
}

var c = Counter()
c.increment() // ✅ olur

let c2 = Counter()
// c2.increment() // ❌ hata: çünkü c2 sabit


print("------------------------------------------------------------------")


//Properties and methods of strings
//String’ler Struct’tır
let string = "Do or do not, there is no try."
print(string.count)
print(string.hasPrefix("Do")) //Belirtilen ifadeyle başlayıp başlamadığını kontrol eder.
print(string.uppercased())//tüm harfleri büyük harf yapar.
print(string.sorted())//Harfleri alfabetik sıraya dizer.



print("------------------------------------------------------------------")


//Properties and methods of arrays

/*Swift dilinde Array (dizi) türü de bir struct (yapı) olarak tanımlanmıştır. Bu sayede diziler, kendi özelliklerine (properties) ve fonksiyonlarına (methods) sahiptir. */

var toys = ["Woody"]
print(toys.count)
toys.append("Buzz")
toys.firstIndex(of: "Buzz")
print(toys.sorted())
toys.remove(at: 0)

print("------------------------------------------------------------------")
