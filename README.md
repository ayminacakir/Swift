# Swift
1.GÜN
1.Variables
var favoriteShow = "Orange is the New Black"
favoriteShow = "The Good Place"
favoriteShow = "Doctor Who"

//Değişkenler, programımızda geçici bilgiler depolamamızı sağlar,değiştirilebilir.

2.Strings and integers
Why is Swift a type-safe language?
var meaningOfLife = 42
meaningOfLife = "Forty two" (HATA int e str değer atadı)


3.Multi-line strings
Optional: Why does Swift need multi-line strings?
Üçlü tırnak işaretleri kullanırsanız, dizelerinizi istediğiniz kadar satıra yazabilirsiniz; bu da metnin kodunuzda kolayca okunabilmesi anlamına gelir

var burns = """
The best laid schemes
O’ mice and men
Gang aft agley
"""

4.Doubles and Booleans
var pi = 3.141
var awesome = true
 Why does Swift need both Doubles and Integers?
var myInt = 1
var myDouble = 1.0
Swift, bir double'a tam sayı eklemenin güvenli olmadığını düşünür izin vermez.

5.String interpolation
Optional: Why does Swift have string interpolation?
var city = "Cardiff"
var message = "Welcome to \(city)!" 
Swift, her türlü veriyi dize enterpolasyonuna yerleştirme yeteneğine sahiptir

6.Constants
Optional: Swift'te değişkenlerin yanı sıra sabitler de neden var?
Bunun nedeni sorunlardan kaçınmaktır.Oluşturduğunuz herhangi bir değişkeni istediğiniz zaman ve istediğiniz sıklıkta değiştirebilirsiniz, bu nedenle biraz kontrol kaybedersiniz


7.Type annotations

var percentage: Double = 99
var name: String

Optional: Why does Swift have type annotations?
1.Swift hangi tipin kullanılması gerektiğini çözemiyor.
2.Swift'in varsayılan türünden farklı bir tür kullanmasını istiyorsunuz.
3.Şimdilik bir değer atamak istemiyorsunuz.



