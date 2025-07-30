## Variables and constants

Swift'te değişkenler (var) değeri değişebilen veri saklama alanlarıyken, 
sabitler (let) bir kez atandıktan sonra değeri değiştirilemeyen veri 
saklama alanlarıdır


## Types of Data

Swift'te her değişkenin bir veri türü (örneğin String, Int, Double, Bool) 
olmalıdır ve bu ya değer atayarak otomatik olarak belirlenir (type 
inference) ya da türü açıkça yazarak (type annotation) belirtilir

Double ın Floata göre iki kat daha fazla doğruluğa sahip olması ve 
böylece sayınızı sığdırmak için kısaltmasına gerek olmamasıdır.


## Operators

Bu, aslında çok basit bir şey olan değişkenleri ve sabitleri bir dizenin 
içinde birleştirme işlemi için kullanılan süslü bir isimdir.


## Arrays

Diziler, çok sayıda değeri tek bir koleksiyonda gruplandırmanıza ve 
ardından bu değerlere koleksiyondaki konumlarına göre erişmenize olanak 
tanır. 

Tür güvenliği önemlidir ve Swift'in dizileri her türlü veriyi tutabilmesi harika olsa da, bu özel durum bir tesadüftü. Neyse ki, bir dizinin tam olarak ne tür veri depolamasını istediğinizi belirtmek için tür açıklamalarını kullanabileceğinizi daha önce söylemiştim. Bir dizinin türünü belirtmek için, depolamak istediğiniz veri türünü köşeli parantezlerle şöyle yazın:

        var songs: [String] = ["Shake it Off", "You Belong with Me", "Back to December", 3]
        
        var songs: [Any] = ["Shake it Off", "You Belong with Me", "Back to December", 3]
        
        
        
## Dictionaries

Bir sözlük oluşturduğunuzda önce anahtarını, sonra iki nokta üst üste işaretini ve ardından değerini yazarsınız. Daha sonra, anahtarını bilerek sözlükten herhangi bir değeri okuyabilirsiniz; 
       
        var person = ["first": "Taylor", "middle": "Alison", "last": "Swift", "month": "December", "website": "taylorswift.com"]
        person["middle"]
        person["month"]


## Conditional statements
Swift dilinde bir kodun sadece belirli bir koşul sağlandığında çalışmasını if, else if, ve else yapılarıyla kontrol edebiliriz.


else if ve else Kullanımı:

        if person == "hater" {
        action = "hate"
        } else if person == "player" {
    action = "play"
    } else {
        action = "cruise"
    }

Birden Fazla Koşulu Kontrol Etme

    var stayOutTooLate = true
    var nothingInBrain = true

    if stayOutTooLate && nothingInBrain {
        action = "cruise"
    }

Olumsuz Koşul (NOT Operatörü !)

    if !stayOutTooLate && !nothingInBrain {
    action = "cruise"
}



## Loops

Belirli bir koşul sağlandığı sürece aynı kod bloğunu çalıştırırlar

1. for Döngüsü
    
    for i in 1...10 {
    print("\(i) x 10 is \(i * 10)")
    }

2.İç İçe Döngüler (Nested Loops)
    
    for i in 0..<people.count {
    for _ in 1...5 {
        str += " \(actions[i])"
    }
    }

3.while döngüsü

    var counter = 0
    while true {
        if counter == 556 { break }
        counter += 1
    }   

    break → Döngüyü tamamen durdurur.

    continue → O anki turu atlayıp döngüye devam eder.
