import UIKit

//ARRAYS
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]


//SETS

let colors = Set(["red","green","blue"])

//TUPLES

var name = (first: "Taylor",last:"Swift")
name.0
name.first


//Dictioneries
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


//Creating empty collections
var teams = [String:String] ()
teams["Paul"] = "Red"

var words = Set<String>()
var numbers = Set<Int>()

var scores = Dictionary<String, Int>()
var results = Array<Int>()


//enums
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
