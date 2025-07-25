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

//Static kullanımı

struct Student {
    static var classSize = 0
    var name: String
    
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

let ed = Student(name: "Ed")
let taylor = Student(name: "Taylor")
print(Student.classSize)



/*1. struct Student
 Bu bir struct (yapı). Yani bir veri kalıbı.
 Biz bu yapıdan birçok öğrenci (Student) oluşturacağız. Her öğrencinin adı olacak.

 2. var name: String
 Her öğrenci için bir isim (name) olacak.
 Bu özellik, her öğrenci nesnesine (instance) özeldir. Yani ed ve taylor'un isimleri farklı olabilir.

 3. static var classSize = 0
 ❗️İşte burası önemli:
 Bu, static olduğu için classSize tüm öğrenciler arasında ortak bir değişkendir.
 Yani her öğrencinin kendi classSize'ı yok.
 Tüm öğrenciler aynı classSize'ı paylaşır.

 🔁 Ne işe yarar?
 Kaç tane Student oluşturduğunu saymak için kullanıyoruz.

 İlk öğrenci yaratıldığında: 1

 İkinci öğrenci yaratıldığında: 2

 Ve böyle devam eder...

 4. init(name: String)
 Bu bir initializer (başlatıcı fonksiyon).
 Sen Student(name: "Ed") yazınca, bu init çalışır.

 İçinde şunu yapıyoruz:
 self.name = name
 Student.classSize += 1
 
 ➤ self.name = name
 Soldaki name: struct’ın içindeki özelliktir (var name)

 Sağdaki name: parametre olarak gelen değerdir (init(name: String)'ten gelen)

 self, struct'ın kendi içindeki değişkenine işaret eder.

 🧠 Yani:

 “Bana parametre olarak gelen ismi, bu öğrencinin adı olarak ata.”

 ➤ Student.classSize += 1
 Her yeni öğrenci oluştuğunda, classSize bir artırılıyor.

 🧠 Yani:

 “Sınıftaki toplam öğrenci sayısını 1 artır.”*/



//Access Control
/*Access control, yani erişim kontrolü, bir değişkene veya metoda kimlerin ulaşabileceğini belirlememizi sağlar.*/


struct Person2 {
    private var id: String

    init(id: String) {
        self.id = id
    }
    
    func identify() -> String {
            return "My social security number is \(id)"
    }
}

let ed2 = Person2(id: "12345")
print(ed2.identify())// Bu çalışır çünkü id varsayılan olarak internal'dır


/*Burada id açık ve erişilebilir. Bu tehlikeli olabilir çünkü bu id kişisel bir bilgi (örneğin kimlik numarası).*/
