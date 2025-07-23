📘 5. Gün - Swift Notları

✅ return Zorunluluğu

Swift'te eğer bir fonksiyonun gövdesi yalnızca bir ifade içeriyorsa, return yazmak zorunda 
değilsin. Ancak değişken tanımı, döngü başlatma gibi birden fazla işlem varsa return yazılması 
zorunludur.

🔁 Swift’te Bir Fonksiyondan Birden Fazla Değer Döndürmek

func getUser() -> (first: String, last: String) {
    (first: "Taylor", last: "Swift")
}

let user = getUser()
print(user.first) // Taylor
print(user.last)  // Swift

🏷️ Dış ve İç Parametre İsimleri
Swift’te dış ve iç parametre isimleri farklı olabilir:

func setAge(for person: String, to value: Int) {
    print("\(person) is now \(value)")
}

setAge(for: "Paul", to: 40)

for ve to: Fonksiyon çağrılırken dışarıdan kullanılır.
person ve value: Fonksiyon içinde kullanılır.

📌 Variadic Functions (Değişken Sayıda Parametre)
Bir fonksiyona aynı türden birden fazla parametre göndermek için kullanılır. ... ile tanımlanır.

func example(age: Int, _ names: String...) {
    for name in names {
        print("\(name) is \(age) years old.")
    }
}

example(age: 25, "Alice", "Bob", "Charlie")
🔹 Not: Variadic parametre her zaman son sırada olmalıdır ve yalnızca bir tane olabilir.

🔄 inout Ne İşe Yarar?
inout, fonksiyona referansla (by reference) veri gönderilmesini sağlar. Böylece fonksiyon içinde
yapılan değişiklik, orijinal değişkende de uygulanır.

🧪 Örnek:

func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)
print(myNum) // 20
📝 Dikkat Edilmesi Gerekenler:
✅ var ile tanımlamalısın: inout ile çalışan parametreler değiştirileceği için let ile değil var ile tanımlanmalıdır.

✅ & sembolü kullanılmalı: Fonksiyona parametre gönderirken &myNum diyerek “bu değişkenin orijinalini gönderiyorum” anlamına gelir.

📌 Neden inout?
Fonksiyonun return etmesini beklemeden, bir değişkeni doğrudan değiştirmek için kullanılır.

Performans açısından bazı durumlarda daha verimlidir.

C/C++'taki pointer kullanımına benzer.

