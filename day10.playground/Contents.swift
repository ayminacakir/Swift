import UIKit

class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "Poppy", breed: "Labrador Retriever")

/*struct otomatik olarak bir init oluşturur.class ise bu otomatik başlatıcıyı vermez. Eğer bir init fonksiyonu yazmazsan hata alırsın.Bu yüzden class içinde init() fonksiyonunu kendin yazmak zorundasın.*/

print("----------------------------------------------")

//Class inheritance

class Dog2 {
    var name: String
    var breed: String
    
    init(name: String,breed: String){
        self.name = name
        self.breed = breed
    }
}

class Poodle: Dog2{
    init (name: String){
        super.init(name: name, breed: "Poodle")
    }
}


print("----------------------------------------------")



//Method Overriding
/*Swift’te bir alt sınıf (child class), üst sınıfın (parent class) metotlarını kendi ihtiyacına göre değiştirebilir. Bu işlemin adı overriding yani metot ezmedir.*/

class Dog3 {
    func makeNoise() {
        print("Woof!")
    }
}
class Poodle2: Dog3 {
    override func makeNoise() {
        print("Yip!")
    }
}
let poppy2 = Poodle2()
poppy2.makeNoise()



print("----------------------------------------------")

//Fİnal Class
/*final class, başka bir sınıf tarafından kalıtılamaz (subclass edilemez).
 
 Yani, bu sınıfın özellikleri ve metotları üzerine yazılamaz (override edilemez) ve bu sınıftan yeni bir alt sınıf oluşturulamaz.*/

final class Dog4 {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}
/*class Poodle4: Dog4 {  // ❌ Hata: 'Dog' is final and cannot be subclassed
}*/


print("----------------------------------------------")



//Sınıflar ve Yapılar Kopyalandığında Ne Olur?
class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
var singerCopy = singer
singerCopy.name = "Justin Bieber"

print(singer.name)  // 🔴 Çıktı: "Justin Bieber"


struct Singer2 {
    var name = "Taylor Swift"
}

var singer2 = Singer2()
var singerCopy2 = singer2
singerCopy2.name = "Justin Bieber"

print(singer2.name)  // ✅ Çıktı: "Taylor Swift"




print("----------------------------------------------")




//Deinitializer (Yok Edici) Nedir?

class Person {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }

    deinit {
        print("\(name) is no more!")
    }
}
for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}


print("----------------------------------------------")


//Mutability

/*Eğer bir struct sabit (yani let) olarak tanımlanmışsa, içindeki var özellikleri bile değiştirilemez.*/
struct Singer4 {
    var name = "Taylor Swift"
}

let taylor = Singer4()
// taylor.name = "Ed Sheeran" ❌ → HATA verir!




class Singer5 {
    var name = "Taylor Swift"
}

let taylor2 = Singer5()
taylor2.name = "Ed Sheeran"  // Bu çalışır!
print(taylor2.name) // "Ed Sheeran"

/*Çünkü class bir referans tipidir.
 let taylor dediğinde, taylor isimli sabit bir referans oluşur.
 Bu referans değiştirilemez (yani taylor artık başka bir nesneyi gösteremez),
 ama işaret ettiği nesnenin içeriği değiştirilebilir.*/
