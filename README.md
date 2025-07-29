 Optionals Nedir?
Swift’te optionals (isteğe bağlı tipler), bir değişkenin değer içermeyebileceğini (nil olabileceğini) belirtmemizi sağlar. Bu, eksik veya bilinmeyen verileri güvenli bir şekilde temsil etmenin güçlü bir yoludur.

✅ Optionals Özellikleri ve Kullanımı
🔹 Eksik Değerleri Temsil Etme
Optionals, bir değişkenin değer içerebileceğini veya içermeyebileceğini (nil) açıkça belirtir. Bu, kodun daha güvenli ve anlaşılır olmasını sağlar.

🔹 Unwrapping Zorunluluğu
Swift, bir optional değişkeni kullanmadan önce onun değerini “unwrap” etmemizi ister. Bunun için genellikle if let veya guard let kullanılır:


if let age = user.age {
    print("User is \(age) years old")
}
🔹 Force Unwrap (!)
İsterseniz optional'ı doğrudan ! ile açabilirsiniz:

print(user.age!)
Ancak dikkat! Eğer age nil ise uygulama çöker.

🔹 Implicitly Unwrapped Optionals (Int!)
Başlangıçta değer atayıp sonrasında ! ile kullanacağınızı garanti ettiğiniz değişkenler için kullanılır. Ancak bu da yine çökme riski taşır çünkü nil kontrolü yapılmaz.

🔹 Nil Coalescing (??)
Nil olan durumda kullanılacak varsayılan bir değer atamak için ?? kullanılır:


let age = user.age ?? 18
🔹 Optional Chaining
Optional bir değeri zincirleme işlemlerle kullanmak için ?. operatörü kullanılır. Eğer nil ise işlem sessizce atlanır, çökme olmaz:

let city = user.address?.city
🔹 try? ve try!
try? ile çalışan fonksiyonlar, hata alırsa nil döner.

try! hata alırsa uygulamayı çökertir.


let result = try? fetchData() // result is optional
🔹 Failable Initializers (init?)
Eğer bir struct veya class, hatalı giriş durumunda oluşturulamıyorsa init?() şeklinde failable initializer tanımlanabilir:


init?(username: String) {
    if username.isEmpty { return nil }
    self.username = username
}
🔹 Typecasting (Tip Dönüştürme)
Bir nesneyi başka bir türe dönüştürmek istediğimizde as? kullanılarak güvenli şekilde optional dönüşüm yapılabilir:

if let dog = pet as? Dog {
    dog.bark()
}

