### Swift - 1. Gün Notları

1️⃣ Variable  
➡️ Değişkenler, programımızda geçici bilgiler depolamamızı sağlar, değiştirilebilirler.

2️⃣ Strings and Integers  
Why is Swift a type-safe language?  
✅ Swift type-safe bir dildir. Yani bir değişkenin tipi belirlendikten sonra, o tipe uygun olmayan değer atanamaz.

3️⃣ Multi-line Strings  
Why does Swift need multi-line strings?  
Üçlü tırnak `"""` kullanarak, dizeleri birden fazla satıra yazabiliriz. Bu, metnin daha okunabilir olmasını sağlar.

4️⃣ Doubles and Booleans  
Why does Swift need both Doubles and Integers?  
➡️ Swift, bir Double'a doğrudan Int eklenmesini güvenli bulmaz. Tip uyumsuzluklarına karşı koruma sağlar.

5️⃣ String Interpolation  
Why does Swift have string interpolation?  
➡️ Swift, değişkenleri veya diğer verileri doğrudan string içine yerleştirme imkanı verir. Bu da kodun okunabilirliğini artırır.

6️⃣ Constants  
Swift'te değişkenlerin yanı sıra sabitler (constants) neden var?  
➡️ Sabitler (`let`) sayesinde verinin istemeden değiştirilmesi önlenir. Böylece hataların önüne geçilmiş olur.

7️⃣ Type Annotations  
```swift
var percentage: Double = 99
var name: String


Why does Swift have type annotations?  
➡️Swift hangi tipin kullanılması gerektiğini çözemeyebilir.
➡️Swift'in varsayılan türünden farklı bir tür kullanmak isteyebilirsiniz.
➡️Henüz bir değer atamak istemiyorsanız ama tipini belirtmeniz gerekiyordur.
