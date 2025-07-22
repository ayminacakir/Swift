#3.GÜN

###Swift neden bir Int'e Double ekleyemez?
Double + Int → ondalık kısım kaybolabilir veya değer yuvarlanabilir.
Int + Double → büyük sayılar doğru temsil edilemeyebilir.

###Swift'te operatör aşırı yüklemesine neden ihtiyaç duyulur?
+ operatörü sadece sayılarla sınırlı olsaydı, dizileri birleştirmek ya da stringleri eklemek gibi işlemler için farklı yöntemler yazmak gerekirdi.


#4.GÜN

###Swift döngülerde neden alt çizgi kullanır?

Döngülerin size verdiği sabiti kullanmazsanız for, Swift'in gereksiz değerler 
oluşturmaması için bunun yerine alt çizgi kullanmalısınız


###While döngüsünü ne zaman kullanmalısınız?
Temel fark, fordöngülerin genellikle sonlu dizilerle kullanılmasıdır: örneğin, 
1'den 10'a kadar olan sayılar veya bir dizideki öğeler arasında döngü yaparız. 
Öte yandan, whiledöngüler herhangi bir keyfi koşul yanlış olana kadar döngü 
yapabilir, bu da durmalarını söyleyene kadar döngüye girmelerine olanak tanır.



###Neden repeat kullanılır?
Kod tekrarından kaçınmak için.



break sadece bulunduğu döngüden çıkar.
break outer loop ile birden fazla döngüden çıkabilirsin.




###Swift’te Etiketli İfadeler Neden Var?
Etiketli ifadeler, doğrudan belirli bir döngüyü durdurmak için kullanılır.
Performansı artırır ve gereksiz işlemleri önler.


###Break ve continue Ne Zaman Kullanılır?
*break*   
Döngüden tamamen çık, Gerekli koşul sağlandığında döngüyü bitir
*continue*   
Sadece bu döngü adımını atla, Bazı adımları atlayıp döngüyü sürdürmek için
