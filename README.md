## Proporties

Yapılar ve sınıfların sahip olduğu kendi özelliklerine değişkenlerine proporty denir.

## Property observers( did set and will set)

Willset, koda yeni özellik değerinin ne olacağını içeren new value adlı 
özel bir değer sağlar ve didset'te önceki değeri temsil etmek için old 
value verilir.

## Computed properties

Hesaplanmış bir özellik oluşturmak için, özelliğinizin sonuna açık bir 
parantez koyun ve ardından uygun zamanda bir eylemin gerçekleşmesini 
sağlamak için get veya set kullanın.

## Static properties and methods

swift dilinde static özelliği bir proportynin veya methodun tüm tip 
(struct,class,enum) için ortak olmasını sağlar. bu belleği daha verimli 
kullanmamızı ve mantık olarak tüm örneklerde(instance) ortak olan 
verileri bir araya toplamak için kullanışlıdır 
            
            struct TaylorFan {
            static let favoriteSong = "Look What You Made Me Do"
    
            var name: String
            var age: Int
            }

            let fan = TaylorFan(name: "Ada", age: 25)
            print(TaylorFan.favoriteSong)

name ve age: Bu değişkenler her bir TaylorFan örneğine (instance) özgüdür. Yani farklı kişilerin farklı adları ve yaşları olabilir.
 
 favoriteSong: Bu ise struct’a ait bir değişkendir. Tüm TaylorFan'ler için ortaktır. Bunu bir örnek üzerinden değil, doğrudan TaylorFan.favoriteSong şeklinde çağırıyoruz.


⚠️ Önemli Kural:
 Static bir method veya property, instance’a ait (non-static) özelliklere doğrudan erişemez.

        struct Example {
        var name = "Ali"
    
        static func sayHi(){
        //print(name) //Hata verir, çünkü 'name' static değil
        print("Hi!")
        }
        }


## Access Control 

Public: Bu, herkesin mülkü okuyup yazabileceği anlamına gelir.

Internal: Bu, yalnızca Swift kodunuzun özelliği okuyup yazabileceği anlamına gelir. Kodunuzu başkalarının kullanabileceği bir çerçeve olarak gönderirseniz, özelliği okuyamazlar.

Fıle Private: Bu, yalnızca türle aynı dosyadaki Swift kodunun özelliği okuyup yazabileceği anlamına gelir.

Prıvate: Bu en kısıtlayıcı seçenektir ve özelliğin yalnızca türe ait olan yöntemler veya uzantıları içinde kullanılabilir olduğu anlamına gelir.


## Polymorphism

Sınıflar biribilerini miras alabilir


## Tip Dönüştürme (Type Casting)

Bu, "Dönüşüm işe yarayabilir ama emin değilim" anlamına gelir. Geriye nil 
dönebilir.
 
 as? dönüşüm başarılı olursa, o sınıf türünde bir nesne döner.

 if let yapısı ile güvenli şekilde unwrap edilir.



## Closure

Fonksiyonlara benzer. Değişken gibi sakalanabilen içinde kod bulunan kod
bloklarıdır.

Closure’lar oluşturuldukları sıradaki ortamı (değişkenleri) da 
kullanabilirler. Buna “environment capturing” denir.


Burada message closure dışında tanımlı ama closure içinde 
kullanılabiliyor. Swift bunu otomatik olarak “yakalıyor”.

## Trailing Closure (Son Closure) Sözdizimi
Swift, closure’lar kodda sık kullanıldığı için daha temiz bir yazım şekli sunar: trailing closure syntax


        Button {
            print("The button was pressed")
        } label: {
            Image("press-me")
        }
