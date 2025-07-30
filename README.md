# review day2
## Day One
### Functions


Fonksiyonlar belirili işlevsellik parçalarını gerçekleştiren 
kullanılabilir kod parçalarıdır.


    _ swiftte herhangi bir external(harici) adı olmaması gerektiğini belirtir


    -> bu parametre listesinin sonuna eklendiğinde ne olursa olsun ir değer döndürceğini söyler bize. return kullan 
 
 


### Optinals

Sonucunda bir değer döndürelebileğini yada döndürmeyebeileciğini söylmek 
istediğimde kullanıyorum. dönen veri tipinin yanına ? koy

Yani fonksiyonda ya bir String döner ya da hiç bir şey dönme o da nil 
olarak adlandırlır. sonucunda nil döner.


Şöyle bir problem var:

    var status: String 
    status = getHaterStatus(weather: "rainy")!

Bu örnekte bir optinal değeri string türündeki status değere atmaya 
çalışıyoruz ama optinal olduğu için ya değer döndürecek ya 
döndüremeyeceği için bu udurum sıkıntılı. Böyle durumlarda unwrap(açmam) 
etmem gerek.

2 yöntem var:

1. if let kullan ve  2. guard let kullan 
    
    func getHaterStatus(weather: String) -> String? {
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

    if let haterStatus = getHaterStatus(weather: "rainy") {
        takeHaterAction(status: haterStatus)
    }


### İsteğe bağlı öğeleri zorla açma

swift ünlem kullanarak, bir isteğe bağlı değişkenin kesinlikle bir dğeri 
olduğunu biliyorsanız ünlem işaretinin rakasına yerleştireke onu zorla 
açabilirisiniz.


    print("It was released in \(year!)")

Ünlem işaretine dikkat edin: "Bunun bir değer içerdiğinden eminim, bu 
yüzden şimdi zorla açmaya çalış." anlamına geliyor.

### Optinal Chaining

Swift'te kodunuzu daha az karmaşık hale getirmenize yardımcı olacak iki 
teknik bulunur. Bunlardan ilki, isteğe bağlı zincirlemedir; bu, yalnızca 
isteğe bağlı değişkeninizin bir değeri varsa kod çalıştırmanıza olanak 
tanır.

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

    let album = albumReleased(year: 2006)?.uppercased()
    print("The album is \(album)")


### The nil coalescing operator

    let album = albumReleased(year: 2006) ?? "unknown"
    print("The album is \(album)")


Eğer albumreleased bir değer döndürürse o zmaan değişkene koy ama nil 
döndürülürse bunun yerine unknown kullan

### Enum
Swift'in en güçlü özelliklerinden biri, numaralandırmalara sizin 
tanımladığınız değerler atanabilmesidir.




### Struct
Bir yapı içine bir fonksiyon yazdığınızda, ona metot denir.
Bir yapıyı diğerine atarsanız, Swift bunu perde arkasında kopyalar, 
böylece orijinalinin tam ve bağımsız bir kopyası olur. Aslında bu tam 
olarak doğru değil: Swift, "yazarken kopyalama" adı verilen bir teknik 
kullanır; bu da verilerinizi yalnızca siz değiştirmeye çalıştığınızda 
kopyaladığı anlamına gelir.


### Classes
 Swift, sınıflarda otomatik init(...) oluşturmaz. sen maanuel bir şekilde 
 init oluşturmak zorundasın.
 
 
 Override üst sınıftan gelen metodu yeniden tanımlamak için kullanılır.
 
 
 super.init ise kısaca üst sınıfa parametre geçmektir.
 Eğer alt sınıfın kendine ait yeni bir özelliği varsa o özelliğe değer 
 verdikten sonra super.init(...) ile üst sınıfın initine değer geçirmen 
 gerekir.
 

        SwiftUI → struct ile arayüz yapar
        UIKit → class ile arayüz yapar

