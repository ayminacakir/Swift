
✅ #2.Gün

1️⃣ ## Arrays (Diziler)

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]


2️⃣ ##SETS

let colors = Set(["red","green","blue"])

➡️ Swift'te kümeler dizilerden neden farklıdır? 

Kümeler sırasızdır ve tekrarlar içeremezler; diziler ise sıralarını korur ve 
tekrarlar içerebilirler

3️⃣ ##TUPLES

➡️ Swift'te tuple'lar dizilerden nasıl farklıdır?
Tuple'lar değiştirilemeyen sabit bir diziyi tutarken, değişken dizilerine süresiz 
olarak öğeler eklenebilir.

var website = (name: "Apple", url: "www.apple.com") =>TUPLE tarih eklemek istesem
ekleyemem.

var website = ["Apple", "www.apple.com"] => Dizi

➡️ ###NOT!!
Swift'te dizi, sets veya tuple ne zaman kullanılmalıdır?
Diziler sırayı korur ve tekrarlara sahip olabilir, kümeler(sets) sırasızdır ve
tekrarlara sahip olamaz , tuple'lar ise içlerinde sabit tiplerde sabit sayıda 
değer barındırır.

4️⃣ ##Dictioneries
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]
heights["Taylor Swift"]

let favoriteIceCream = [
    "Paul":"Chocalate",
    "Sophie":"Vanilla"
]

favoriteIceCream["Paul"]
favoriteIceCream["Charlotte"]
let users = ["Taylor", "Taylor Swift"]
let taylor = users["Taylor", default: "Anonymous"]
 

5️⃣ ##Creating empty collections
var teams = [String:String] ()
teams["Paul"] = "Red"

var words = Set<String>()
var numbers = Set<Int>()

var scores = Dictionary<String, Int>()
var results = Array<Int>()


6️⃣ ##enums 
Enum'lar, sabit değerleri güvenli ve anlamlı şekilde temsil etmemizi sağlar. 
Swift'te çok güçlü ve çok yönlüdürler

import UIKit

let result = "failure"
let result2 = "failed"
let result3 = "fail"

enum Result {
    case success
    case failure
}

let result4 = Result.failure


enum Activity {
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")

➡️ Raw value’lar, enum’ların hem kod içinde güvenli kullanılmasını sağlar hem de dış 
sistemlerle veri alışverişinde kolaylık sunar.
