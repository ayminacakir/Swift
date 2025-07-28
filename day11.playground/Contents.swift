import UIKit


// PROTOCOL

protocol Identifiable {
    var id: String { get set }
}


struct User: Identifiable { //: Identifiable diyerek bu struct'ın Identifiable protokolüne                                  uyduğunu (conform ettiğini) söyledik.
    var id: String
}


func displayId(thing: Identifiable){
    print("My ID is \(thing.id)")
}


/*Bu fonksiyonun parametresi Identifiable protokolünü kullanan herhangi bir tür olabilir.
 
 Bu sayede sadece User değil, Identifiable protokolüne uyan başka türler de bu fonksiyona gönderilebilir.

 thing.id diyebiliyoruz çünkü protokol bu özelliği garanti ediyor.

*/


//Protocols, bir şablon gibidir. Bir türün (struct, class, enum) sahip olması gereken minimum özellikleri ve metotları tanımlar.

struct Book {
    var name: String
}

protocol Purcaseable {
    var name: String { get set}
}

func buy(_book: Book){
    print("I'm buying \(_book.name)")
}

func buy2(_item: Purcaseable){
    print("I'm buying \(_item.name)")
}

struct Coffe: Purcaseable {
    var name: String
    var strength: Int // Ekstra özellik
}

//Protokoller sadece zorunlu olan özellikleri belirler. Her tür kendi ekstra özelliklerini yine de ekleyebilir





print("------------------------------------------------------------------")

// Protocol inheritance

protocol Payable {
    func calculateWages () -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee:Payable, NeedsTraining, HasVacation {
    
}


protocol Computer {
    var price: Double { get set }
    var weight: Int { get set }
    var cpu: String { get set }
    var memory: Int { get set }
    var storage: Int { get set }
}

protocol Laptop {
    var price: Double { get set }
    var weight: Int { get set }
    var cpu: String { get set }
    var memory: Int { get set }
    var storage: Int { get set }
    var screenSize: Int { get set }
}

protocol Product {
    var price: Double { get set }
    var weight: Int { get set }
}

protocol Computer2: Product {
    var cpu: String { get set }
    var memory: Int { get set }
    var storage: Int { get set }
}

protocol Laptop2: Computer {
    var screenSize: Int { get set }
}


/*Laptop aynı zamanda bir Computer ve Product’tır.
 
 Kodlar daha tekrarı az ,temiz, okunabilir ve sürdürülebilir olur.*/





print("------------------------------------------------------------------")


//Extension
//Extension, mevcut bir türün (örneğin Int, String, Array, kendi struct’ların veya class’ların) fonksiyonelliğini sonradan genişletmemize olanak tanır.


extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 8
print(number.squared()) // 64  Artık tüm Int değerleri squared() metoduna sahiptir:




//Stored Property Eklenemez, Ama Computed Property Eklenebilir
extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

let n = 10
print(n.isEven)



print("------------------------------------------------------------------")
/*Swift’te Extension Ne Zaman Kullanılır?
1. 📦 Kendi Kodumuzu Düzenlemek İçin
Extension’lar kodu amaçlarına göre gruplamak için çok faydalıdır. İki ana yaklaşım vardır:*/

/*a) Conformance Grouping (Uygunluk Grubu)
 Bir type’ın (struct/class) bir protokole uymasını sağlamak için gerekli fonksiyonları ayrı bir extension içinde yazmak.*/

protocol Printable {
    func printDescription()
}

struct Book3 {
    var title: String
}

extension Book3: Printable {
    func printDescription() {
        print("Title: \(title)")
    }
}


//b) Purpose Grouping (Amaca Göre Gruplama)
//Bir türle ilgili belli bir işlevi (örneğin veri kaydetme veya yükleme) tek bir uzantı içinde gruplayabilirsiniz:

extension Book {
    func saveToDisk() {
        // kaydetme işlemi
    }
    
    func loadFromDisk() {
        // yükleme işlemi
    }
}



/*2.Apple’ın veya Başkasının Tanımladığı Türleri Genişletmek İçin
Apple’ın yazdığı String, Int, Array gibi türleri değiştiremeyiz, ama onlara extension ile yeni özellikler ekleyebiliriz.*/

extension String {
    var isLong: Bool {
        return self.count > 100
    }
}


print("------------------------------------------------------------------")
//Protocol Extensions Nedir?
//Bir protokole ait tüm türlere ortak davranış kazandırmanızı sağlar.


let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

/*Swift’te hem Array hem de Set, Collection protokolünü kullanır.
 
 Biz de bu protokole bir fonksiyon ekleyebiliriz:
*/

extension Collection {
    func summarize() {
        print("There are \(count) of us:")
        for name in self {
            print(name)
        }
    }
}
pythons.summarize()
beatles.summarize()


print("------------------------------------------------------------------")

//Protocol-oriented programming

protocol Identifiable2 {
    var id: String { get set }
    func identify()
}

/*Buraya kadar klasik bir protokol tanımı. Her Identifiable türü identify() fonksiyonunu yazmak zorunda.Ama biz bir default (varsayılan) tanım verirsek:*/

extension Identifiable2 {
    func identify() {
        print("My ID is \(id).")
    }
}
/*Artık bu protokolü kullananlar ekstra kod yazmadan bu davranışı alırlar:*/

struct User2: Identifiable2 {
    var id: String
}

let twostraws = User2(id: "twostraws")
twostraws.identify() // My ID is twostraws.
