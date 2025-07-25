
# Struct ile Class Arasındaki 5 Temel Fark

1️⃣ struct otomatik olarak bir init oluşturur.class ise bu otomatik
başlatıcıyı vermez. Eğer bir init fonksiyonu yazmazsan hata 
alırsın.Bu yüzden class içinde init() fonksiyonunu kendin yazmak 
zorundasın.

2️⃣ Class'lar Referans Tipidir, Struct'lar kopyalanır Değer Tipidir

3️⃣ Class'lar Inheritance (Kalıtım) Destekler

4️⃣ Deinitializer (Yıkıcı Fonksiyon) Sadece Class’ta Vardır,Structta yok.
class nesnesi silinirken özel bir işlem yapmak istersen deinit 
yazabilirsin.


5️⃣ Class Nesneleri Birden Fazla Değişken Tarafından Paylaşılabilir


Struct’lar otomatik başlatıcıya sahiptir, sınıflar sahip değildir.

Sınıflar kalıtım desteklediği için, otomatik başlatıcılar güvenli olmaz.

Bu yüzden sınıf başlatıcılarını manuel yazman gerekir.

Kalıtım kullandığında, super.init(...) ile üst sınıfın başlatıcısını çağırman zorunludur.




# Overriding Ne Zaman Kullanılır?

## Overriding temel amacı:

“Üst sınıfın tüm davranışını koru ama sadece küçük bir kısmını değiştir.”

Yani sıfırdan yeni bir sınıf yazmak yerine, hazır bir sınıfı özelleştirmek istiyorsan kullanılır.



 
# Final Class Nedir? Neden Kullanılır?
Swift’te bazı sınıfların (classes) başka sınıflar tarafından miras alınmasını (inheritance) istemeyebilirsin.

İşte bu durumda final anahtar kelimesi devreye girer:

final class, başka bir sınıf tarafından kalıtılamaz (subclass edilemez).

Yani, bu sınıfın özellikleri ve metotları üzerine yazılamaz (override edilemez) ve bu sınıftan yeni bir alt sınıf oluşturulamaz.



# Sınıflar ve Yapılar Kopyalandığında Ne Olur?

Swift’te struct (yapı) ve class (sınıf) yapıları arasındaki en önemli farklardan biri, kopyalandıklarında nasıl davrandıklarıdır.

Struct (Yapı), değer tipi (value type) olarak adlandırılır. Bu, bir struct değişkeni kopyalandığında, tamamen yeni ve bağımsız bir kopya oluşturulması anlamına gelir. Yapılan değişiklikler sadece bu kopyayı etkiler; orijinal struct değişkeni değişmeden kalır.

Class (Sınıf) ise referans tipi (reference type) olarak çalışır. Yani bir class değişkeni kopyalandığında, aslında sadece aynı nesneye işaret eden yeni bir referans (işaretçi) oluşur. Bu durumda yapılan herhangi bir değişiklik, tüm referansları etkiler çünkü hepsi aynı nesneyi paylaşır.

Bu fark, programlamada oldukça önemlidir çünkü yapılar veri güvenliği ve öngörülebilirlik açısından daha avantajlıdır. Sınıflar ise özellikle ortak veri paylaşımı gereken durumlarda kullanılır, fakat dikkatli yönetilmezse istenmeyen yan etkilere neden olabilir.



## Özet
struct → kopyalanınca ayrı nesne oluşur. Güvenlidir.

class → kopyalanınca aynı nesne paylaşılır. Dikkatli kullanılmalı.

Swift geliştiricileri genellikle öncelikle struct tercih eder, ihtiyaç varsa class kullanır.



# Neden class nesnelerinin deinit'e ihtiyacı var?
Sınıflar referans tipi (reference type) olduğu için aynı nesneye birden fazla değişken referans edebilir.

Bu durum, hangi anda o nesnenin gerçekten silinmesi gerektiğini karmaşık hale getirir.

Bunun için Swift, ARC (Automatic Reference Counting) adlı bir sistem kullanır:

# ARC Nasıl Çalışır?
Her class nesnesi için bir referans sayacı (reference count) tutulur.

Yeni bir değişken o nesneye işaret ederse: Sayı +1 artar.

Bir değişken artık nesneye işaret etmiyorsa: Sayı -1 azalır.

Sayı 0 olduğunda: Kimse o nesneyi kullanmıyor demektir, deinit çağrılır ve nesne yok edilir.

# Peki struct neden deinit içermez?
struct yapılar değer tipi (value type) olduğu için her kopya bağımsızdır.

Bu yüzden bir struct'ın ne zaman yok edildiğini bilmeye gerek yoktur.

Bellek yönetimi daha basittir: struct bir fonksiyonda tanımlandıysa, fonksiyon bittiğinde otomatik olarak silinir.

Yani:

struct → "Silindim mi? Önemli değil."
class → "Silinmeden önce haber ver, belki kapanışta yapılacak işlerim var."

📘 Geliştirici Yorumu:
Kodun anlamlı ve okunabilir olması gerektiğini savunan geliştirici Anne Cahalan şöyle demiş:

“Kod cümle gibi okunmalı, sınıflar da bir kitap bölümü gibi. O yüzden deinitializer'ı en sona koyarım — sınıfın ~fin~i gibi.”

Bu, deinit fonksiyonunun kodun sonunda yazılmasının hem okunabilirlik hem de anlam açısından mantıklı olduğunu vurgular.

### Özet
class → init() ve deinit destekler.

deinit, sınıf bellekte yok edilmeden önce çalışır.

struct → deinit içeremez çünkü buna gerek yoktur.

Swift, sınıf nesnelerini ARC (Automatic Reference Counting) ile yönetir.



# Mutability (Değiştirilebilirlik)
Swift’te struct ve class’lar değiştirilebilirlik açısından farklı davranır:

Struct (Yapı): Bir struct sabit (let) olarak tanımlanmışsa, içindeki var özellikler değiştirilemez. Çünkü struct bir değer tipidir ve değişiklik tüm yapının yeniden oluşturulması anlamına gelir, bu da sabit bir değer için mümkün değildir.

Class (Sınıf): Bir class sabit (let) olarak tanımlansa bile, içindeki var özellikler değiştirilebilir. Çünkü class bir referans tipidir ve sabit olan sadece referanstır, nesnenin içeriği değiştirilebilir.

Bu nedenle, struct'larda değişiklik yapan metodlar mutating anahtar kelimesini gerektirirken, class'larda buna gerek yoktur.
