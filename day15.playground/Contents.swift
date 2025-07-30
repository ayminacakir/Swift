import UIKit

//Proporties
struct Person{
    var clothes: String
    var shoes: String
    
    func describe() {
        print("I like \(clothes) with \(shoes)")
    }
}

let taylor = Person(clothes: "jeans", shoes: "sneakers")

taylor.describe()



//Property observers( did set and will set)

/*willset, koda yeni özellik değerinin ne olacağını içeren new value adlı özel bir değer
sağlar ve didset'te önceki değeri temsil etmek için old value verilir.

*/

struct Person2 {
    var clothes: String {
        willSet {
            updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
        }
        didSet {
            updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
        }
    }
}

func updateUI(msg: String) {
    print(msg)
}

var taylor = Person2(clothes: "T-shirts")
taylor.clothes = "short skirts"


/*Computed properties*/


/*Hesaplanmış bir özellik oluşturmak için, özelliğinizin sonuna açık bir parantez koyun ve ardından uygun zamanda bir eylemin gerçekleşmesini sağlamak için getveya kullanın set*/


struct Person {
    
    var age: Int
    
    var ageInDogYears: Int {
        get {
            return age * 7
        }
    }
}

var fan = Person(age: 25)
print(fan.ageInDogYears)



//Static properties and methods

/* swift dilinde static özelliği bir proportynin veya methodun tüm tip (struct,class,enum) için ortak olmasını sağlar. bu belleği daha verimli kullanmamızı ve mantık olarak tüm örneklerde(instance) ortak olan verileri bir araya toplamk için kullanışlıdırç */

struct TaylorFan {
    static let favoriteSong = "Look What You Made Me Do"
    
    var name: String
    var age: Int
}

let fan = TaylorFan(name: "Ada", age: 25)
print(TaylorFan.favoriteSong)

/*name ve age: Bu değişkenler her bir TaylorFan örneğine (instance) özgüdür. Yani farklı kişilerin farklı adları ve yaşları olabilir.
 
 favoriteSong: Bu ise struct’a ait bir değişkendir. Tüm TaylorFan'ler için ortaktır. Bunu bir örnek üzerinden değil, doğrudan TaylorFan.favoriteSong şeklinde çağırıyoruz.*/


/*⚠️ Önemli Kural:
 Static bir method veya property, instance’a ait (non-static) özelliklere doğrudan erişemez.*/

struct Example {
    var name = "Ali"
    
    static func sayHi(){
        //print(name) //Hata verir, çünkü 'name' static değil
        print("Hi!")
    }
}



print("------------------------------------------------")

//Access Kontrol

/*Public: Bu, herkesin mülkü okuyup yazabileceği anlamına gelir.
 Internal: Bu, yalnızca Swift kodunuzun özelliği okuyup yazabileceği anlamına gelir. Kodunuzu başkalarının kullanabileceği bir çerçeve olarak gönderirseniz, özelliği okuyamazlar.
 Fıle Private: Bu, yalnızca türle aynı dosyadaki Swift kodunun özelliği okuyup yazabileceği anlamına gelir.
 Prıvate: Bu en kısıtlayıcı seçenektir ve özelliğin yalnızca türe ait olan yöntemler veya uzantıları içinde kullanılabilir olduğu anlamına gelir.*/
class TaylorFan {
    private var name: String?
}




print("------------------------------------------------")




//Polymorphism and typecasting
class Album {
    var name: String
    
    init (name: String) {
        self.name = name
    }
    
    func getPerformance() -> String {
           return "The album \(name) sold lots"
       }
}

class StudioAlbum: Album {
    var studio: String
    
    init (name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
        
    }
    override func getPerformance() -> String {
            return "The studio album \(name) sold lots"
        }
}


class LiveAlbum: Album {
    var location: String
    
    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }
    override func getPerformance() -> String {
            return "The live album \(name) sold lots"
        }
}

var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")
var iTunesLive = LiveAlbum(name: "iTunes Live from SoHo", location: "New York")

var allAlbums: [Album] = [taylorSwift, fearless, iTunesLive]

for album in allAlbums {
    print(album.getPerformance())
}




print("------------------------------------------------")



// Tip Dönüştürme (Type Casting)
/*Bu, "Dönüşüm işe yarayabilir ama emin değilim" anlamına gelir. Geriye nil dönebilir.
 as? dönüşüm başarılı olursa, o sınıf türünde bir nesne döner.

 if let yapısı ile güvenli şekilde unwrap edilir.

*/

for album in alllAlbums {
    if let studioAlbum = album as? StudioAlbum {
        print(studioAlbum.studio)
    } else if let liveAlbum = album as? LiveAlbum {
        print(liveAlbum.location)
    }
}

/*"Ben bu dönüşümün kesinlikle doğru olduğunu biliyorum" anlamına gelir. Eğer dönüşüm başarısız olursa program çöker.*/

for album in allAlbums {
    let studioAlbum = album as! StudioAlbum
    print(studioAlbum.studio)
}
/*"Ben bu dönüşümün kesinlikle doğru olduğunu biliyorum" anlamına gelir. Eğer dönüşüm başarısız olursa program çöker.💡 Bu ancak dizideki tüm nesnelerin StudioAlbum olduğundan %100 eminseniz güvenlidir.
*/




//Dizi Seviyesinde Dönüştürme
//Zorunlu:
for album in allAlbums as! [StudioAlbum] {
    print(album.studio)
}
//İsteğe Bağlı:

for album in allAlbums as? [LiveAlbum] ?? [] {
    print(album.location)
}


//Yaygın türlerin başlatıcılarla dönüştürülmesi
let number = 5
let text = String(number)  // ✅ Geçerli dönüşüm
print(text)
let text = number as! String  // ❌ Hatalı dönüşüm (farklı türler)



/*Tip Dönüşümü ≠ Tip Değiştirme*/


/*let number = 5
 let text = String(number)  // ✅ Geçerli dönüşüm*/

/*let text = number as! String  // ❌ Hatalı dönüşüm (farklı türler)
*/




print("------------------------------------------------")


//Closure


/*Fonksiyonlara benzer. Değişken gibi sakalanabilen içinde kod bulunan kod bloklarıdır.*/

let sayHello = {
    print("Hello!")
}

sayHello()  // Çıktı: Hello!


/*Closure’lar oluşturuldukları sıradaki ortamı (değişkenleri) da kullanabilirler. Buna “environment capturing” denir.*/

let message = "Button pressed"

let action = {
    print(message)
}

action()  // Çıktı: Button pressed
//Burada message closure dışında tanımlı ama closure içinde kullanılabiliyor. Swift bunu otomatik olarak “yakalıyor”.



//Closure Kullanımı – SwiftUI Örneği

Button( "Press Me", action: {
    print("Button Pressed!")
})
/*İkinci parametre action, bir closure’dır.
 
 Bu closure, butona basıldığında çalışır.

 Closure hemen çalıştırılmaz, sistem onu saklar ve buton basılınca çağırır.*/



/*Trailing Closure (Son Closure) Sözdizimi
Swift, closure’lar kodda sık kullanıldığı için daha temiz bir yazım şekli sunar: trailing closure syntax.*/

Button("Press Me") {
    print("Button was pressed")
}


//Birden Fazla Closure (Özellikle SwiftUI’de)
Button {
    print("The button was pressed")
} label: {
    Image("press-me")
}

