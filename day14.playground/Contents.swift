import UIKit

func favoriteAlbum() {
    print("My favorite is Fearless")
}

favoriteAlbum()


func favoriteAlbum(name: String){
    print("My favotire album \(name)")
}
favoriteAlbum(name: "Fearless")

func printAlbumRelease(name: String, year: Int) {
    print("\(name) was released in \(year)")
}

printAlbumRelease(name: "Fearless", year: 2008)
printAlbumRelease(name: "speak now", year:2010)


func countLettersInString(string: String){
    print("The string \(string) has \(string.count) letters")
}
countLettersInString(string: "Hello")



func countLettersInString(myString str: String) {
    print("The string \(str) has \(str.count) letters.")
}

countLettersInString(myString: "Hello")


func countLettersInString(_ str: String) {
    print("The string \(str) has \(str.count) letters.")
}

countLettersInString("Hello")
