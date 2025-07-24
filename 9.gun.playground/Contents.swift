import UIKit

//Initializers
/*Swift’te initializer, bir struct (yapı) türünden yeni bir nesne oluştururken çalışan özel bir fonksiyondur.*/

struct User {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user = User()
user.username = "twostraws"


/*Bu init(), parametre almaz ve her yeni User oluşturulduğunda otomatik çalışır.
 
 İçeride username değişkenine "Anonymous" değerini atıyoruz.

 Ayrıca "Creating a new user!" mesajını da yazdırıyoruz.*/

print("--------------------------------------------------")

struct Employee {
    var name: String
    var yearsActive = 0
    
    init() {
            self.name = "Anonymous"
            print("Creating an anonymous employee…")
        }
}


/*2. Otomatik Oluşan Initializer
 Swift, otomatik olarak şunu sağlar:

 Employee(name: String, yearsActive: Int)*/


print("--------------------------------------------------")

//SELF KULLANIMI
struct Person {
    var name : String  //property
    
    init(name: String) {  //initializer,yani, bir Person nesnesi (instance) oluşturulurken ne                       yapılacağını belirleyen özel bir fonksiyon.
        print("\(name) was born!")
        self.name = name  //Soldaki self.name, struct’ın içindeki özelliktir (yani var name: String).   Sağdaki name, initializer’a gelen parametredir.
        //“Struct’taki name özelliğine, dışarıdan gelen name parametresini ata.”
    }
}

/*Neden self kullanılıyor?
 Eğer hem parametrenin adı hem de property’nin adı aynıysa, Swift hangisinin ne olduğunu ayırt edemez. Bu karışıklığı çözmek için self kullanılır.
*/


/*self Nedir?
 self, Swift’te "şu anda kullanılan instance" (yani nesne) anlamına gelir. Bir struct veya class içinde, o anki örneği temsil eder.

 🟩 Genelde self Kullanmanıza Gerek Yok
 Swift içinde self kullanmak zorunlu değildir ta ki aşağıdaki iki durumdan biri gerçekleşene kadar:

 🔹 1. Initializer içinde parametre adları ile property adları aynıysa
 Örnek:

 struct Student {
     var name: String
     var bestFriend: String

     init(name: String, bestFriend: String) {
         print("Enrolling \(name) in class…")
         self.name = name
         self.bestFriend = bestFriend
     }
 }*/



print("--------------------------------------------------")
//Temel Tanım: lazy Nedir?
/*Swift’te lazy, bir özelliğin (property) ilk kez ihtiyaç duyulana kadar oluşturulmamasını (initialize edilmemesini) sağlar.*/

struct FamilyTree {
    init() {
        print("Creating family tree…")
    }
}

struct Person3{
    var name : String
    lazy var familyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
    
}
var ed = Person(name: "Ed")
ed.familyTree

