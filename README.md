## STRUCT
Struct içindeki değişkenlere (property) "özellik" denir. Burada name bir özelliktir.

### Swift bize iki seçenek sunar: 

Saklanan özellikler, bir değerin daha sonra 
kullanılmak üzere bir miktar belleğe saklandığı özellikler ve hesaplanan 
özellikler, bir değerin her çağrıldığında yeniden hesaplandığı özellikler


### didSet:
    Değer, değiştikten hemen sonra çalışır

### willSet:
    Değer değişmeden hemen önce çalışır.Yeni değere göre hazırlık yapılabilir
    
    
Struct'ların içine func kullanarak fonksiyon (method) ekleyebilirsin. Bu
fonksiyon, o struct'ın özelliklerini kullanabilir.


## Mutating methods (değiştirici methodlar)
Swift’te bir struct (yapı) değiştirilemez (immutable) olarak tasarlanmıştır.

 ### Güvenlik Nedeniyle Swift Ne Yapıyor?
 Swift “güvenli tarafta kalmak” için her methodun, struct’ın özelliklerini değiştirip değiştirmediğini bilmek ister. Eğer değiştiriyorsa, o methodun başına mutating anahtar kelimesi konulmalıdır.

### NOT:
String’ler Struct’tır

### NOT:
Swift dilinde Array (dizi) türü de bir struct (yapı) olarak 
tanımlanmıştır. Bu sayede diziler, kendi özelliklerine (properties) ve 
fonksiyonlarına (methods) sahiptir.
