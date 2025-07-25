
## Initializers
 
 Swift’te initializer, bir struct (yapı) türünden yeni bir nesne 
 oluştururken çalışan özel bir fonksiyondur.

 Bu init(), parametre almaz ve her yeni User oluşturulduğunda otomatik 
 çalışır.



## SELF KULLANIMI

### Kod Bloğu:
        var name : String 
        init(name: String) {
            print("\(name) was born!")
            self.name = name
        }
    }

Soldaki self.name, struct’ın içindeki özelliktir (yani var name: String).
Sağdaki name, initializer’a gelen parametredir.

## Neden self kullanılıyor?
 Eğer hem parametrenin adı hem de property’nin adı aynıysa, Swift hangisinin ne olduğunu ayırt edemez. Bu karışıklığı çözmek için self kullanılır.


## self Nedir?
 self, Swift’te "şu anda kullanılan instance" (yani nesne) anlamına gelir. Bir struct veya class içinde, o anki örneği temsil eder.

 Genelde self Kullanmanıza Gerek Yok
 Swift içinde self kullanmak zorunlu değildir ta ki aşağıdaki iki durumdan biri gerçekleşene kadar:
  1. Initializer içinde parametre adları ile property adları aynıysa


## Temel Tanım: lazy Nedir?
/*Swift’te lazy, bir özelliğin (property) ilk kez ihtiyaç duyulana kadar oluşturulmamasını (initialize edilmemesini) sağlar.



## STATİC KULLANIMI

Swift'te normalde oluşturduğun özellikler ve metotlar, her bir struct (veya class) örneğine (instance) aittir.
Ancak bazen tüm örnekler (instances) tarafından paylaşılan bir değişkene veya metoda ihtiyacımız olur. İşte bu durumda static kullanırız.


## Static Property ve Method’lar Neden Kullanılır?
Normalde bir struct (ya da class) kullanırken, onun bir örneğini (instance) oluşturman gerekir. Ancak bazı durumlarda şu örnek cümle gibi tek bir şeye ulaşmak istersin:

“Her yerden erişebileceğim sabit bir değer tutmak istiyorum.”

İşte burada devreye static girer.

## Örnek: 
       Uygulamanın App Store Linki
       Aşağıdaki örnekte appURL sabit bir değerdir. Uygulamanın App Store’daki adresi:

       struct Unwrap {
       static let appURL = "https://itunes.apple.com/app/id1440611372"
        }
        Bu sayede şu şekilde kolayca çağırabilirsin:
        print(Unwrap.appURL)

Bu çok avantajlı çünkü:
Her yerden çağırabilirsin.
Yeni bir Unwrap nesnesi oluşturmana gerek yoktur.
appURL gibi sabit şeyleri saklamak için idealdir.


## Access Control Nedir?
Access control, yani erişim kontrolü, bir değişkene veya metoda kimlerin ulaşabileceğini belirlememizi sağlar.

Böylece:

Kodun belirli kısımları dışarıdan okunamaz veya değiştirilemez.

Güvenli, kontrollü ve temiz kod yazılmış olur.

 ### Ne Zaman Kullanılır?
private: Gizli tutulması gereken veriler için (örneğin şifre, kimlik no)

public: Bir framework veya kütüphane geliştiriyorsan, dışarıya açık kullanımlar için

internal: Projendeki normal değişkenler, fonksiyonlar

### Kısaca Özet
private: Dışarıdan erişimi kapatır.

identify() gibi bir public fonksiyon, private değişkeni kontrollü şekilde dışarıya aktarabilir.

Böylece veri güvenliği sağlanır ve kod daha düzgün olur.
