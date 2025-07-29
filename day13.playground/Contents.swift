import UIKit

/*var name = "Tim McGraw"
name = "Romeo"*/

//let name = "Tylor"
//name = "Romeo"

/*
//Types of Data

var name: String
name = "Tim McGraw"

var age: Int
age = 25


var latitude: Double
latitude = 32.651123232

var longitude: Float
longitude = -161.43332323

/*Bunun nedeni, yine Doubleiki kat daha fazla doğruluğa sahip olması Floatve böylece sayınızı sığdırmak için kısaltmasına gerek olmamasıdır.*/


//Boolean
var stayOutTooLate: Bool
stayOutTooLate = true

var nothingInBrain: Bool
nothingInBrain = false

var missABeat: Bool
missABeat = false


var name2: String
name = "Tim McGraw"

var age2 = 25
var longitude2 = -86.783333

var name3: String = "Tim McGraw"

*/

/*
//Operators

var a = 10
a = a + 1
a = a - 1
a = a * a


var b = 10
b += 10
b -= 10


var a2 = 1.1
var b2 = 2.2
var c = a2 + b2

var name1 = "Tim McGraw"
var name2 = "Romeo"
var both = name1 + " and " + name2



*/
/*
//Operators

var a = 1.1
var b = 2.2
var c = a + b

c > 3
c >= 3
c > 4
c < 4

9 % 3

var name3 = "Tim McGraw"
name3 == "Tim McGraw"


var name4 = "Tim McGraw"
name4 == "Tim McGraw"
name4 == "TIM MCGRAW"


var stayOutTooLate = true
stayOutTooLate
!stayOutTooLate


var name5 = "Tim McGraw"
name5 == "Tim McGraw"
name5 != "Tim McGraw"


//String Interpolation
*/
/*
var name = "Tim McGraw"
"your name is \(name)"

var name2 = "Tim McGraw"
"your name is " + name2

var name3 = "Tim McGraw"
var age = 25
var latitude = 32.651123232
"your name is \(name3), your age is \(age), and your latitude is \(latitude)"
 */
/*
//Arrays
 
var evenNumbers = [2,4,6,8]
var songs: [Any] = ["shake it off","you belong with me","i want it that way",3]

var songs2: [String]
songs2[0] = "shake it off"

/*songsdeğişken bir dizi dizeyi tutacak" der, ancak bu diziyi gerçekten oluşturmaz . RAM ayırmaz veya bir Swift dizisi oluşturmak için herhangi bir işlem yapmaz. Sadece bir noktada bir dizi olacağını ve dizeleri tutacağını söyler.*/

var songs3: [String] = []
songs3[0] = "shake it off"

var songs4 = ["Shake it Off", "You Belong with Me", "Love Story"]
var songs5 = ["Today was a Fairytale", "Welcome to New York", "Fifteen"]
var both = songs4 + songs5
both += ["Everything has Changed"]



//Conditional statements
var action: String
var person = "hater"

if person == "hater" {
    action = "hate"
} else if person == "player" {
    action = "play"
} else {
    action = "cruise"
}


var action2: String
var stayOutTooLate = true
var nothingInBrain = true

if stayOutTooLate && nothingInBrain {
    action2 = "cruise"
}


if !stayOutTooLate && !nothingInBrain {
    action = "cruise"
}
*/
// Dictionaries

var person = ["Taylor", "Alison", "Swift", "December", "taylorswift.com"]

var person2 = ["first": "Taylor", "middle": "Alison", "last": "Swift", "month": "December", "website": "taylorswift.com"]
person2["middle"]
person2["month"]



//Loops
print("1 x 10 is \(1 * 10)")
print("2 x 10 is \(2 * 10)")
print("3 x 10 is \(3 * 10)")
print("4 x 10 is \(4 * 10)")
print("5 x 10 is \(5 * 10)")
print("6 x 10 is \(6 * 10)")
print("7 x 10 is \(7 * 10)")
print("8 x 10 is \(8 * 10)")
print("9 x 10 is \(9 * 10)")
print("10 x 10 is \(10 * 10)")



for i in 1...10 {
    print("\(i) x 10 is \(i * 10)")
}


var str = "Fakers gonna"

for _ in 1...5 {
    str += " fake"
}

print(str)



var songs = ["Shake it off","You Belong with Me", "Look What You Made Me Do"]

for song in songs {
    print("My favorite songs \(song)")
}


var people = ["players", "haters", "heart-breakers", "fakers"]
var actions = ["play", "hate", "break", "fake"]

for i in 0...3 {
    print("\(people[i]) gonna \(actions[i])")
}




var people2 = ["players", "haters", "heart-breakers", "fakers"]
var actions2 = ["play", "hate", "break", "fake"]
for i in 0..<people2.count {
    print("\(people2[i]) gonna \(actions2[i])")
}


//Inner loops
var people3 = ["players", "haters", "heart-breakers", "fakers"]
var actions3 = ["play", "hate", "break", "fake"]

for i in 0..<people3.count {
    var str = "\(people3[i]) gonna"
    
    for _ in 1...5 { //toplam 5 kez çalış demek
        str += "\(actions3[i])"
    }
    
    print(str)
}

//While loops,

var counter = 0

while true {
    print("Counter is now \(counter)")
    counter += 1
    
    if counter == 556 {
        break
    }
}


var songs4 = ["Shake it Off", "You Belong with Me", "Look What You Made Me Do"]

for song4 in songs4 {
    if song4 == "You Belong with Me" {
        continue
    }

    print("My favorite song is \(song4)")
}


//Switch case
let liveAlbums = 2

switch liveAlbums {
case 0:
    print("You're just starting out")

    case 1:
        print("You just released iTunes Live From SoHo")

    case 2:
        print("You just released Speak Now World Tour")

    default:
        print("Have you done something new?")
}


let studioAlbums = 5

switch studioAlbums {
case 0...1:
    print("You're just starting out")
case 2...3:
    print("You're a rising star")
case 4...5:
    print("You're world famous!")
default:
    print("Have you done something new?")
}


let number = 1

switch number {
case 1:
    print("One")
    fallthrough
case 2:
    print("Two")
default:
    print("Default")
}
