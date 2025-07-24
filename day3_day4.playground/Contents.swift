import UIKit

//3.GÜN

/*Swift neden bir Int'e Double ekleyemez?
Double + Int → ondalık kısım kaybolabilir veya değer yuvarlanabilir.

Int + Double → büyük sayılar doğru temsil edilemeyebilir.*/

let result = Double(5) + 3.2 // Geçerli


// Stringler için birleştirme
let name = "John" + " Doe"   // "John Doe"

// Diziler için birleştirme
let list = [1, 2] + [3, 4]

//Compound assignment operators
var score = 95
score -= 5


//Conditions
if score > 9000 {
    print("It's over 9000!")
} else if score == 9000 {
    print("It's exactly 9000!")
} else {
    print("It's not over 9000!")
}

//Birden fazla koşul nasıl kontrol edilir?
//Parantezler çok önemli..

if (isOwner == true && isEditingEnabled) || isAdmin == true {
    print("You can delete this post")
}


//The ternary operator

let isAuthenticated = true
print(isAuthenticated ? "Welcome!" : "Who are you?")

//Switch statements
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}


//Range operators
let score = 85

switch score {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}



//4.GUN
//For loops
for number in count {
    print("Number is \(number)")
}
//swiftin alt çizgi kullanması
for _ in 1...5 {
    print("play")
}
//WHİLE LOOPS
var number = 1

while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")


//Repeat Loops
let numbers = [1, 2, 3, 4, 5]
var random: [Int]

repeat {
    random = numbers.shuffled()
} while random == numbers


//Existing Loops
let scores = [1, 8, 4, 3, 0, 5, 2]
var count = 0

for score in scores {
    if score == 0 {
        break
    }

    count += 1
}

print("You had \(count) scores before you got 0.")


//Exiting multiple loops
/*break sadece bulunduğu döngüden çıkar.
break outer loop ile birden fazla döngüden çıkabilirsin.*/
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop  // Hem iç hem dış döngüden çıkılır
        }
    }
}


//Skipping items
for number in 1...5 {
    if number == 3 {
        continue  // 3'ü atla, diğerlerine devam et
    }
    print(number)


//infinite Loops (sonsuz döngü)
    while true {
        print("I'm alive!")
    }

    print("I've snuffed it!")
