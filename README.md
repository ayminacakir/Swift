
 #Protocol Nedir?
Protocol bir şablon gibidir.
Bir türün (struct, class, vs.) sahip olması gereken özellikleri (property) ve fonksiyonları (method) tanımlar.


Protocol: Ne tür özellikler/fonksiyonlar olması gerektiğini söyler.

 Swift Neden Protocols Kullanır?
1. Kuralları Tanımlamak İçin
Protocols, bir şablon gibidir. Bir türün (struct, class, enum) sahip olması gereken minimum özellikleri ve metotları tanımlar.

2. Esnek Kod Yazmak İçin
Eğer protokol kullanmazsak, her fonksiyon belirli türlere bağımlı olur. Örneğin:


func buy(_ book: Book) {
    print("I'm buying \(book.name)")
}
Bu fonksiyon sadece Book türünü kabul eder. Ama belki Movie, Car, Coffee gibi başka şeyleri de satın almak istiyoruz.

İşte protokol burada devreye girer:


func buy(_ item: Purchaseable) {
    print("I'm buying \(item.name)")
}
Bu sayede Book, Movie, Car, Coffee gibi Purchaseable protokolüne uyan her tür bu fonksiyona gönderilebilir.

4. Genişletilebilirlik Sağlar
Protokoller sadece zorunlu olan özellikleri belirler. Her tür kendi ekstra özelliklerini yine de ekleyebilir:



 Protocol Inheritance (Protokol Mirası) Nedir?
Swift’te bir protokol başka bir protokolden miras alabilir. Bu olaya “protocol inheritance” (protokol mirası) denir.

❗ Sınıflardan farkı: Swift’te bir protokol birden fazla protokolden miras alabilir. Yani çoklu miras mümkündür.


Neden Protocol Inheritance Kullanılır?
🔸 1. Fonksiyonelliği Parçalara Ayırmak ve Tekrarı Azaltmak İçin
Diyelim ki bilgisayarları ve ürünleri temsil eden bazı protokoller tanımlayacaksınız.

Kötü yol (tekrarlı):

2. Anlamlı Kısıtlamalar Eklemek İçin
Equatable protokolü:
İki nesnenin eşit olup olmadığını karşılaştırmamıza izin verir.

5 == 6  // false

✅ Comparable protokolü:

Nesnelerin küçük/büyük karşılaştırmalarını yapmamıza izin verir.

"Hello" < "World" // true
Ama şunu düşün:

Eğer bir şeyin başka bir şeyden küçük ya da büyük olup olmadığını biliyorsak, eşit olup olmadığını da bilmeliyiz.

Bu nedenle:

protocol Comparable: Equatable {
    // ... ekstra kıyaslama fonksiyonları
}
Swift, Comparable’ı Equatable’dan miras alır. Böylece tekrar etmeden gerekli özellikleri kazanırız.


Swift’te Extension (Uzantı) Nedir?
Extension, mevcut bir türün (örneğin Int, String, Array, kendi struct’ların veya class’ların) fonksiyonelliğini sonradan genişletmemize olanak tanır.

✅ En güzel yanı: Kodu orijinal tanımını değiştirmeden geliştirebiliriz.


extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 8
print(number.squared()) // 64


//Artık tüm Int değerleri squared() metoduna sahiptir:

extension Int {


Swift’te Extension Ne Zaman Kullanılır?
1. 📦 Kendi Kodumuzu Düzenlemek İçin
Extension’lar kodu amaçlarına göre gruplamak için çok faydalıdır. İki ana yaklaşım vardır:*/

/*a) Conformance Grouping (Uygunluk Grubu)
 Bir type’ın (struct/class) bir protokole uymasını sağlamak için gerekli fonksiyonları ayrı bir extension içinde yazmak.
 
 //b) Purpose Grouping (Amaca Göre Gruplama)
//Bir türle ilgili belli bir işlevi (örneğin veri kaydetme veya yükleme) tek bir uzantı içinde gruplayabilirsiniz:

/*2.Apple’ın veya Başkasının Tanımladığı Türleri Genişletmek İçin
Apple’ın yazdığı String, Int, Array gibi türleri değiştiremeyiz, ama onlara extension ile yeni özellikler ekleyebiliriz.*/



Protocol Extensions Nedir?
Swift’te:

Protocol = “Bu yapı şunları yapabilmeli” diye bir kurallar listesi sunar, ama içerik vermez.

Extension = Var olan bir türün içine yeni fonksiyonlar ekler, ama sadece tek bir türe etki eder.

✨ Protocol extension ise bu ikisini birleştirir:
Bir protokole ait tüm türlere ortak davranış kazandırmanızı sağlar.


Ne Zaman Kullanılır?
1. 🔁 Tekrarlanan Kodlardan Kurtulmak İçin
Aynı fonksiyonu Array, Set, Dictionary gibi birçok türe ayrı ayrı yazmak yerine, sadece bir protokole eklersin.

swift
Kodu kopyala
let numbers = [4, 8, 15, 16]
let numbers2 = Set([4, 8, 15, 16])
let numbers3 = ["four": 4, "eight": 8, "fifteen": 15, "sixteen": 16]
Hepsi .allSatisfy() fonksiyonunu kullanabilir:

swift
Kodu kopyala
let allEven = numbers.allSatisfy { $0.isMultiple(of: 2) }
let allEven2 = numbers2.allSatisfy { $0.isMultiple(of: 2) }
let allEven3 = numbers3.allSatisfy { $0.value.isMultiple(of: 2) }
Bu fonksiyon Sequence protokolüne eklenmiştir. Yani:

swift
Kodu kopyala
extension Sequence {
    func allSatisfy(_ test: (Element) -> Bool) -> Bool {
        // Swift bunu sizin yerinize yazar, burada sadece mantığı anlatıyoruz
    }
}
Sonuç: Array, Set, Dictionary gibi Sequence’e uyan tüm türler bu fonksiyona sahip olur.

Protocol-Oriented Programming (POP) Nedir?
Protocol-Oriented Programming, adından da anlaşılacağı gibi, yazılımı protokoller etrafında yapılandırma yaklaşımıdır.

Protocol = “Bir yapı şu özelliklere ve metotlara sahip olmalı” diyen kurallar bütünüdür.

Protocol Extension = Bu protokollere varsayılan davranışlar tanımlamamıza olanak tanır.

🔸 Örnek: POP ile Tanımlama

protocol Identifiable {
    var id: String { get set }
    func identify()
}
Buraya kadar klasik bir protokol tanımı. Her Identifiable türü identify() fonksiyonunu yazmak zorunda.

Ama biz bir default (varsayılan) tanım verirsek:

extension Identifiable {
    func identify() {
        print("My ID is \(id).")
    }
}
Artık bu protokolü kullananlar ekstra kod yazmadan bu davranışı alırlar:

struct User: Identifiable {
    var id: String
}

let twostraws = User(id: "twostraws")
twostraws.identify() // My ID is twostraws.

