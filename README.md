📌 Swift'te Closure (Kapanış) Nedir?
Closure, Swift’te bir değişkene atanabilen, parametre alabilen ve değer 
döndürebilen adı olmayan fonksiyonlardır. Fonksiyonlar gibi 
davranabilirler, ancak yazım şekilleri farklıdır.

Closure’lar genellikle şu amaçlarla kullanılır:

Belirli bir işlevi bir değişkende saklamak

Bu işlevi başka bir fonksiyona parametre olarak vermek

Bu işlevi daha sonra çalıştırmak üzere saklamak

Bu özellikleri sayesinde, "Şu işi senin yapmanı istiyorum, ama şimdi 
değil." gibi bir senaryoyu uygulamak için oldukça uygundurlar.

🧩 Closure Yazım Şekli

let payment = { (user: String, amount: Int) in
    // kod bloğu
}
in anahtar kelimesi, parametrelerin bittiği ve kod bloğunun başladığı yeri belirtir.

Closure'lar parametrelerini parantez içinde yazarlar. Bu sayede, Swift dilinde tuple yapılarıyla karışıklık önlenmiş olur.

Örneğin:

// Bu bir tuple gibi görünür, closure değildir:
let payment = (user: String, amount: Int)

🔁 Closure’ları Fonksiyonlara Parametre Olarak Verme
Closure’lar, fonksiyonlara parametre olarak da verilebilir. Bu, özellikle
fonksiyonel programlama tarzında yaygındır.

func performAction(action: () -> Void) {
    action()
}

Kullanımı:

performAction {
    print("Closure çalıştı.")
}

🔄 Dönüş Değeri Olan Closure Parametreleri
Closure’lar sadece işlem yapmakla kalmaz, değer de döndürebilirler:


func makePayment(using method: (String, Int) -> Bool) {
    let success = method("Ahmet", 100)
    print("Ödeme sonucu: \(success)")
}

makePayment { (user, amount) in
    return amount < 500
}
💡 $0 Söz Dizimi
Swift’te closure’lar kısa yazılabilir. map, filter, sorted, reduce gibi 
sık kullanılan fonksiyonlarla beraber $0, $1, $2 gibi otomatik 
isimlendirilmiş parametreler kullanılabilir.

Uygun Kullanım:

Closure kısa ve okunabilir olduğunda

Tek parametreli closure'larda

let numbers = [1, 2, 3, 4]
let doubled = numbers.map { $0 * 2 } // [2, 4, 6, 8]

Kullanılmaması Gereken Durumlar:

Closure içinde çok sayıda parametre varsa

Parametrelere birden fazla kez erişiliyorsa (okunabilirliği azaltır)

