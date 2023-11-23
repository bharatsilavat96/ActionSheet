


import Foundation


//MARK: - Swift Coding Concepts - UnderStanding Concepts at one Place -

//MARK: - Initializing Types -
// let number = 42, otherNumber = 37
// let maxInt64: UInt64 = UInt64.max
// let Mb = 1_048_576
// //Double
// let exp = 2.71828
// let billion = 1E+9
// //Float
// let pi: Float = 3.14
// //String
// let greeting = "Hello"
// //Multiline String
// var text = "this is some\n" + "multiline text"  //
// //Multiline String (swift 4)
// text = """
// this is some
// multiline text
// """
// //Bool
// let sunIsStar = true
// let needBackUp = false
// //Character "A"
// let charA: Character = "\u{65}"
// //Tuple (Int, String)
// let one = (1, "one")
// print("number is", number)
// print("otherNumber is", otherNumber)
// print("maxInt64 is", maxInt64)
// print("Mb is", Mb)
// print("exp is", exp)
// print("billion is", billion)
// print("pi is", pi)
// print("greeting is", greeting)
// print("text is \"\(text)\"")
// print("sunIsStar is", sunIsStar)
// print("needBackUp is", needBackUp)
// print("charA is", charA)
// print("one is", one)

//MARK: - Enumerations----------------------------------------------------
 
// enum PreciousMetal {
// case platinum, gold, silver
// }
// enum Planet: Int8 {
// case mercury = 1, venus, earth
// }
// let gold = PreciousMetal.gold
// let earth: Planet = .earth
// print("gold is \(gold)")
//print("earth is \(earth.rawValue)")

//MARK: - Collections- --------- Arrays--------------------------------------
// let primeNumbers = [ 2, 3, 5, 7, 11, 13, 17, 19 ]
// Array of string
// let gameList = ["soccer", "hockey", "basketball"]
//// Array of Employee class
// let employees = [
// Employee(firstName: "Pavlov", lastName: "Anton"),
// Employee(firstName: "Kirienko", lastName: "Elena")]
// print("primeNumbers is \(primeNumbers)")
// print("gameList is \(gameList)")
//print("employees is \(employees)")
//
// class Employee {
//
//   var firstName: String
//   var lastName: String
//
//    init (firstName: String, lastName: String) {
//          self.firstName = firstName
//          self.lastName = lastName
//    }
// }
 //MARK: - Collections- --------- Dictionaries--------------------------------------
// Dictionary<String, String>
// let languages = ["ru" : "russian", "en" : "english"]
// //Dictionary<Int, String>
// let numbers: Dictionary<Int, String> = [1: "one", 2: "two", 3: "three"]
// //Dictionary<Int, Employee>
// let employees = [
// 1: Employee(firstName: "Anton", lastName: "Pavlov"),
// 2: Employee(firstName: "Elena", lastName: "Kirienko")]
// let chars = ["A", "B", "C"]
// let dicChars = Dictionary(uniqueKeysWithValues: zip(1..., chars))
// //dicChars is [2: "B", 3: "B", 1: "A"]
// print("languages is \(languages)")
// print("numbers is \(numbers)")
// print("employees is \(employees)")
// print("dicChars is \(dicChars)")
// class Employee {
//       var firstName: String
//       var lastName: String
// init (firstName: String, lastName: String) {
//      self.firstName = firstName
//      self.lastName = lastName
//   }
// }
 
//MARK: - Collections- ---------Sets --------------------------------------
// let intHashSet: Set = [ 2, 3, 5, 7, 11, 13, 17, 19 ]
// print(intHashSet)
 
//MARK: - Class without constructor / managing with Optional---------------------------------------
// let nokiaPhone = Phone()
// nokiaPhone.model = "Nokia 6610"
// let iPhone5 = Phone()
// iPhone5.model = "iPhone 5 (Mobile)"
// let bharat = Employee()
// bharat.firstName = "Bharat"
// bharat.lastName = "Shilavat"
// bharat.personalPhone = iPhone5
// print(bharat.personalPhone!.model!)
//
// class Phone {
//      var model: String?
// }
// class Employee {
//      var firstName: String?
//      var lastName: String?
//      var personalPhone: Phone?
// }
//MARK: - Class without constructor / managing with Optional---------------------------------------
// let phone = Phone(model: "Nokia 6610")
// let bharat = Employee(firstName: "Bharat",
// lastName: "Shilavat",
// personalPhone: Phone(model: "iPhone 5"))
// print("phone.Model is \(phone.model)")
// print("bharat.Name is \(bharat.firstName)")
//
//class Phone {
//      var model: String
//init (model: String) {
//      self.model = model
//    }
// }
// class Employee {
//        var firstName: String
//        var lastName: String
//        var personalPhone: Phone
// init (firstName: String, lastName: String, personalPhone: Phone) {
//        self.firstName = firstName
//        self.lastName = lastName
//        self.personalPhone = personalPhone
//     }
// }

//MARK: - Struct -- Without Constructure --------------------------------------------
// let rect = Rectangle(size: Size(width: 10, height: 10),point: Point(top: 5, left: 5))
// print("rect is \(rect)")
// struct Size {
//    var width, height: Int
// }
// struct Point {
//     var top, left: Int
// }
// struct Rectangle {
//       var size: Size
//       var point: Point
// }
//MARK: - Struct -- With Constructure ---------------------------------------------
// let size = Size(width: 10, height: 10)
// let point = Point(top: 5, left: 5)
// //without external parameters names
// let rect = Rectangle(size, point)
// print("Rectangle is \(rect)")
// struct Size {
//      var width, height: Int
// init (width: Int, height: Int) {
//      self.width = width
//      self.height = height
//    }
// }
// struct Point {
//        var top, left: Int
// init (top: Int, left: Int) {
//        self.top = top
//        self.left = left
//     }
// }
// struct Rectangle {
//        var size: Size
//        var point: Point
// //without external parameters names
//init (_ size: Size, _ point: Point) {
//        self.size = size
//        self.point = point
//     }
// }
//MARK: - Simple Types --------------------------------------------------------------------------
//MARK: - Numbers - Conversion From String -
// let strNumber = "42"
// let number = Int(strNumber)!
// print("number is \(number)")

//MARK: - Numbers - Converting to String -
// let number = 42
// let s1 = "\(number)"
// //s1 is "42"
// let s2 = String(number)
// //s2 is "42"
// let s3 = String(format: "%.3d", number) //manage Desimal
// //s3 is "042"
// print("s1 is \(s1)")
// print("s2 is \(s2)")
// print("s3 is \(s3)")

//MARK: - Numbers - Arithmatic Operation  -
// let d1 = 8 + 2 //d1 is 10
// let d2 = 8 - 2 //d2 is 6
// let d3 = 8 * 2 //d3 is 16
// let d4 = 8 / 2 //d4 is 4
// let d5 = 5 % 2 //d5 is 1
// let d6 = -5 % 2 //d6 is -1
// var d7 = 1
// d7 += 1 //d7 is 2
// d7 -= 1 //d7 is 1
// //'++' and '--' is deprecated: it will be removed in Swift 3
// //let d8 = d7++ //d8 is 1, d7 is 2
// //let d9 = ++d7 //d9 is 3, d7 is 3
// print("d1 = \(d1)")
// print("d2 = \(d2)")
// print("d3 = \(d3)")
// print("d4 = \(d4)")
// print("d5 = \(d5)")
// print("d6 = \(d6)")
// print("d7 = \(d7)")

//MARK: - Numbers - Getting random Value  -
//let random1 = Int.random(in: 0..<3)
////may return 0, 1 or 2 but not 3
//let random2 = (1...3).randomElement()!
////may return 1, 2 or 3
//print("random1 is", random1)
//print("random2 is", random2)

//MARK: - Numbers - Bitwise Operator  -
//let a = 5 //0101
//let b = 6 //0110
////And Gate -
//let c1 = a & b
////c1 is 4 (0100)
////Or Gate -
//let c2 = a | b
////c2 is 7 (0111)
////Xor Gate -
//let c3 = a ^ b
////c3 is 3 (0011)
////shift right
//let c4 = a >> 1
////c4 is 2 (0010)
////shift left
//let c5 = b << 1
////c5 is 12 (1100)
////bits invertion
//let c6 = ~b
////c6 is -7 (-111)
//print("c1 = \(c1)")
//print("c2 = \(c2)")
//print("c3 = \(c3)")
//print("c4 = \(c4)")
//print("c5 = \(c5)")
//print("c6 = \(c6)")

//MARK: - Numbers - Numeral System  -
////decimal number system
//let decimal = 42
////octal number system
//let octal = 042
////octal is 34
//print("octal = \(octal)")
////hexadecimal number system
//let hexadecimal = 0x42
////hexadecimal is 66
//print("hexadecimal = \(hexadecimal)")
////binary number system
//let binary = 0b1010
////binary is 10
//print("binary = \(binary)")
////42 to decimal string
//let sDecimal = String(42)
////sDecimal is "42"
//print("sDecimal = \(sDecimal)")
////42 to octal string
//let sOctal = String(format: "%o", 42)
////sOctal is "52"
//print("sOctal = \(sOctal)")
////42 to hexadecimal string
//let sHexadecimal = String(format: "%x", 42)
////sHexadecimal is "2a"
//print("sHexadecimal = \(sHexadecimal)")
////42 to binary string
//let sBinary = (0..<8).map { String((42 >> $0) & 1) }
//    .reversed().joined(separator: "")
////sBinary is "00101010"
//print("sBinary = \(sBinary)")

//MARK: - Numbers - Converting Int -> Int     -
//let d1: Int64 = Int64.max
////d1 is 9223372036854775807
////let d2: Int32 = Int32(d1)//<- Error
////let d3: Int = Int(d1)//<- Error
//let d4: Int32 = Int32.max
////d4 is 2147483647
//let d5: Int64 = Int64(d4)
////d5 is 2147483647
//print("d1 = \(d1)")
//print("d4 = \(d4)")
//print("d5 = \(d5)")

//MARK: - Numbers - Cheking overflow     -
//no range check
//let b1: UInt8 = 200
//let b2: UInt8 = 100
//let b3: UInt8 = UInt8(b1 + b2)//<-Error

//MARK: - Numbers - Double & Float  -
//MARK: - Numbers - Conversion from a string -
////the first method
//let strPi = "3.14"
//let piFloat: Float = Float(strPi)!
//let piDouble: Double = Double(strPi)!
////the second method
//let strExp = "2.71828"
//let exp = (strExp as NSString).doubleValue
////the third method
//let strHalf = "0,5"
//let formatter = NumberFormatter()
//formatter.decimalSeparator = ","
//let half = formatter.number(from: strHalf)!.doubleValue
//print("piFloat is \(piFloat)")
//print("piDouble is \(piDouble)")
//print("exp is \(exp)")
//print("half is \(half)")

//MARK: - Numbers - Conversion to string -
//let exp = 2.718_281_828
//let s1 = "\(exp)"
////s1 is 2.718281828
//let s2 = String(format: "%0.3f", exp)
////s2 is 2.718
//let s3 = String(format: "%0.2E", exp / 100)
////s3 is 2.72E-02
//let formatter = NumberFormatter()
//formatter.numberStyle = .decimal
//formatter.groupingSeparator = " "
//formatter.maximumFractionDigits = 2
//let s4 = formatter.string(from:
//    NSNumber(value: exp * 1000_000))!
////s4 is "2 718 281.83"
//print("s1 is \(s1)")
//print("s2 is \(s2)")
//print("s3 is \(s3)")
//print("s4 is \(s4)")

//MARK: - Numbers - Rounding and truncating -
//let pi = 3.1415
//let piRound = round(pi * 1000) / 1000
////piRound is 3.142
//let piTrunc = trunc(pi * 1000) / 1000
////piTrunc is 3.141
//let piCeil = ceil(pi * 100) / 100
////piCeil is 3.15
//print("piRound is \(piRound)")
//print("piTrunc is \(piTrunc)")
//print("piCeil is \(piCeil)")

//MARK: - Numbers - Number Comparision -
//let a = 1.0
//let b = (0.3 * 3) + 0.1
////Wrong way to compare
//let isEqual1 = a == b
////isEqual1 is false
//let isEqual2 = a.isEqual(to: b)
////isEqual2 is false
////Сorrect way to compare
//let delta = 0.0000000001
//let isEqual3 = abs(a - b) < delta
////isEqual3 is true
//print("a is \(a)")
//print("b is \(b)")
//print("isEqual1 is \(isEqual1)")
//print("isEqual2 is \(isEqual2)")
//print("isEqual3 is \(isEqual3)")

//MARK: - Numbers - Arithmatic Operations -
//let d1: Float = 8.5 + 2.4 // d1 is 10.9
//let d2 = 8.5 - 2.4        // d2 is 6.1
//let d3 = 8.5 * 2          // d3 is 17.0
//let d4 = 8.5 / 2          // d4 is 4.25
//// mod
//let d5 = 7.5.truncatingRemainder(dividingBy: 2)  // d5 is 1.5
//let d6 = -7.5.truncatingRemainder(dividingBy: 2) // d6 is -1.5
//// div
//let d7 = Int(7.5 / 2)     // d7 is 3
//let d8 = -d7              // d8 is -3
//var d9 = 3.5
//d9 += 1                   // d9 is 4.5
//d9 -= 1                   // d9 is 3.5
////'++' and '--' is deprecated: it will be removed in Swift 3
////d9++                    // d9 is 4.5
////d9--                    // d9 is 3.5
////let d10 = d9++          // d10 is 3.5, d9 is 4.5
////let d11 = ++d9          // d11 is 5.5, d9 is 5.5
//let d12 = abs(-5.5)       // d12 is 5.5
//print("d1 = \(d1)")
//print("d2 = \(d2)")
//print("d3 = \(d3)")
//print("d4 = \(d4)")
//print("d5 = \(d5)")
//print("d6 = \(d6)")
//print("d7 = \(d7)")
//print("d8 = \(d8)")
//print("d9 = \(d9)")
//print("d12 = \(d12)")

//MARK: - Numbers - Getting Random Values -
//let random = Double.random(in: 0.0 ..< 3.0)
////random double between 0.0 and <3.0
//print("random is \(random)")

//MARK: - Numbers - Converting to Integer -
//let pi = 3.1415926535
//let intValue = Int(pi)
////intValue is 3
//print("intValue is \(intValue)")

//MARK: - Numbers - Converting Float to Double -
//let a: CGFloat = 5.55
//let b: Double = 2.22
//// *** before: ***
//let result1 = Double(a) + b
//// *** in version 5.5: ***
//let result2 = a + b
//print("result1 is", result1)
//print("result2 is", result2)

//MARK: - Numbers - Mathamatical Operations  -
//MARK: - Numbers - Mathamatical Operations  - Exponentials -
//let number = 8.0
//let power = 3.0
//let result = pow(number, power)
////result is 512.0
//print(result)

//MARK: - Numbers - Mathamatical Operations  - Square Root -
//let number = 100.0
//let result = sqrt(number)
////result is 10.0
//print(result)

//MARK: - Numbers - Mathamatical Operations  - Min and Max Value -
//let minValue = min(2, 1, 3)
////minValue is 1
//let maxValue = max(2, 1, 3)
////maxValue is 3
//print("minValue is \(minValue)")
//print("maxValue is \(maxValue)")

//MARK: - Numbers - Mathamatical Operations  - Logarithm -
//let number = 512.0
//let logBase = 8.0
//let result = log(number)/log(logBase)
////result is 3.0
//print(result)

//MARK: - Numbers - Mathamatical Operations  - Decimal Logarithm -
//let number = 1000.0
//let result = log10(number)
////result is 3.0
//print(result)

//MARK: - Numbers - Mathamatical Operations  - sine, cose and tangent -
//let sin90 = sin(Double.pi/2)
////sin90 is 1.0
//let cos180 = cos(Double.pi)
////cos180 is -1.0
//let tan45 = tan(Double.pi/4)
////tan45 is 1.0
//print("sin90 is \(sin90)")
//print("cos180 is \(cos180)")
//print("tan45 is \(tan45)")

//MARK: - Simple Types -   Strings --------------------------------------------
// //Empty strings
// let someEmptyString = ""
// let anotherEmptyString = String()
// if someEmptyString.isEmpty {
//     print("some string is empty")
// }
// if anotherEmptyString.isEmpty {
//     print("another string is empty")
// }
// //-------------------------------------------------------------------------
// func reverse(_ word: String) -> String {
//     //Characters count
//     let charCount = word.count
//     let wordArr = Array(word)
//     var result = ""
//     for i in stride(from: charCount - 1, to: -1, by: -1)
//     {
//         result += String(wordArr[i])
//     }
//     return result
// }
// let stringReverse = reverse("string")
// //stringReverse is "gnirts"
// print("stringReverse is \(stringReverse)")
// //-------------------------------------------------------------------------
// let dataString = "Substring search"
// if dataString.contains("string") {
//     print("contain \"string\"")
// }
// if dataString.hasPrefix("Sub") {
//     print("starts with \"Sub\"")
// }
// if dataString.hasSuffix("search") {
//     print("ends with \"search\"")
// }
// //-------------------------------------------------------------------------
// let data = "Substring index"
// let range = data.range(of: "string")
// let subString = data[range!.lowerBound...]
// // subString is "string index"
// let index = data.index(of: "str")
// //index is 3
// print("subString is \(subString)")
// print("index is \(index)")
// extension StringProtocol {
//     func index<S: StringProtocol>(of str: S) -> Int {
//         if let range = range(of: str) {
//             return distance(from: str.startIndex, to: range.lowerBound)
//         }
//         return -1
//     }
// }
// //-------------------------------------------------------------------------
// var startString = "3, 2, 1, go!"
// startString = startString
//     .replacing("1", with: "one")
//     .replacing("2", with: "two")
//     .replacing("3", with: "three")
// //startString = "three, two, one, go!"
// print("startString is '\(startString)'")
// //-------------------------------------------------------------------------
// let str = "one way ticket"
// // first method
// let start = str.index(str.startIndex, offsetBy:4)
// let end = str.index(str.startIndex, offsetBy: 6)
// let way1 = str[start...end] //"way"
// //second method
// let arStr = Array(str)
// let way2 = String(arStr[4...6]) //"way"
// print("way1 is '\(way1)'")
// print("way2 is '\(way2)'")
// //-------------------------------------------------------------------------
// r dataString = "string"
// var index = dataString.startIndex
// dataString.insert(contentsOf: "Sub", at: index)
// //dataString is "Substring"
// print("dataString is \(dataString)")
// index = dataString.index(dataString.startIndex, offsetBy:9)
// dataString.insert("!", at: index)
// //dataString is "Substring!"
// print("dataString is \(dataString)")
// dataString.insert(contentsOf: " inserting", at: index)
// //dataString is "Substring inserting!"
// print("dataString is \(dataString)")
// //-------------------------------------------------------------------------
// var dataString = "Substring removing"
// var start = dataString.index(
//     dataString.startIndex, offsetBy: 9)
// var end = dataString.endIndex
// dataString.removeSubrange(start..<end)
// //dataString is "Substring"
// print("dataString is \(dataString)")
// start = dataString.startIndex
// end = dataString.index(
//     dataString.startIndex, offsetBy: 2)
// dataString.removeSubrange(start...end)
// //dataString is "string"
// print("dataString is \(dataString)")
// //-------------------------------------------------------------------------
// let first = "A"
// let second = "B"
// let third = String("A")
// var areEqual = first == second
// //areEqual is false
// print("areEqual is \(areEqual)")
// let areNotEqual = first != second
// //areNotEqual is true
// print("areNotEqual is \(areNotEqual)")
// areEqual = first == third
// //areEqual is true
// print("areEqual is \(areEqual)")
// //-------------------------------------------------------------------------
// let fontSize = 14
// let fontFamile = "Arial"
// let style1 = "font-size: \(fontSize)font-family: \"\(fontFamile)\""
// //style1 is "font-size: 14font-family: "Arial""
// let style2 = #"font-size: \#(fontSize)font-family: "\#(fontFamile)""#
// //style2 is "font-size: 14font-family: "Arial""
// print("style1 is \(style1)")
// print("style2 is \(style2)")
// //-------------------------------------------------------------------------
// //to Int
// let strNumber = "42"
// let number: Int = Int(strNumber)!
// //to Double and Float
// //the first method
// let strPi = "3.14"
// let pi: Float = Float(atof(strPi))
// //the second method
// let strExp = "2.71828"
// let exp = (strExp as NSString).doubleValue
// //the third method
// let strHalf = "0,5"
// let formatter = NumberFormatter()
// formatter.decimalSeparator = ","
// let half = formatter.number(from: strHalf)!.doubleValue
// print("\(number) - \(pi) - \(exp) - \(half)")
// //-------------------------------------------------------------------------
// let str = "level"
// let reverseStr = str.reversed()
// for c in reverseStr {
//     print(c)
// }
// //Iterating with index
// for (i, c) in str.enumerated() {
//     print("str[\(i)] = \(c)")
// }
// //-------------------------------------------------------------------------
// let str = "Lower and upper"
// let lower = str.lowercased()
// //lower is "lower and upper"
// let upper = str.uppercased()
// //upper is "LOWER and UPPER"
// let capitalize = str.capitalized
// //capitalize is "Lower And Upper"
// print("lower is '\(lower)'")
// print("upper is '\(upper)'")
// print("capitalize is '\(capitalize)'")
// //-------------------------------------------------------------------------
// let str = "  Spaces  "
// let trimStr = str
//     .trimmingCharacters(in: .whitespaces)
// //trimStr is "Spaces"
// print("\"\(trimStr)\"")
// //-------------------------------------------------------------------------
// let strData = "1981|Kim Victorya|engineer"
// let arrData = strData.split(separator: "|")
//     .map{ String($0) }
// let year = Int(arrData[0])!
// //year is 1981
// let name = arrData[1]
// //name is "Kim Victorya"
// let position = arrData[2]
// //position is "engineer"
// print("year is \(year)")
// print("name is '\(name)'")
// print("position is '\(position)'")
// //-------------------------------------------------------------------------
// var str = "1-3-2"
// //str[2] = "3" //<-Error
// //str.characters[2] = "3" //<-Error
// var arr = Array(str)
// arr.swapAt(2, 4)
// str = String(arr)
// //str is "1-2-3"
// print("str is \(str)")K.
// //-------------------------------------------------------------------------
// var str = "1-/[=2=/]-3"
// let separators = ["/", "=", "[", "]"]
// let arStr = str
//     .split { separators.contains(String($0)) }
//     .map { String($0) }
// str = arStr.joined(separator: "")
// //str is "1-2-3"
// print("str is \(str)")
// //-------------------------------------------------------------------------
// let s1 = "three"
// let s2 = "two"
// var s3 = s1 + ", " + s2
// s3 += ", one"
// let sGo = s3 + ", " + "go!"
// //sGo is "three, two, one, go!"
// print("sGo is \(sGo)")
// //-------------------------------------------------------------------------
// let numbers = ["one", "two", "three"]
// let numberList = numbers.joined(separator: " ")
// //numberList is "one two three"
// print("numberList is \(numberList)")
// //-------------------------------------------------------------------------
// let str = String(repeating: "7", count: 3)
// // str is "777"
// print("str is '\(str)'")
// //-------------------------------------------------------------------------
// let s = "123"
// let count = 10
// let padStart1 = s
//     .padding(toLength: count, withPad: " ", startingAt: 0)
// // padStart1 is '123       '
// let padStart2 = s
//     .padding(toLength: count, withPad: "0", startingAt: 0)
// // padStart2 is '1230000000'
// let padEnd1 = s
//     .padding(toLength: count, withPad: "=*", startingAt: 1)
// // padEnd1 is '123*=*=*=*'
// print("padStart1 is '\(padStart1)'")
// print("padStart2 is '\(padStart2)'")
// print("padEnd1 is '\(padEnd1)'")
// //-------------------------------------------------------------------------
// // \t Insert a tab.
// // \n Insert a newline.
// // \r Insert a carriage return.
// // \' or ' Insert a single quote.
// // \" Insert a double quote.
// // \\ Insert a backslash character.
// let str1 = "She said \"Hello!\" to me."
// let str2 = #"She said "Hello!" to me."#
// //str is "She said "Hello!" to me."
// print("\"\(str1)\"")
// print("\"\(str2)\"")
// //-------------------------------------------------------------------------
// let charA: Character = "А"
// let stringA: String = String(charA)
// //stringA is "A"
// let str = "character " + String(charA)
// //str is "character А"
// print("str is \(str)")
// print("stringA is \(stringA)")
// //-------------------------------------------------------------------------
// let str = "ABC"
// let arr = Array(str)
// let charA = arr[0]
// //charA is "A"
// let charB = arr[1]
// //charB is "B"
// let charC = arr[2]
// //charC is "C"
// var charList = ""
// for c in str {
//     charList += String(c) + ""
// }
// //charList is "ABC"
// print("charA is \(charA)")
// print("charB is \(charB)")
// print("charC is \(charC)")
// print("charList is \(charList)")
// //-------------------------------------------------------------------------
// let charA: Character = "A"
// var utf16Value = charA.utf16.first!
// //utf16Value is 66
// utf16Value += 1
// let charB = Character(UnicodeScalar(utf16Value)!)
// //charB is "B"
// print("utf16Value is \(utf16Value)")
// print("charB is \(charB)")
// //-------------------------------------------------------------------------
// // ' or \' for a single quote.
// var c: Character = "\'"
// // \" for a double quote.
// c = "\""
// print("\"\(c)\"")
// // \\ for a backslash.
// c = "\\"
// print("\"\(c)\"")
// // \0 for a null character.
// c = "\0"
// print("\"\(c)\"")
// // \n for a new line.
// c = "\n"
// print("\"\(c)\"")
// // \r for a carriage return.
// c = "\r"
// print("\"\(c)\"")
// // \t for a horizontal tab.
// c = "\t"
// print("\"\(c)\"")
// // \x for a unicode character hex value.
// c = "\u{A9}" //Copyright Symbol
// print("\"\(c)\"")
// //-------------------------------------------------------------------------
// let now = Date()
// print(now)
// //-------------------------------------------------------------------------
// let now = Date()
// let shortStyle = DateFormatter.localizedString(from: now,
//     dateStyle: DateFormatter.Style.short,
//     timeStyle: DateFormatter.Style.short)
// //shortStyle is '6/29/23, 8:48 AM'
// let dateFormatter = DateFormatter()
// dateFormatter.dateStyle = .medium
// dateFormatter.timeStyle = .none
// dateFormatter.locale = Locale(identifier: "ru-Ru")
// let ruStyle = dateFormatter.string(from: now)
// //shortStyle is '29 июня 2023 г.'
// dateFormatter.dateFormat = "yyyy-MM-dd"
// let customStyle = dateFormatter.string(from: now)
// //customStyle is '2023-06-29'
// print("shortStyle = '\(shortStyle)'")
// print("ruStyle = '\(ruStyle)'")
// print("customStyle = '\(customStyle)'")
// //-------------------------------------------------------------------------
// let stringDate = "1945-05-09 01:00"
// let formatter = DateFormatter()
// formatter.dateFormat = "yyyy-MM-dd hh:mm"
// let victoryDate = formatter.date(from: stringDate)
// print(victoryDate!)
// //-------------------------------------------------------------------------
// let now = Date()
// let calendar = Calendar.current
// let yesterday = calendar.date(
//     byAdding: Calendar.Component.day,
//     value: -1, to: now)!
// let areEqual = now == yesterday
// //areEqual is false
// let areLater = now > yesterday
// //areLater is true
// let areEarlier = now < yesterday
// //areEarlier is false
// print("areEqual is \(areEqual)")
// print("areLater is \(areLater)")
// print("areEarlier is \(areEarlier)")
// //-------------------------------------------------------------------------
// let formatter = DateFormatter()
// formatter.dateFormat = "yyyy-MM-dd"
// let victoryDate1 = formatter.date(from: "1945-05-09")!
// let calendar = Calendar.current
// let victoryDate2 = (calendar as NSCalendar)
//     .date(era: 1, year: 1945, month: 5, day: 9,
//     hour: 0, minute: 0, second: 0, nanosecond: 0)!
// print("victoryDate1 is \(victoryDate1)")
// print("victoryDate2 is \(victoryDate2)")
// //-------------------------------------------------------------------------
// let now = Date()
// let flags = NSCalendar.Unit(rawValue: UInt.max)
// let components = (Calendar.current as NSCalendar)
//     .components(flags, from: now)
// let year = components.year
// let month = components.month
// let day = components.day
// let hour = components.hour
// let minute = components.minute
// let second = components.second
// let dayOfWeek = components.weekday
// print("year = \(year!)")
// print("month = \(month!)")
// print("day = \(day!)")
// print("hour = \(hour!)")
// print("minute = \(minute!)")
// print("second = \(second!)")
// print("dayOfWeek = \(dayOfWeek!)")
// //-------------------------------------------------------------------------
// let now = Date()
// let calendar = Calendar.current
// let yesterday = calendar.date(
//     byAdding: Calendar.Component.day,
//     value: -1, to: now)!
// let tomorrow = calendar.date(
//     byAdding: .day, value: 1, to: now)!
// let nextMonth = calendar.date(
//     byAdding: .month, value: 1, to: now)!
// let nextYear = calendar.date(
//     byAdding: .year, value: 1, to: now)!
// print("now = \(now)")
// print("yesterday = \(yesterday)")
// print("tomorrow = \(tomorrow)")
// print("nextMonth = \(nextMonth)")
// print("nextYear = \(nextYear)")
// //-------------------------------------------------------------------------
// let calendar = Calendar.current
// let components = DateComponents(
//     year: 1945, month: 5, day: 9)
// let victoryDate = calendar.date(from: components)!
// let now = Date()
// let delta = calendar.dateComponents(
//     [.year, .day], from: victoryDate, to: now)
// let years = delta.year
// //years is 78
// let days = delta.day
// //days is 51
// let seconds = abs(victoryDate.timeIntervalSinceNow)
// //seconds is 2465893063.848812
// let minutes = seconds/60
// //minutes is 41098217.73081353
// print("years is \(years!)")
// print("days is \(days!)")
// print("minutes is \(minutes)")
// print("seconds is \(seconds)")
// //-------------------------------------------------------------------------
// let name = "Alex"
// let nameExists = !name.isEmpty
// //name exists is true
// let number = 7
// let isTen: Bool = number == 10
// //isTen is false
// print("nameExists is \(nameExists)")
// print("isTen is \(isTen)")
// //-------------------------------------------------------------------------
// let value1 = true
// let value2 = false
// let valueNot1 = !value1
// //valueNot1 is false
// let valueNot2 = !value2
// //valueNot2 is true
// let valueAnd = value1 && value2
// //valueAnd is false
// let valueOr = value1 || value2
// //valueOr is true
// print("valueNot1 is \(valueNot1)")
// print("valueNot2 is \(valueNot2)")
// print("valueAnd is \(valueAnd)")
// print("valueOr is \(valueOr)")
// //-------------------------------------------------------------------------
// let str = "true"
// let nsStr = str as NSString
// let boolValue = nsStr.boolValue
// //boolValue is true
// print("boolValue is \(boolValue)")
// //-------------------------------------------------------------------------
// et sunIsStar = true
// let str = "\(sunIsStar)"
// //str is "true"
// print("str is \(str)")
// //-------------------------------------------------------------------------
// let number: Int? = 42
// let nullInt: Int?  = nil
// let pi: Double? = 3.14
// let charA: Character? = "A"
// let hasValue: Bool? = true
// let noValue: Bool? = nil
// print(number!)
// print(String(describing: nullInt))
// print(pi!)
// print(charA!)
// print(hasValue!)
// print(String(describing: noValue))
// //-------------------------------------------------------------------------
// let n1: Int? = 42
// var exists = n1 != nil
// //exists is true
// print(exists)
// let n2: Int? = nil
// exists = n2 != nil
// //exists is false
// print(exists)
// let сharA: Character? = "A"
// if let сharA {
//     exists = true
//     print("charA is \(сharA)")
// } else {
//     exists = false
// }
// //exists is true
// print("exists is \(exists)")
// //-------------------------------------------------------------------------
// let n1: Int? = 42
// let value1 = n1!
// //value1 is 42, Int
// print("value1 is \(value1)")
// let n2: Int! = 37
// let value2: Int = n2
// //value2 is 37, Int
// print("value2 is \(value2)")
// let charA: Character? = "A"
// if let charA {
//     //charA is "A", Character
//     print("charA is \(charA)")
// }
// //-------------------------------------------------------------------------
// let one = (1, "one")
// var number = one.0
// //number is 1
// var str = one.1
// //str is "one"
// var two = (number: 2, str: "two")
// number = two.number
// //number is 2
// str = two.str
// //str is "two"
// two.number = 2000
// number = two.number
// //number is 2000
// print("one is \(one)")
// print("number is \(number)")
// print("str is \(str)")
// //-------------------------------------------------------------------------
// /Empty array
// let n1: [Int] = []
// let n2 = [Int]()
// // Single-dimensional array
// let n3: [Int] = [ 1, 2, 3 ]
// let n4 = [ 1, 2, 3 ]
// let s1 = [ "1", "2", "3" ]
// // Multidimensional array.
// let n5: [[Int]] = [[1, 2], [3, 4, 5]]
// var n6 = [[1, 2], [3, 4, 5]]
// n6[1][2] = 7
// print("n1 is \(n1)")
// print("n3 is \(n3)")
// print("n2 is \(n2)")
// print("s1 is \(s1)")
// print("n4 is \(n4)")
// print("n5 is \(n5)")
// print("n6 is \(n6)")
// //-------------------------------------------------------------------------
// var primeNumbers = [2, 5, 7]
// primeNumbers.append(11)
// //primeNumbers is [2, 5, 7, 11]
// print(primeNumbers)
// primeNumbers += [13, 17]
// //primeNumbers is [2, 5, 7, 11, 13, 17]
// print(primeNumbers)
// primeNumbers.insert(3, at: 1)
// //primeNumbers is [2, 3, 5, 7, 11, 13, 17]
// print(primeNumbers)
// primeNumbers.remove(at: 2)
// //primeNumbers is [2, 3, 7, 11, 13, 17]
// print(primeNumbers)
// primeNumbers[0...1] = [2, 3, 5]
// //primeNumbers is [2, 3, 5, 7, 11, 13, 17]
// print(primeNumbers)
// primeNumbers.removeFirst()
// //primeNumbers is [3, 5, 7, 11, 13, 17]
// print(primeNumbers)
// primeNumbers.removeLast(2)
// //primeNumbers is [3, 5, 7, 11]
// print(primeNumbers)
// primeNumbers.removeSubrange(1...2)
// //primeNumbers is [3, 11]
// print(primeNumbers)
// primeNumbers.removeAll()
// //primeNumbers is []
// print(primeNumbers)
// //-------------------------------------------------------------------------
// let numbers = [ 1, 2, 3 ]
// let length = numbers.count
// //length is 3
// print("length is \(length)")
// //-------------------------------------------------------------------------
// let numbers = [2, 3, 5, 7, 11, 13, 17]
// var str1 = ""
// for n in numbers {
//     str1 += (str1 == "" ? "" : " ") + "\(n)"
// }
// //str is "2 3 5 7 11 13 17"
// let str2 = numbers.reduce("") {
//     (str, n) in str + "\(n) "
// }
// //str2 is 2 3 5 7 11 13 17
// var str3 = ""
// numbers.forEach { n in
//     str3 += "\(n) "
// }
// //str3 is 2 3 5 7 11 13 17
// print("str1 is \(str1)")
// print("str2 is \(str2)")
// print("str3 is \(str3)")
// //-------------------------------------------------------------------------
// let numbers = [2, 3, 5, 7, 11, 13, 17]
// //the first method
// var str = ""
// for i in 0 ..< numbers.count {
//     str += "\(numbers[i])"
//     if i < (numbers.count - 1) {
//         str += " "
//     }
// }
// //str is "2 3 5 7 11 13 17"
// print("str is \(str)")
// //the second method
// str = ""
// for (i, number) in numbers.enumerated() {
//     str += "\(number)"
//     if i < (numbers.count - 1) {
//         str += " "
//     }
// }
// //str is "2 3 5 7 11 13 17"
// print("str is \(str)")
// //-------------------------------------------------------------------------
// let numbers = [2, 3, 5, 7]
// var str = ""
// for n in numbers.reversed() {
//     str += "\(n) "
// }
// //str is "7 5 3 2 "
// print("str is '\(str)'")
// //-------------------------------------------------------------------------
// let numbers = [2, 3, 5, 7, 11, 13, 17]
// let contain5 = numbers.contains(5)
// //contain5 is true
// let index5 = numbers.firstIndex(of: 5)!
// //index5 is 2
// let contain10 = numbers.contains(10)
// //contain10 is false
// let firstOver7 = numbers.first { $0 > 7 }
// //firstOver7 is 11
// let lastOver5 = numbers.last { $0 > 5 }
// //lastOver5 is 17
// print("contain5 is \(contain5)")
// print("index5 is \(index5)")
// print("contain10 is \(contain10)")
// print("firstOver is \(firstOver7 ?? -1)")
// print("lastOver5 is \(lastOver5 ?? -1)")
// //-------------------------------------------------------------------------
// var numbers = [ 11, 2, 5, 7, 3 ]
// //the first method
// numbers.sort()
// //numbers is [2, 3, 5, 7, 11]
// print(numbers)
// //the second method
// numbers = numbers.sorted { $0 < $1 }
// //numbers is [2, 3, 5, 7, 11]
// print(numbers)
// //descending
// numbers.sort { $1 < $0 }
// //numbers is [11, 7, 5, 3, 2]
// print(numbers)+€Ùm
// //-------------------------------------------------------------------------
// let numbers: [Int] = [1, 3, 2, 1, 3]
// let unique = Array(Set(numbers))
// //unique is [2, 3, 1]
// print("unique is \(unique)")
// //-------------------------------------------------------------------------
// let numbers = [ 1, 2, 3, 4, 5 ]
// let oddItems = numbers.filter({$0 % 2 == 1})
// //oddItems is [ 1, 3, 5 ]
// print(oddItems)
// let mans = [
//     Man(name: "Alex", age: 21),
//     Man(name: "Max", age: 19),
//     Man(name: "Pert", age: 15)]
// let voters = mans.filter(\.canVote)
// print(voters.map(\.name))
// //printed: ["Alex", "Max"]
// struct Man {
//     let name: String
//     let age: Int
//     var canVote: Bool {
//         age >= 18
//     }
// }
// //-------------------------------------------------------------------------
// var numbers1: [Int] = [ 1, 2, 3, 4, 5 ]
// let numbers2 = numbers1
// numbers1[0] = 10
// print("numbers1 is \(numbers1)")
// print("numbers2 is \(numbers2)")
// //-------------------------------------------------------------------------
// let firstNumbers = [ 2, 3, 5 ]
// let secondNumbers = [ 7, 11, 13 ]
// let allNumbers = firstNumbers + secondNumbers
// //allNumbers is [2, 3, 5, 7, 11, 13]
// print("allNumbers is \(allNumbers)")
// //-------------------------------------------------------------------------
// let numbers = [ 1, 2, 3, 4, 5 ]
// let numbers1 = numbers.map({ $0 * 3 })
// //numbers is [ 3, 6, 9, 12, 15 ]
// let anyNumbers = ["1", "2", "three"]
// let numbers2 = anyNumbers.map{Int($0)}
// //numbers2 is [Optional(1), Optional(2), nil]
// let numbers3 = anyNumbers.compactMap{Int($0)}
// //numbers3 is [1, 2]
// print("numbers1 is", numbers1)
// print("numbers2 is", numbers2)
// print("numbers3 is", numbers3)
// //-------------------------------------------------------------------------
// let numbers = [2, 3, 5, 7, 11]
// let numbersSum = numbers.reduce(0, +)
// // numbersSum is 28
// let strings = ["A", "B", "C"]
// let stringsSum = strings.reduce("", +)
// // stringsSum is 'ABC'
// print("numbersSum is \(numbersSum)")
// print("stringsSum is \(stringsSum)")
// //-------------------------------------------------------------------------
// let value = 5
// let count = 3
// let array = [Int](repeating: value, count: count)
// //array is [5, 5, 5]
// print("array is \(array)")
// //-------------------------------------------------------------------------
// let n1 = [ 1, 2, 3 ]
// let n2 = [ 1, 2, 3 ]
// let n3 = [ 3, 2, 1 ]
// let equal1 = n1 == n2
// //equal1 is true
// let equal2 = n1 == n3
// //equal2 is false
// let equal3 = n1.elementsEqual(n3)
// //equal3 is false
// print("equal1 is \(equal1)")
// print("equal2 is \(equal2)")
// print("equal3 is \(equal3)")
// //-------------------------------------------------------------------------
// let numbers = [ 2, 3, 5, 7, 11 ]
// let first2 = numbers.prefix(2)
// //first2 is [ 2, 3 ] ArraySlice<Int>
// let last3 = Array(numbers.suffix(3))
// //last3 is [ 5, 7, 11 ] Array<Int>
// let first3 = numbers[...2]
// //first3 is [ 2, 3, 5 ]
// let last4 = numbers[(numbers.count-4)...]
// //last4 is [ 3, 5, 7, 11 ]
// print(first2, type(of: first2))
// print(last3, type(of: last3))
// print(first3, type(of: first3))
// print(last4, type(of: last4))
// //-------------------------------------------------------------------------
// let numbers = [ 2, 3, 5, 7, 11 ]
// let min = numbers.min()!
// //min is 2
// let max = numbers.max()!
// //max is 11
// print("min is \(min)")
// print("max is \(max)")
// //-------------------------------------------------------------------------
// let numbers = [ 1, 2, 3, 4, 5 ]
// let allLess10 = numbers.allSatisfy { $0 < 10 }
// //everyLess10 is true
// let someMore3 = numbers.contains { $0 > 3 }
// //someMore3 is true
// let allOdd = numbers.allSatisfy { $0 % 2 == 1 }
// //allOdd is false
// print("allLess10 is \(allLess10)")
// print("someMore3 is \(someMore3)")
// print("allOdd is \(allOdd)")
// //-------------------------------------------------------------------------
// let count = 15
// var arInt = [Int](repeating: 0, count: count)
// arInt[0] = 1
// print(arInt)
// //-------------------------------------------------------------------------
// let numbers1 = [ 1, 2, 4, 3 ]
// let numbers2 = [ 1, 2, 3, 4, 5 ]
// let diff = numbers2.difference(from: numbers1)
// let numbers3 = numbers1.applying(diff) ?? []
// print("numbers3 is", numbers3)
// //numbers3 is [1, 2, 3, 4, 5]
// //-------------------------------------------------------------------------
// //Empty dictionary
// let d1 = [Int : String]()
// let d2: [Int : String] = [:]
// //init with some data
// let d3: [Int : String] = [1 : "one", 2 : "two"]
// let d4: [Int : _] = [1 : "one", 2 : "two"]
// let d5 = [1 : "one", 2 : "two"]
// let names = ["one", "two", "three"]
// let d6 = Dictionary(
//     uniqueKeysWithValues: zip(1..., names))
// //d5 is [2: "two", 3: "three", 1: "one"]
// print("d1 is \(d1)")
// print("d2 is \(d2)")
// print("d3 is \(d3)")
// print("d4 is \(d4)")
// print("d5 is \(d5)")
// print("d5 is \(d6)")
// //-------------------------------------------------------------------------
// let d = [1 : "one", 2 : "two"]
// let one = d[1]!
// //one is "one"
// let two = d[2]
// //two is Optional("two")
// let three = d[3]
// //three is nil
// let defaultValue =
//     d[3, default: "unknown"]
// //defaultValue is "unknown"
// print("one is \(one)")
// print("two is \(two!)")
// print("three is \(three ?? "nil")")
// print("defaultValue is \(defaultValue)")
// //-------------------------------------------------------------------------
// let dic: [Int : String?] = [
//     1 : "one", 2 : nil]
// let exists1 = dic[1] != nil
// //exists1 is true
// let exists2 = dic[2] != nil
// //exists2 is true
// let exists3 = dic[3] != nil
// //exists3 is false
// print("exists1 is \(exists1)")
// print("exists2 is \(exists2)")
// print("exists3 is \(exists3)")
// //-------------------------------------------------------------------------
// var dic = [Int : String]()
// dic[1] = "one"
// dic[2] = "two"
// //dic is [1: one, 2: two]
// print("dic is \(dic)")
// dic[3] = "tree"
// //dic is [1: one, 2: two, 3: tree]
// print("dic is \(dic)")
// let prior = dic.updateValue("three", forKey: 3)
// //dic is [1: one, 2: two, 3: three]
// //prior is "tree"
// print("dic is \(dic)")
// print("prior is '\(prior!)'")
// dic[3] = nil
// //dic is [1: one, 2: two]
// print("dic is \(dic)")
// dic.removeValue(forKey: 2)
// //dic is [1: one]
// print("dic is \(dic)")
// dic.removeAll()
// //dic is empty
// print("dic is \(dic)")
// //-------------------------------------------------------------------------
// let dic = [1 : "one", 2 : "two"]
// var str = ""
// for (key, value) in dic {
//     str += (str == "" ? "[" : ", ") +
//         "\(key) : \"\(value)\""
//     }
//     str += "]"
// //str is "[2 : "two", 1 : "one"]"
// print("str is \(str)")
// str = ""
// for value in dic.values {
//     str += (str == "" ? "" : ", ") + value
// }
// //str is "two, one"
// print("str is \(str)")
// //-------------------------------------------------------------------------
// let dic = [1 : "one", 2 : "two"]
// let count = dic.count
// //count is 2
// let isEmpty = dic.isEmpty
// //isEmpty is false
// print("count is \(count)")
// print("isEmpty is \(isEmpty)")
// //-------------------------------------------------------------------------
// let dic = [1: "A", 2: "B"]
// let value1 = dic[3]
// //value1 is nil
// let value2 = dic[3, default: "-"]
// //value2 is "-"
// let chars = "ABCBA"
// var charCounts: [Character: Int] = [:]
// for c in chars {
//     charCounts[c, default: 0] += 1
// }
// //charCounts is ["C": 1, "B": 2, "A": 2]
// print("value1 is \(value1 ?? "nil")")
// print("value2 is \(value2)")
// print("charCounts is \(charCounts)")
// //-------------------------------------------------------------------------
// let dic = [1 : "one", 2 : "two"]
// let keys = dic.keys
// //keys is [1, 2]
// print("keys is \(keys)")
// //-------------------------------------------------------------------------
// let dic = [1 : "one", 2 : "two"]
// let values = dic.values
// //values is ["one", "two"]
// print("values is \(values)")
// //-------------------------------------------------------------------------
// let dic = [1: "one", 2: "two", 3: "three"]
// let oddDic = dic.filter {
//     $0.key % 2 == 1
// }
// //addDic is [3: "three", 1: "one"]
// print(oddDic)
// //-------------------------------------------------------------------------
// let dic = [1: "A", 2: "B", 3: "A"]
// let value = "A"
// let keys = (dic as NSDictionary)
//     .allKeys(for: value)
// //keys is [3, 1]
// print("keys is \(keys)")
// //-------------------------------------------------------------------------
// let dic = [3: "three", 1: "one", 2: "two"]
// let sortedDic = dic.sorted{ $0.0 < $1.0 }
// //sortedDic is [1: one, 2: two, 3: three]
// print(sortedDic)
// //-------------------------------------------------------------------------
// let dic = [3: "B", 1: "C", 2: "A"]
// let sortedDic = dic.sorted{ $0.1 < $1.1 }
// //sortedDic is [2: "A", 3: "B", 1: "C"]
// print(sortedDic)
// //-------------------------------------------------------------------------
// let dic = [1: "one", 2: "two"]
// let upperDic = dic.mapValues {
//     $0.uppercased()
// }
// //upperDic is [2: "TWO", 1: "ONE"]
// let chars = ["A": "66", "B": "67", "C": "?"]
// let charCodes = chars.compactMapValues { Int($0) }
// //charCodes is ["B": 67, "A": 66]
// print("upperDic is", upperDic)
// print("charCodes is", charCodes)
// //-------------------------------------------------------------------------
// let d1 = [1: "one"]
// let d2 = [2: "two"]
// let d3 = [3: "three"]
// var dAll = d1.merging(d2) { (current, _) in current }
// //dAll is [1: "one", 2: "two"]
// print("dAll is \(dAll)")
// d3.forEach { (key, value) in dAll[key] = value }
// //dAll is [1: "one", 3: "three", 2: "two"]
// print("dAll is \(dAll)")
// //-------------------------------------------------------------------------
// let numbers = [ 1, 2, 3, 4, 5 ]
// let dic = Dictionary(grouping: numbers) {
//     $0 % 2 == 0 ? "even" : "odd"
// }
// //dic1 is ["odd": [1, 3, 5], "even": [2, 4]]
// print("dic is \(dic)")
// //-------------------------------------------------------------------------
// let intSet: Set<Int> = [1, 2, 3]
// let strSet: Set = ["one", "two", "three"]
// print("intSet is \(intSet)")
// print("strSet is \(strSet)")
// //-------------------------------------------------------------------------
// let chars: Set<Character> = ["A", "B", "C", "D"]
// let containA = chars.contains("A")
// //containA is true
// let containE = chars.contains("E")
// //containE is False
// let chars2: Set<Character> = ["A", "B"]
// let containAll = chars.isSuperset(of: chars2)
// //containAll is true
// print("containA is \(containA)")
// print("containE is \(containE)")
// print("containAll is \(containAll)")
// //-------------------------------------------------------------------------
// var set: Set<Character> = ["A", "B", "C"]
// set.insert("D")
// //set is ["A", "B", "C", "D"]
// print(set)
// set.remove("A")
// //set is ["B", "C", "D"]
// print(set)
// set.removeFirst()
// //set is ["C", "D"]
// print(set)
// set.removeAll()
// //set is []
// print(set)
// //-------------------------------------------------------------------------
// let chars: Set<Character> = ["A", "B", "C", "D"]
// var str = ""
// for c in chars {
//     str += (str == "" ? "" : " ") + "\(c)"
// }
// //str is "B A C D"
// print("str is \(str)")
// //-------------------------------------------------------------------------
// let first: Set = [1, 2]
// let second: Set = [1, 2]
// let third: Set = [1, 2, 3]
// let isEqual = first == second
// //isEqual is true
// let isIntersects = !first.isDisjoint(with: third)
// //isIntersects is true
// let isSubset = third.isSubset(of: first)
// //isSubset is false
// print("isEqual is \(isEqual)")
// print("isIntersects is \(isIntersects)")
// print("isSubset is \(isSubset)")Zd
// //-------------------------------------------------------------------------
// let set: Set = [1, 2, 3]
// let oddSet = set.filter { $0 % 2 == 1 }
// //oddSet is [3, 1]
// print("oddSet is \(oddSet)")
// //-------------------------------------------------------------------------
// let chars: Set<Character> = ["A", "B", "C", "D"]
// var str = ""
// for c in chars {
//     str += (str == "" ? "" : " ") + "\(c)"
// }
// //str is "B A C D"
// print("str is \(str)")
// str = ""
// for c in chars.sorted() {
//     str += (str == "" ? "" : " ") + "\(c)"
// }
// //str is "A B C D"
// print("str is \(str)")
// //-------------------------------------------------------------------------
// let first: Set = [1, 2, 3]
// let second: Set = [3, 4, 5]
// var third = first.union(second)
// //third is [1, 2, 3, 4, 5]
// print("third is \(third)")
// third = first.subtracting(second)
// //third is [1, 2]
// print("third is \(third)")
// third = first.intersection(second)
// //third is [3]
// print("third is \(third)")
// third = first.symmetricDifference(second)
// //third is [1, 2, 4, 5]
// print("third is \(third)")
// //-------------------------------------------------------------------------
// let set: Set = [1, 2, 3]
// let set3 = set.map { $0 * 3 }
// //set3 is [6, 9, 3]
// print("set3 is \(set3)")
// //-------------------------------------------------------------------------
// struct Stack<Element> {
//     var items = [Element]()
//     mutating func push(_ item: Element) {
//         items.append(item)
//     }
//     mutating func pop() -> Element? {
//         return items.popLast()
//     }
//     func peek() -> Element? {
//         return items.last
//     }
// }
// var intStack = Stack<Int>()
// intStack.push(1)
// intStack.push(3)
// intStack.push(5)
// let top = intStack.peek()!
// //top is 5
// let first = intStack.pop()!
// //first is 5
// let second = intStack.pop()!
// //second is 3
// let third = intStack.pop()!
// //third is 1
// print("top is \(top)")
// print("first is \(first)")
// print("second is \(second)")
// print("third is \(third)")
// //-------------------------------------------------------------------------
// struct Queue<Element> {
//     var items = [Element]()
//     mutating func add(_ item: Element) {
//         items.append(item)
//     }
//     mutating func poll() -> Element {
//         return items.removeFirst()
//     }
//     func peek() -> Element? {
//         return items.first
//     }
// }
// var intQueue = Queue<Int>()
// intQueue.add(1)
// intQueue.add(3)
// intQueue.add(5)
// let top = intQueue.peek()!
// //top is 1
// let first = intQueue.poll()
// //first is 1
// let second = intQueue.poll()
// //second is 3
// let third = intQueue.poll()
// //third is 5
// print("top is \(top)")
// print("first is \(first)")
// print("second is \(second)")
// print("third is \(third)")
// //-------------------------------------------------------------------------
// func getLatitude() -> Int {
//     return (-90...90).randomElement()!
// }
// let l = getLatitude()
// var location = ""
// if l == 0 {
//     location = "Equator"
// } else if l == 90 {
//     location = "north Pole"
// } else if l == -90 {
//     location = "south Pole"
// } else {
//     location = "not at the Equator or Pole"
// }
// print("latitude \(l): \(location)")
// //-------------------------------------------------------------------------
// func getLatitude() -> Int {
//     return (-90...90).randomElement()!
// }
// let l = getLatitude()
// var location = ""
// if l == 0 {
//     location = "Equator"
// } else if l == 90 {
//     location = "north Pole"
// } else if l == -90 {
//     location = "south Pole"
// } else {
//     location = "not at the Equator or Pole"
// }
// print("latitude \(l): \(location)")
//
// if (latitude == 0) //Error: Expected '{' after 'if' condition
//     location = "Equator"
// //-------------------------------------------------------------------------
// let A = 3
// let B = 5
// let C = 7
// if (C >= A && C >= B) {
//     print("nothing is larger than C")
// }
// if (!(A >= B || A >= C)) {
//     print("A is the smallest")
// }
// //-------------------------------------------------------------------------
// func getNumber() -> Int {
//     return (-42...42).randomElement()!
// }
// let n = getNumber()
// let classify = (n > 0) ? "positive" : "negative"
// //classify is "negative"
// print("number \(n) is \(classify)")
// //-------------------------------------------------------------------------
// func getLatitude() -> Int {
//     return (-90...90).randomElement()!
// }
// let l = getLatitude()
// let location = if l == 0 {
//     "Equator"
// } else if l == 90 {
//     "north Pole"
// } else if l == -90 {
//     "south Pole"
// } else {
//     "not at the Equator or Pole"
// }
// print("latitude \(l): \(location)")
// //-------------------------------------------------------------------------
// func getLatitude() -> Int {
//     return (-90...90).randomElement()!
// }
// let l = getLatitude()
// let location = if l == 0 {
//     "Equator"
// } else if l == 90 {
//     "north Pole"
// } else if l == -90 {
//     "south Pole"
// } else {
//     "not at the Equator or Pole"
// }
// print("latitude \(l): \(location)")
// //-------------------------------------------------------------------------
// func getLatitude() -> Int {
//     return (-90...90).randomElement()!
// }
// let l = getLatitude()
// let location = if l == 0 {
//     "Equator"
// } else if l == 90 {
//     "north Pole"
// } else if l == -90 {
//     "south Pole"
// } else {
//     "not at the Equator or Pole"
// }
// print("latitude \(l): \(location)")
// //-------------------------------------------------------------------------
// func getPoint() -> (Int, Int) {
//     return (5, 5)
// }
// var str: String
// let point = getPoint()
// switch (point) {
//     case (0, 0):
//         str = "(0, 0) point"
//     case (_, 1):
//         str = "(\(point.0), 1) point"
//     case (1, let y):
//         str = "(1, \(y)) point"
//     case (let x, let y) where x == y:
//         str = "(\(x), \(y)) point"
//     default:
//         str = "other point"
// }
// //str is (5, 5) point
// print("str is \(str)")
// //-------------------------------------------------------------------------
// class Stack<T> {
//     var items: [T?] = [T?]()
//     func push(_ item: T) {
//         items.append(item)
//     }
//     func pop() -> T? {
//         guard !items.isEmpty else {
//             return nil
//         }
//         return items.removeLast()
//     }
// }
// let stack = Stack<Int>()
// stack.push(1)
// let n1 = stack.pop()
// //n1 is Optional(1)
// let n2 = stack.pop()
// //n2 is nil
// print("n1 is \(n1!)")
// print("n2 is", n2 as Any)
// //-------------------------------------------------------------------------
// var sum10 = 0
// //C-style for statement is deprecated
// for i in 1...10 {
//     sum10 += i
// }
// //sum10 is 55
// print("sum10 is \(sum10)")
// //-------------------------------------------------------------------------
// var sum10 = 0
// //C-style for statement is deprecated
// for i in 1...10 {
//     sum10 += i
// }
// //sum10 is 55
// print("sum10 is \(sum10)")
// //-------------------------------------------------------------------------
// var i = 5
// var f5 = 1
// while i > 1 {
//     f5 *= i
//     i -= 1
// }
// //f5 is 120
// print("f5 is \(f5)")
// //-------------------------------------------------------------------------
// var i = 7
// var f7 = 1
// repeat {
//     f7 *= i
//     i -= 1
// } while i > 0
// //f7 is 5040
// print("f7 is \(f7)")
// //-------------------------------------------------------------------------
// for () {
//     //statements
// }
// while true {
//     //statements
// }
// repeat {
//     //statements
// } while true
// //-------------------------------------------------------------------------
// let numbers = [ 2, 3, 5, 7, 11, 13, 17, 19 ]
// var str = ""
// for i in 0 ..< numbers.count {
//     if i % 2 == 1 {
//         continue
//     }
//     str += (str == "" ? "" : "-") + "\(numbers[i])"
// }
// //str is "2-5-11-17"
// print("str is \(str)")
// //-------------------------------------------------------------------------
// let numbers = [ 2, 3, 5, 7, 11, 13, 17, 19 ]
// var str = ""
// for number in numbers {
//     if number > 10 {
//         break
//     }
//     str += (str == "" ? "" : "-") + "\(number)"
// }
// //str is "2-3-5-7"
// print("str is \(str)")
// //-------------------------------------------------------------------------
// func printSomeData(_ printAll: Bool) {
//     printMainData()
//     if !printAll {
//         return
//     }
//     printOtherData()
// }
// func printMainData() {
//     print("printMainData")
// }
// func printOtherData() {
//     print("printOtherData")
// }
// printSomeData(true)
// //-------------------------------------------------------------------------
// func containNumber(_ numbers: [Int], _ number: Int) -> Bool {
//     for currentNumber in numbers {
//         if currentNumber == number {
//             return true
//         }
//     }
//     return false
// }
// let numbers = [1, 2, 3]
// let isContain2 = containNumber(numbers, 2)
// //isContain2 is true
// let isContain4 = containNumber(numbers, 4)
// //isContain4 is false
// print("isContain2 is \(isContain2)")
// print("isContain4 is \(isContain4)")
//
// //-------------------------------------------------------------------------
// var firstMatchValue = -1
// let array1 = [1, 2, 3]
// let array2 = [2, 3, 4]
// firstLoop: for value1 in array1 {
//     for value2 in array2 {
//         if value1 == value2 {
//             firstMatchValue = value2
//             break firstLoop
//         }
//     }
// }
// //firstMatchValue is 2
// print(firstMatchValue)
// //-------------------------------------------------------------------------
// class Man {
//     var name: String
//     var country: String
//     init(_ name: String = "unknown",
//         country: String = "unknown") {
//         self.name = name
//         self.country = country
//     }
// }
// let man1 = Man()
// //man1.name is "unknown"
// //man1.country is "unknown"
// let man2 = Man("Vladimir")
// //man2.name is "Vladimir"
// //man2.country is "unknown"
// let man3 = Man(country: "Russia")
// //man3.name is "unknown"
// //man3.country is "Brazil"
// let man4 = Man("Vladimir", country: "Russia")
// //man4.name is "Vladimir"
// //man4.country is "Brazil"
// print(man1.name + " " + man1.country + "\n")
// print(man2.name + " " + man2.country + "\n")
// print(man3.name + " " + man3.country + "\n")
// print(man4.name + " " + man4.country + "\n")
// //-------------------------------------------------------------------------
// class Man {
//     var name = ""
// }
// let man = Man()
// print(man)
//
// class Man {
//     var name: String
//     init() {
//         name = "unknown"
//     }
// }
// let man = Man()
// //man.name is "unknown"
// print("name is \(man.name)")
// //-------------------------------------------------------------------------
// class Man {
//     var name: String
//     init(name: String) {
//         self.name = name
//     }
// }
// let man = Man(name: "Alex")
// //man.name is "Alex"
// print("name is \(man.name)")
// //-------------------------------------------------------------------------
// class Man {
//     var firstName: String
//     var lastName: String
//     init(_ firstName: String, _ lastName: String) {
//         self.firstName = firstName
//         self.lastName = lastName
//     }
// }
// let man = Man("Victor", "Titov")
// print("firstName is \(man.firstName)")
// //-------------------------------------------------------------------------
// class Man {
//     var name: String
//     init (_ name: String) {
//         self.name = name
//     }
// }
// class Employee: Man {
//     var position: String
//     init(_ name: String, _ position: String) {
//         self.position = position
//         super.init(name)
//     }
// }
// let employee = Employee("Max", "booker")
// print("position is \(employee.position)")
// //-------------------------------------------------------------------------
// class Man {
//     var name: String
//     var country: String?
//     init(name: String) {
//         self.name = name
//     }
//     convenience init(_ name: String, _ country: String) {
//         self.init(name: name)
//         self.country = country
//     }
// }
// let man = Man("Vladimir", "Russia")
// print("country is \(man.country!)")
// //-------------------------------------------------------------------------
// class Man {
//     var name: String
//     init (_ name: String) {
//         self.name = name
//     }
// }
// class Employee: Man {
//     var position: String
//     override init(_ name: String) {
//         self.position = "unknown"
//         super.init(name)
//     }
// }
// let employee = Employee("Max")
// //employee.position is "unknown"
// print("position is \(employee.position)")
// //-------------------------------------------------------------------------
// class Calc {
//     var lastSum = 0
//     func getSum1(_ n1: Int, _ n2: Int) -> Int {
//         lastSum = n1 + n2
//         return lastSum
//     }
//     func getSum2(_ n1: Int, _ n2: Int) -> Int {
//         n1 + n2
//     }
// }
// let calc = Calc()
// let sum1 = calc.getSum1(5, 3)
// //sum1 is 8
// let sum2 = calc.getSum2(2, 3)
// //sum1 is 5
// print("sum1 = \(sum1)")
// print("sum2 = \(sum2)")
// print("calc.lastSum = \(calc.lastSum)")
// //-------------------------------------------------------------------------
// class Calc {
//     var lastSum = 0
//     func getSum1(_ n1: Int, _ n2: Int) -> Int {
//         lastSum = n1 + n2
//         return lastSum
//     }
//     func getSum2(_ n1: Int, _ n2: Int) -> Int {
//         n1 + n2
//     }
// }
// let calc = Calc()
// let sum1 = calc.getSum1(5, 3)
// //sum1 is 8
// let sum2 = calc.getSum2(2, 3)
// //sum1 is 5
// print("sum1 = \(sum1)")
// print("sum2 = \(sum2)")
// print("calc.lastSum = \(calc.lastSum)")
// //-------------------------------------------------------------------------
// class Greeting {
//     func sayGoodby() {
//         print("Goodby!")
//     }
// }
// let greeting = Greeting()
// greeting.sayGoodby()
//
// class Greeting {
//     static func sayGoodby(_ message: String = "Goodby!") {
//         print(message)
//     }
//     static func sayHello(_ message: String = "ello!") {
//         print(message)
//     }
// }
// Greeting.sayGoodby()
// //printed "Goodby!"
// Greeting.sayGoodby("Hi")
// //printed "Hi"
// //-------------------------------------------------------------------------
// class Calc {
//     func getAvg (_ values: Double...) -> Double {
//         if values.isEmpty {
//             return 0
//         }
//         var sum: Double = 0
//         for value in values {
//             sum += value
//         }
//         return sum/Double(values.count)
//     }
// }
// let calc = Calc()
// let avg = calc.getAvg(1, 2, 3, 4)
// //avg is 2.5
// print("avg is \(avg)")
// //-------------------------------------------------------------------------
// class Greeting {
//     func sayGoodby(to name1: String, and name2: String) {
//         print("Goodby \(name1) and \(name2)")
//     }
//     func sayHello(to name: String) {
//         print("Hello \(name)")
//     }
// }
// let greeting = Greeting()
// greeting.sayGoodby(to: "Fedor", and: "Alex")
// //prints "Goodby Fedor and Alex"
// //-------------------------------------------------------------------------
// class Calc {
//     func sum(_ n1: Int, _ n2: Int) -> Int {
//         return n1 + n2
//     }
// }
// let calc = Calc()
// let value = calc.sum(3, 2)
// //value is 5
// print("value is \(value)")
// //-------------------------------------------------------------------------
// class Log {
//     var lastData = ""
//     func print5(_ data: inout String) {
//         lastData = data
//         if data.count > 5 {
//             let end = data.index(data.startIndex, offsetBy: 4)
//             data = String(data[data.startIndex...end])
//         }
//         print(data)
//     }
// }
// let log = Log()
// var data = "1234567"
// log.print5(&data)
// //printed "12345"
// print("lastData = \(log.lastData)")
// //-------------------------------------------------------------------------
// class Swap {
//     func strings(_ s1: inout String, _ s2: inout String) {
//         let tmp = s1
//         s1 = s2
//         s2 = tmp
//     }
// }
// var s1 = "A"
// var s2 = "B"
// let swap = Swap()
// swap.strings(&s1, &s2)
// //s1 is "B", s2 is "A"
// print("s1 is \(s1), s2 is \(s2)")
// //-------------------------------------------------------------------------
// class Calc {
//     class func getMin(_ values: Int...) -> Int {
//         if values.count == 0 {
//             return 0
//         }
//         var min = values[0]
//         for i in 1 ..< values.count {
//             if values[i] < min {
//                 min = values[i]
//             }
//         }
//         return min
//     }
// }
// let min = Calc.getMin(3, 2, 5, 1, 4)
// //min is 1
// print("min is \(min)")
// //-------------------------------------------------------------------------
// class ArrayAssistant {
//     private var data: [Int]
//     init (_ data: [Int]) {
//         self.data = data
//     }
//     func getFirstLast(_ ar: [Int]) -> (first: Int, last: Int) {
//         var first = -1
//         var last = -1
//         let len = data.count
//         if (len > 0) {
//             first = data[0]
//             last = data[len - 1]
//         }
//         return (first, last)
//     }
// }
// let ar = [2, 3, 5]
// let assistant = ArrayAssistant(ar)
// let result = assistant.getFirstLast(ar)
// //result.first is 2
// //result.last is 5
// print("first = \(result.first)")
// print("last = \(result.last)")
// //-------------------------------------------------------------------------
// struct SelfDestructingMessage: ~Copyable {
//     private let text: String
//     init(text: String) {
//         self.text = text
//     }
//     consuming func read() {
//         print(text)
//     }
// }
// let message = SelfDestructingMessage(
//     text: "Destroy after reading!")
// message.read()
// //message.read() //<- Error
// /*message' consumed more than once
// Consuming functions take full ownership of an object and manage its life cycle, unloading the object from memory after completing its work. */
// //-------------------------------------------------------------------------
// class Point {
//     var x: Int = 0
//     var y: Int = 0
// }
// let point = Point()
// //x and y is 0 (before assigning)
// print("(\(point.x), \(point.y))")
// point.x = 3
// point.y = 7
// print("(\(point.x), \(point.y))")
// //-------------------------------------------------------------------------
// class Square {
//     var side: Double = 0
//     var area: Double {
//         get {
//             return side * side
//         }
//         set {
//             side = sqrt(newValue)
//         }
//     }
// }
// let square = Square()
// square.side = 2
// //square.area is 4
// print("area is \(square.area)")
// square.area = 9
// //square.side is 3
// print("side is \(square.side)")
// //-------------------------------------------------------------------------
// class Lesson {
//     //type property
//     static var lessonsCount = 0
//     init() {
//         Lesson.lessonsCount += 1
//     }
// }
// let lesson1 = Lesson()
// //Lesson.lessonsCount is 1
// let lesson2 = Lesson()
// //Lesson.lessonsCount is 2
// print("lessonsCount is \(Lesson.lessonsCount)")
// //-------------------------------------------------------------------------
// class FilmsList {
//     init() {
//         //some long operation
//     }
// }
// class MediaPlayer {
//     public lazy var filmsList = FilmsList()
// }
// let player = MediaPlayer()
// //filmsList property not yet been created
// //It will be created after call filmList property
// let filmList = player.filmsList
// print("filmList is \(filmList)")
// //-------------------------------------------------------------------------
// class Cash {
//     var sum: Double = 0.0 {
//         willSet {
//             print("cash sum: \(newValue)")
//         }
//         didSet {
//             print("adds: \(sum - oldValue)")
//         }
//     }
// }
// let cash = Cash()
// cash.sum = 100
// cash.sum *= 3
// //output:
// //cash sum: 100.0
// //adds: 100.0
// //cash sum: 300.0
// //adds: 200.0
// print("sum is \(cash.sum)")
// //-------------------------------------------------------------------------
// class Cash {
//     var sum: Double = 0.0 {
//         willSet {
//             print("cash sum: \(newValue)")
//         }
//         didSet {
//             print("adds: \(sum - oldValue)")
//         }
//     }
// }
// let cash = Cash()
// cash.sum = 100
// cash.sum *= 3
// //output:
// //cash sum: 100.0
// //adds: 100.0
// //cash sum: 300.0
// //adds: 200.0
// print("sum is \(cash.sum)")
// //-------------------------------------------------------------------------
// class Сircle {
//     var radius: Double = 0
//     var area: Double {
//         return Double.pi * pow(radius, 2)
//     }
// }
// let circle = Сircle()
// circle.radius = 2
// //circle.area is 12.56
// print("area is \(circle.area)")
// //-------------------------------------------------------------------------
// class PowerOfTwo {
//     subscript(i: Int) -> Int {
//         return Int(pow(Double(2), Double(i)))
//     }
// }
// let power2 = PowerOfTwo()
// let p2 = power2[2]
// //p2 is 4
// let p8 = power2[8]
// //p8 is 256
// let p16 = power2[16]
// //p16 is 65536
// print("p2 is \(p2)")
// print("p8 is \(p8)")
// print("p16 is \(p16)")
// //-------------------------------------------------------------------------
// class Car {
//     var model: String
//     var year: Int
//     var price: Int
//     init(_ model: String, _ year: Int, _ price: Int) {
//         self.model = model
//         self.year = year
//         self.price = price
//     }
// }
// class ToyotaPrices {
//     private var cars: [Car] = [Car]()
//     subscript(model: String, year: Int = 2012) -> Int {
//         get {
//             if let car = getCar(model, year) {
//                 return car.price
//             }
//             return 0
//         }
//         set {
//             if let car = getCar(model, year) {
//                 car.price = newValue
//             }
//             let car = Car(model, year, newValue)
//             cars.append(car)
//         }
//     }
//     private func getCar(_ model: String, _ year: Int) -> Car? {
//         let arCars = cars.filter(
//             {$0.model == model && $0.year == year})
//         if arCars.isEmpty {
//             return nil
//         }
//         return arCars[0]
//     }
// }
// let prices = ToyotaPrices()
// prices["Rush", 2012] = 16818
// prices["Land Cruiser", 2014] = 54988
// let priceRAV4 = prices["RAV4", 2015]
// //priceRAV4 is 0
// let priceRush = prices["Rush"] //year is 2012
// //priceRush is 16818
// print("priceRAV4 is \(priceRAV4)")
// print("priceRush is \(priceRush)")
// //-------------------------------------------------------------------------
// class Country {
//     var info: [String: Any]
//     init(info: [String: Any]) {
//         self.info = info
//     }
//     subscript<T>(key: String) -> T? {
//         return info[key] as? T
//     }
// }
// let france = Country(info: [
//         "Name" : "France", "Population" : 66_991_000])
// let name: String? = france["Name"]
// //name is "France"
// let population: Int? = france["Population"]
// //population is 66991000
// print("name is \(name!)")
// print("population is \(population!)")
// //-------------------------------------------------------------------------
// class Settings {
//     private static var values = [String: Any]()
//     public static subscript(_ name: String) -> Any? {
//         get {
//             return values[name]
//         }
//         set {
//             print("Adding \(name): \(newValue ?? "nil")")
//             values[name] = newValue
//         }
//     }
// }
// Settings["host"] = "192.168.100.1"
// Settings["port"] = 3306
// print("host is", Settings["host"]!)
// //-------------------------------------------------------------------------
// class Shape {
//     var lineCount: Int
//     init(lineCount: Int) {
//         self.lineCount = lineCount
//     }
// }
// class Square: Shape {
//     var sideLength: Int
//     init (sideLength: Int) {
//         self.sideLength = sideLength
//         super.init(lineCount: 4)
//     }
// }
// let square = Square(sideLength: 5)
// //square.lineCount is 4
// print("lineCount is \(square.lineCount)")
// //-------------------------------------------------------------------------
// protocol Shape {
//     var lineCount: Int { get set }
//     func getArуa() -> Int
// }
// class Square: Shape {
//     var lineCount: Int
//     var sideLength: Int
//     init (sideLength: Int) {
//         self.sideLength = sideLength
//         lineCount = 4
//     }
//     func getArуa() -> Int {
//         return sideLength * sideLength
//     }
// }
// let square = Square(sideLength: 5)
// let area = square.getArуa()
// //area is 25
// print("area is \(area)")
// //-------------------------------------------------------------------------
// class Shape {
//     var name: String {
//         return "Shape"
//     }
// }
// class Square: Shape {
//     override var name: String {
//         return "Square"
//     }
// }
// let square = Square()
// //implicit method
// var shape: Shape = square
// //explicit method
// shape = square as Shape
// let name = shape.name
// //name is "Square"
// print("name is \(name)")
// //-------------------------------------------------------------------------
// class Shape { }
// class Square: Shape { }
// class RedSquare: Square { }
// let square = Square()
// let shape = square as Shape
// //shape is Shape
// let redSquare = square as? RedSquare
// //redSquare is nil
// print("shape is \(shape)")
// print("redSquare is", redSquare ?? "nil")
// //-------------------------------------------------------------------------
// class Shape { }
// class Square: Shape { }
// class RedSquare: Square { }
// let square = Square()
// let isShape = square is Shape
// //isShape is true
// let isRedSquare = square is RedSquare
// //isRedSquare is false
// print("isShape is \(isShape)")
// print("isRedSquare is \(isRedSquare)")
// //-------------------------------------------------------------------------
// class Shape {
//     func getArуa() -> Int {
//         return 0
//     }
// }
// class Square: Shape {
//     var sideLength: Int
//     init (sideLength: Int) {
//         self.sideLength = sideLength
//     }
//     override func getArуa() -> Int {
//         if sideLength > 0 {
//             return sideLength * sideLength
//         }
//         //call base class method
//         return super.getArуa()
//     }
// }
// let square = Square(sideLength: 5)
// let area = square.getArуa()
// //area is 25
// print("area is \(area)")
// //-------------------------------------------------------------------------
// class Shape {
//     var lineCount: Int {
//         return 0
//     }
// }
// class Square: Shape {
//     override var lineCount: Int {
//         return 4
//     }
// }
// let square = Square()
// //square.lineCount is 4
// print("lineCount is \(square.lineCount)")
// //-------------------------------------------------------------------------
// class Shape {
//     var lineCount = 0
// }
// class Square: Shape {
//     override var lineCount: Int {
//         willSet {
//             if newValue != 4 {
//                 print("Square line count != 4 :)")
//         }
//     }
// }
// }
// let square = Square()
// square.lineCount = 5
// print("lineCount is \(square.lineCount)")
// //-------------------------------------------------------------------------
// class Shape { }
// final class Square: Shape { }
// class RedSquare: Square { } //<- Error
// //-------------------------------------------------------------------------
// class Shape {
//     func getArуa() -> Int {
//         return 0
//     }
// }
// class Square: Shape {
//     var sideLength: Int = 0
//     final override func getArуa() -> Int {
//         return sideLength * sideLength
//     }
// }
// class RedSquare: Square {
//     //  override func getArуa() -> Int {//<- Error
//     //  }
// }
// let square = Square()
// square.sideLength = 4
// let area = square.getArуa()
// //area is 16
// print("area is \(area)")
// //-------------------------------------------------------------------------
// class Shape {
//     static var maxUID = 0
//     private var UID: Int
//     func getUID() -> Int {
//         return UID
//     }
//     init() {
//         Shape.maxUID += 1
//         UID = Shape.maxUID
//     }
// }
// class Square: Shape {
//     override init () {
//         super.init()
//         //UID += 1 //<- Error
//         //in the same source file
//     }
// }
// let square = Square()
// let uid = square.getUID()
// //uid is 2
// //uid = square.UID //<- Error
// //because the source file is the same
// print("uid is \(uid)")
// //-------------------------------------------------------------------------
// //Definition
// class SomeClass {}
// //Initialization
// let someClass = SomeClass()
// print(someClass)
// //-------------------------------------------------------------------------
// class Resources {
//     //It called automatically
//     //when class instance is deallocated
//     deinit {
//         //release allocated resources
//         //eg close the connection to the database,
//         //close files, etc.
//         print("deinit")
//     }
// }
// let res = Resources()
// print("res is \(res)")
// //-------------------------------------------------------------------------
// protocol GameListener {
//     func gameStarted(_ name: String)
// }
// class Game {
//     fileprivate var listeners: [GameListener] = []
//     func addListener(_ listener: GameListener) {
//         listeners.append(listener)
//     }
//     var name: String
//     func start() {
//         for listener in listeners {
//             listener.gameStarted(name)
//         }
//     }
//     init (name: String) {
//         self.name = name
//     }
// }
// class Statistic: GameListener {
//     var startsCount: Int = 0
//     var lastGame: String = ""
//     func gameStarted(_ name: String) {
//         startsCount += 1
//         lastGame = name
//     }
// }
// let statistic = Statistic()
// let heroes = Game(name: "Heroes")
// let doom = Game(name: "Doom")
// //subscribe to events
// heroes.addListener(statistic)
// doom.addListener(statistic)
// doom.start()
// heroes.start()
// //statistic.lastGame is "Heroes"
// //statistic.startsCount is 2
// print("lastGame is \(statistic.lastGame)")
// print("startsCount is \(statistic.startsCount)")
// //-------------------------------------------------------------------------
// class Calendar {
//     let months = 12
// }
// let calendar = Calendar()
// let months = calendar.months
// //months is 12
// print("months is \(months)")
// //-------------------------------------------------------------------------
// class SomeClass {
//     func create() -> NestedClass {
//         return NestedClass()
//     }
//     class NestedClass { }
// }
// let someClass = SomeClass()
// let nested1 = someClass.create()
// let nested2 = SomeClass.NestedClass()
// print("nested1 is \(nested1)")
// print("nested2 is \(nested2)")
// //-------------------------------------------------------------------------
// class Car {}
// let car1 = Car()
// let car2 = Car()
// let car3 = car1
// let equal1 = car1 === car2
// //equal1 is false
// let equal2 = car1 === car3
// //equal1 is true
// print("equal1 is \(equal1)")
// print("equal2 is \(equal2)")
// //-------------------------------------------------------------------------
// class Shape: NSCopying {
//     var lineCount: Int = 0
//     var name: String = ""
//     init (_ lineCount: Int, _ name: String) {
//         self.lineCount = lineCount
//         self.name = name
//     }
//     public func copy(with zone: NSZone? = nil) -> Any {
//         return Shape(lineCount, name)
//     }
// }
// let square = Shape(4, "Square")
// let squareCopy = square.copy() as! Shape
// print("lineCount is \(squareCopy.lineCount)")
// print("name is \(squareCopy.name)")
// //-------------------------------------------------------------------------
// class Config {
//     //type constant
//     static let maxConnections = 3
//     //type properties
//     static var host = ""
//     static var port = 0
//     //type method
//     static func getConnection() -> String {
//         return "\(host):\(port)"
//     }
// }
// Config.host = "10.0.0.1"
// Config.port = 52
// let connection = Config.getConnection()
// //connection is "10.0.0.1:52"
// print("connection is \(connection)")
// //-------------------------------------------------------------------------
// class Random {
//     var lower: Int
//     var upper: Int
//     init(_ lower: Int, _ upper: Int) {
//         self.lower = lower
//         self.upper = upper
//     }
//     func callAsFunction() -> Int {
//         (lower...upper).randomElement()!
//     }
// }
// let random = Random(1, 5)
// print(random())
// print(random())
// print(random())
// //-------------------------------------------------------------------------
// class Phone {
//     var model: String?
// }
// class Employee {
//     var firstName: String?
//     var lastName: String?
//     var personalPhone: Phone?
// }
// let iPhoneX = Phone()
// iPhoneX.model = "iPhone X"
// let petr = Employee()
// petr.firstName = "Petr"
// petr.lastName = "Ivanov"
// petr.personalPhone = iPhoneX
// let keyPath = \Employee.personalPhone?.model
// var phoneModel = petr[keyPath: keyPath]
// //phoneModel is "iPhone X"
// print("phoneModel is \(phoneModel!)")
// iPhoneX.model = "iPhone X 256"
// phoneModel = petr[keyPath: keyPath]
// //phoneModel is "iPhone X 256"
// print("phoneModel is \(phoneModel!)")
// //-------------------------------------------------------------------------
// struct Point {
//     var x, y: Int
// }
// let p1 = Point(x: 1, y: 2)
// //p1 is (1, 2)
// print("p1 is (\(p1.x), \(p1.y))")
// let p2: Point
// let x2 = p2.x //<- Error
// //-------------------------------------------------------------------------
// struct Point1 {
//     var x: Int = 0
//     var y: Int = 0
// }
// struct Point2 {
//     var x: Int = 0
//     var y: Int = 0
//     init(value: Int) {
//         x = value
//         y = value
//     }
// }
// let p1 = Point1(x: 1, y: 2)
// //p1 is (1, 2)
// let p2 = Point1()
// //p2 is (0, 0)
// let p3 = Point2(value: 5)
// //p3 is (5, 5)
// //let p4 = Point2() //<-Error
// print("p1 is (\(p1.x), \(p1.y))")
// print("p2 is (\(p2.x), \(p2.y))")
// print("p3 is (\(p3.x), \(p3.y))")
// //-------------------------------------------------------------------------
// struct Point {
//     var x, y: Int
//     func toString() -> String {
//         return "x = \(x) y = \(y)"
//     }
//     mutating func move(right: Int, down: Int) {
//         x += right
//         y += down
//     }
// }
// var p1 = Point(x: 1, y: 2)
// let str1 = p1.toString()
// //str1 is "x = 1 y = 2"
// p1.move(right: 5, down: -1)
// let str2 = p1.toString()
// //str2 is "x = 6 y = 1"
// print("str1 is \(str1)")
// print("str2 is \(str2)")
// //-------------------------------------------------------------------------
// struct ColorPoint {
//     //In Swift there are no fields
//     var x, y: Int
//     //Property
//     var Color: Brush
// }
// //-------------------------------------------------------------------------
// struct BoldLine {
//     let lineWidth = 10
// }
// let line = BoldLine()
// let width = line.lineWidth
// //width is 10
// print("width is \(width)")
//
// struct Alphabet {
//     //without range check
//     subscript(i: Int) -> Character {
//         return Character(UnicodeScalar(64 + i)!)
//     }
// }
// let alphabet = Alphabet()
// let charA = alphabet[1]
// //charA is "A"
// let charE = alphabet[5]
// //charE is "E"
// print("charA is \(charA)")
// print("charE is \(charE)")
// //-------------------------------------------------------------------------
// struct Setting {
//     //type property
//     static var mode: Int = 0
//     //type method
//     static func setNextMode() {
//         mode = (mode + 1) % 3
//     }
// }
// Setting.mode = 3
// Setting.setNextMode()
// //Setting.mode is 1
// print("mode is \(Setting.mode)")
// //-------------------------------------------------------------------------
// protocol PText {
//     func toText() -> String
// }
// struct Point: PText {
//     var x, y: Int
//     func toText() -> String {
//         return "x = \(x) y = \(y)"
//     }
// }
// let point = Point(x: 2, y: 5)
// print(point.toText())
// //-------------------------------------------------------------------------
// struct Point {
//     var x, y: Int
// }
// struct Size {
//     var width, height: Int
// }
// struct Rect {
//     var point: Point
//     var size: Size
// }
// let rect = Rect(point:
//     Point(x: 3, y: 4), size:
//     Size(width: 10, height: 12))
// print("point.x is \(rect.point.x)")
// print("size.width is \(rect.size.width)")
// //-------------------------------------------------------------------------
// struct Point: ~Copyable  {
//     var x, y: Int
// }
// let p1 = Point(x: 1, y: 2)
// //move the original instance p1 to p2
// let p2 = p1
// print("p2 is (\(p2.x), \(p2.y))")
// //print("p2 is (\(p1.x), \(p1.y))") <- Error
// /*An instance of a noncopyable type always has unique ownership, unlike normal Swift types which can be freely copied.*/
// //-------------------------------------------------------------------------
// enum Season {
//     case summer, fall, winter, spring
// }
// let summer = Season.summer
// let winter: Season = .winter
// print("summer is \(summer)")
// print("winter is \(winter)")
// //-------------------------------------------------------------------------
// enum Season: Int8 {
//     case summer, fall, winter, spring
// }
// enum Align : Int {
//     case left, right, center
// }
// enum Status: String {
//     case Busy, Available
// }
// let baseFall = Season.fall.rawValue
// //baseFall is 1, type Int8
// let baseCenter = Align.center.rawValue
// //baseCenter is 2, type Int
// let baseBusy = Status.Busy.rawValue
// //baseBusy is "Busy", type String
// print("baseCenter is \(baseCenter)")
// print("baseFall is \(baseFall)")
// print("baseBusy is \(baseBusy)")
// //-------------------------------------------------------------------------
// enum Season: Int {
//     case summer = 1, fall, winter, spring
// }
// let baseWinter = Season.winter.rawValue
// //baseWinter is 3
// print("baseWinter is \(baseWinter)")
// //-------------------------------------------------------------------------
// enum Season: Int {
//     case summer, fall, winter, spring
// }
// let winter = Season(rawValue: 2)
// //winter is Season.winter
// print("winter is \(winter!)")
// //-------------------------------------------------------------------------
// enum Season {
//     case summer, fall, winter, spring, none
//     init(name: String) {
//         switch name.lowercased() {
//             case "summer": self = .summer
//             case "fall":   self = .fall
//             case "winter": self = .winter
//             case "spring": self = .spring
//             default: self = .none
//         }
//     }
// }
// let winter = Season(name: "winter")
// //winter is Season.Winter
// print("winter is \(winter)")
// //-------------------------------------------------------------------------
// enum Season: CaseIterable {
//     case summer, fall, winter, spring
// }
// let values  = Season.allCases
// print("values is \(values)")
// //-------------------------------------------------------------------------
// enum Season: Int {
//     case summer, fall, winter, spring
// }
// let winter = Season.winter
// let baseValue = winter.rawValue
// //baseValue is 2
// print("baseValue is \(baseValue)")
// print("winter is \(winter)")
// //-------------------------------------------------------------------------
// enum Season {
//     case summer, fall, winter, spring
// }
// let winter = Season.winter
// let strValue = "\(winter)"
// //strValue is "winter"
// print("strValue is \(strValue)")
// //-------------------------------------------------------------------------
// enum Season: String {
//     case Summer, Fall, Winter, Spring
// }
// let winter = Season(rawValue: "Winter")!
// //winter is Season.Winter
// print("winter is \(winter),",
//     type(of: winter))
// //-------------------------------------------------------------------------
// enum ProgramInfo {
//     case version(Int, Int, Int)
//     case name(String)
// }
// func printInfo(_ info: ProgramInfo) {
//     switch info {
//         case .version(let major, let minor, let build):
//             print("version: \(major).\(minor).\(build)")
//         case .name(let name):
//             print("name: \(name)")
//     }
// }
// var info = ProgramInfo.name("CCDEditor")
// printInfo(info)
// info = ProgramInfo.version(3, 5, 25467)
// printInfo(info)
// //-------------------------------------------------------------------------
// enum Size: Comparable {
//     case xs, s, m, l, xl
// }
// let small = Size.s
// let lage = Size.l
// print("is l > s:", lage > small)
// //-------------------------------------------------------------------------
// indirect enum Shape {
//     case point(Int, Int)
//     case line(Shape, Shape)
//     func toString() -> String {
//         switch self {
//             case .point(let x, let y):
//                 return "(\(x), \(y))"
//             case .line(let p1, let p2):
//                 return p1.toString() + " " + p2.toString()
//         }
//     }
// }
// let point1 = Shape.point(3, 4)
// let point2 = Shape.point(7, 9)
// let line = Shape.line(point1, point2)
// let info = line.toString()
// //info is "(3, 4) (7, 9)"
// print("info is \(info)")
// //-------------------------------------------------------------------------
// protocol Printable {
//     func print()
// }
// let printable = Printable() //<- Error
// //-------------------------------------------------------------------------
// protocol Car {
//     func startEngine() -> Bool
//     func stopEngine()
// }
// class SportCar: Car {
//     private var started: Bool = false
//     func startEngine() -> Bool {
//         if started {
//             return false
//         }
//         print("start engine")
//         started = true
//         return true
//     }
//     func stopEngine() {
//         print("stop engine")
//         started = false
//     }
// }
// let car = SportCar()
// print("started is \(car.startEngine())")
// //-------------------------------------------------------------------------
// protocol Car {
//     var engineVolume: Int { get set }
//     var name: String { get }
// }
// class Airwave: Car {
//     var engineVolume: Int = 1500
//     var name: String {
//         return "Honda Airwave"
//     }
// }
// let car = Airwave()
// print("name is \(car.name)")
// //-------------------------------------------------------------------------
// protocol List {
//     init (itemCount: Int)
// }
// class SortedList: List {
//     var itemCount = 0
//     required init (itemCount: Int) {
//         self.itemCount = itemCount
//     }
// }
// let list = SortedList(itemCount: 100)
// print("item count: \(list.itemCount)")
// //-------------------------------------------------------------------------
// protocol IntIndex {
//     subscript(i: Int) -> Int {get}
// }
// class PowerOfTwo : IntIndex {
//     subscript(i: Int) -> Int {
//         return Int(pow(Double(2), Double(i)))
//     }
// }
// let power = PowerOfTwo()
// let p8 = power[8]
// //p8 is 256
// let p16 = power[16]
// //p16 is 65536
// print("p8 is \(p8)")
// print("p16 is \(p16)")
// //-------------------------------------------------------------------------
// protocol Vehicle {
//     var maxSpeed: Int {get}
// }
// protocol Truck: Vehicle {
//     var capacity: Int {get}
// }
// class Kamaz5320: Truck {
//     var maxSpeed: Int {
//         return 85
//     }
//     var capacity: Int {
//         return 8000
//     }
// }
// let kamaz = Kamaz5320()
// let vehicle = kamaz as Vehicle
// let maxSpeed = vehicle.maxSpeed
// //maxSpeed is 85
// print("maxSpeed is \(maxSpeed)")
// //-------------------------------------------------------------------------
// protocol PId {
//     var id: Int {get}
// }
// protocol Priced {
//     var price: Double {get}
// }
// struct Goods: PId, Priced {
//     var id: Int
//     var price: Double
// }
// class Product {
//     let info: PId & Priced
//     init (info: PId & Priced) {
//         self.info = info
//     }
//     func showIdAndPrice() {
//         print("id = \(info.id), price = \(info.price)")
//     }
// }
// let bread = Goods(id: 1, price: 35.5)
// let product = Product(info: bread)
// product.showIdAndPrice()
// //-------------------------------------------------------------------------
// protocol PUID {
//     var id: Int {get}
// }
// protocol Named {
//     var name: String {get}
// }
// struct Flower: Named {
//     var name: String
// }
// let rose = Flower(name: "Rose")
// let isPUID = rose is PUID
// //isPId is false
// let isNamed = rose is Named
// //isNamed is true
// let pName = rose as Named
// let name = pName.name
// //name is "Rose"
// print("isPUID is \(isPUID)")
// print("isNamed is \(isNamed)")
// print("name is \(name)")
// //-------------------------------------------------------------------------
// protocol Named {
//     var name: String {get set}
// }
// struct Flower: Named {
//     var name: String
// }
// struct City: Named {
//     var name: String
// }
// struct Star: Named {
//     var name: String
// }
// let rows: [Named] = [
//     Flower(name: "Rose"),
//     City(name: "Rome"),
//     Star(name: "Sirius")]
// let list = rows.map({$0.name}).joined(separator: ", ")
// //list is Rose, Rome, Sirius
// print("list is \(list)")
// //-------------------------------------------------------------------------
// protocol Cleanable {
//     func Clear()
// }
// class IntList {
//     var items: [Int] = []
//     //some implementation...
// }
// extension IntList: Cleanable {
//     func Clear() {
//         print("clear items")
//         items.removeAll()
//     }
// }
// let list = IntList()
// list.Clear()
// //-------------------------------------------------------------------------
// protocol PCalc {
//     func addition(_ a: Int, _ b: Int) -> Int
// }
// class Calc: PCalc {
//     func addition(_ a: Int, _ b: Int) -> Int {
//         return a + b
//     }
// }
// extension PCalc {
//     func power(_ a: Int, _ b: Int) -> Int {
//         return Int(pow(Double(a), Double(b)))
//     }
// }
// let calc = Calc()
// let value = calc.power(2, 8)
// //value is 256
// print("value is \(value)")
// //-------------------------------------------------------------------------
// protocol PClass: class {}
// class SomeClass: PClass {}
// struct SomeStruct: PClass {} //<- Error
// //-------------------------------------------------------------------------
// class Camera: NSObject {
//     var enable: Bool = false
// }
// @objc protocol Car {
//     var maxSpeed: Int {get}
//     @objc optional var rearCamera: Camera {get}
// }
// class Ferrari: NSObject, Car {
//     var maxSpeed: Int {
//         return 350
//     }
//     var rearCamera: Camera = Camera()
// }
// let ferrari = Ferrari()
// let car = ferrari as Car
// if let camera = car.rearCamera {
//     camera.enable = true
//     print("camera exists")
// }
// //-------------------------------------------------------------------------
// protocol Stack {
//     associatedtype ItemType
//     func push(_ item: ItemType)
//     func pop() -> ItemType
//     var topItem: ItemType {get}
// }
// class IntStack: Stack {
//     private var items = [Int]()
//     func push(_ item: Int) {
//         items.append(item)
//     }
//     //without range checking
//     func pop() -> Int {
//         return items.removeLast()
//     }
//     var topItem: Int {
//         return items[items.count - 1]
//     }
// }
// let stack = IntStack()
// stack.push(1)
// stack.push(2)
// var topItem = stack.pop()
// //topItem is 2
// print("topItem is \(topItem)")
// topItem = stack.topItem
// //topItem is 1
// print("topItem is \(topItem)")
// //-------------------------------------------------------------------------
// protocol Chain {
//     mutating func next()
// }
// enum Season: Int, Chain {
//     case summer, fall, winter, spring
//     mutating func next() {
//         let value = (rawValue + 1) % 4
//         self = Season(rawValue: value)!
//     }
// }
// var season = Season.winter
// season.next()
// season.next()
// //season is .Summer
// print("season is \(season)")
// //-------------------------------------------------------------------------
// protocol Cleanable {
//     func Clear()
// }
// private class IntList {
//     var items: [Int] = []
//     //some implementation...
//     func Clear() {
//         items.removeAll()
//     }
// }
// extension IntList: Cleanable {}
// let list = IntList()
// let isCleanable = list is Cleanable
// //isCleanable is true
// print("isCleanable is \(isCleanable)")
// //-------------------------------------------------------------------------
// protocol PText {
//     func asText() -> String
// }
// struct Row: PText {
//     var id: Int
//     var name: String
//     func asText() -> String {
//         return "id is \(id) and name is \(name)"
//     }
// }
// extension Collection where Iterator.Element : PText {
//     func asStrings() -> [String] {
//         return map({$0.asText()})
//     }
// }
// let rows = [
//     Row(id: 1, name: "one"),
//     Row(id: 2, name: "two")]
// let str = rows.asStrings()
// print("str is \(str)")
// //-------------------------------------------------------------------------
// //List of integer
// var intList = Array<Int>()
// intList.append(5)
// print("intList is \(intList)")
// //Dictionary
// var dic = Dictionary<Int, String>()
// dic[1] = "one"
// print("dic is \(dic)")
// //Set
// var set = Set<Double>()
// set.insert(3.14)
// print("set is \(set)")
// //-------------------------------------------------------------------------
// class Size<T> {
//     var width: T
//     var height: T
//     init(_ width: T, _ height: T) {
//         self.width = width
//         self.height = height
//     }
//     func asText() -> String {
//         return "[\(width) \(height)]"
//     }
// }
// let sizeInt = Size<Int>(5, 8)
// let textInt = sizeInt.asText()
// //textInt is "[5 8]"
// let sizeFloat = Size<Float>(3.7, 1.58)
// let textFloat = sizeFloat.asText()
// //textFloat is "[3.7 1.58]"
// print("textInt is \(textInt)")
// print("textFloat is \(textFloat)")
// //-------------------------------------------------------------------------
// func swap<T>(_ a: inout T, _ b: inout T) {
//     let tmp = a
//     a = b
//     b = tmp
// }
// var n1 = 5
// var n2 = 7
// swap(&n1, &n2)
// //n1 is 7 and n2 is 5
// var s1 = "cat"
// var s2 = "dog"
// swap(&s1, &s2)
// //s1 is "dog" and s2 is "cat"
// print("\(n1), \(n2)")
// print("\(s1), \(s2)")
// //-------------------------------------------------------------------------
// @objc protocol Vehicle {
//     func Test()
// }
// class Car: Vehicle {
//     @objc func Test() {
//         print("test \(self)")
//     }
// }
// class Truck {}
// class Service<T: Vehicle> {
//     var list: [T] = []
//     func add(_ item: T) {
//         list.append(item)
//     }
//     func test() {
//         for item in list {
//             item.Test()
//         }
//     }
// }
// let service = Service<Vehicle>()
// service.add(Car())
// service.test()
// //service.add(Truck())//<- Error
// //-------------------------------------------------------------------------
// class Vehicle {
//     func Test() {
//         print("test \(self)")
//     }
// }
// class Car: Vehicle { }
// class Truck {}
// class Service<T: Vehicle> {
//     var list: [T] = []
//     func add(_ item: T) {
//         list.append(item)
//     }
//     func test() {
//         for item in list {
//             item.Test()
//         }
//     }
// }
// let vehicle = Vehicle()
// let car = Car()
// let truck = Truck()
// let service = Service()
// service.add(vehicle)
// service.add(car)
// service.test()
// //service.add(truck)//<- Error
// //-------------------------------------------------------------------------
// class Vehicle {
//     func test() {
//         print("test \(self)")
//     }
// }
// class Car: Vehicle { }
// class Truck: Vehicle {}
// var list = Array<Vehicle>()
// let vehicle = Vehicle()
// let car = Car()
// let truck = Truck()
// list.append(vehicle)
// list.append(car)
// list.append(truck)
// for vehicle in list {
//     vehicle.test()
// }
// //-------------------------------------------------------------------------
// func getSum(_ n1: Int, _ n2: Int) -> Int {
//     return n1 + n2
// }
// func getDiv(_ n1: Int, _ n2: Int) -> Int {
//     //Swift 5.1 feature
//     n1/n2
// }
// let sum = getSum(5, 3)
// //sum is 8
// let div = getDiv(5, 3)
// //div is 1
// print("sum is \(sum)")
// print("div is \(div)")
// //-------------------------------------------------------------------------
// func add3AndPrint(value: Int) {
//     print(value + 3)
// }
// add3AndPrint(value: 5)
// //-------------------------------------------------------------------------
// func getFirstLast(_ ar: [Int]) -> (first: Int, last: Int) {
//     var first = -1
//     var last = -1
//     if (!ar.isEmpty) {
//         first = ar[0]
//         last = ar[ar.count - 1]
//     }
//     return (first, last)
// }
// let ar = [2, 3, 5]
// let result = getFirstLast(ar)
// //result.first is 2
// //result.last is 5
// print("first = \(result.first)")
// print("last = \(result.last)")
// //-------------------------------------------------------------------------
// func sayGoodby() {
//     print("Goodby!")
// }
// sayGoodby()
// //-------------------------------------------------------------------------
// func getAvg (_ values: Double...) -> Double {
//     if values.isEmpty {
//         return 0
//     }
//     var sum: Double = 0
//     for value in values {
//         sum += value
//     }
//     return sum/Double(values.count)
// }
// let avg = getAvg(1, 2, 3, 4)
// //avg is 2.5
// print(avg)
// //-------------------------------------------------------------------------
// func swapStrings(_ s1: inout String, _ s2: inout String) {
//     let tmp = s1
//     s1 = s2
//     s2 = tmp
// }
// var s1 = "A"
// var s2 = "B"
// swapStrings(&s1, &s2)
// //s1 is "B", s2 is "A"
// print("s1 is \(s1), s2 is \(s2)")
//
// func print5(_ data: inout String) {
//     if data.count > 5 {
//         let end = data.index(data.startIndex, offsetBy: 4)
//         data = String(data[data.startIndex...end])
//     }
//     print(data)
// }
// var data = "1234567"
// print5(&data)
// //printed "12345"
// //-------------------------------------------------------------------------
// func sayGoodby(_ message: String = "Goodby!") {
//     print(message)
// }
// sayGoodby()
// //printed "Goodby!"
// sayGoodby("see you")
// //printed "see you"
// //-------------------------------------------------------------------------
// func sayGoodby(to name1: String, and name2: String) {
//     print("Goodby \(name1) and \(name2)")
// }
// sayGoodby(to: "Fedor", and: "Alex")
// //prints "Goodby Fedor and Alex"
// //-------------------------------------------------------------------------
// func sum(_ n1: Int, _ n2: Int) -> Int {
//     return n1 + n2
// }
// let value = sum(3, 2)
// //min is 1
// print(value)
// //-------------------------------------------------------------------------
// func fibonacci(_ x: Int) -> Int
// {
//     if x <= 2 {
//         return 1
//     }
//     return fibonacci(x - 1) + fibonacci(x - 2)
// }
// let f10 = fibonacci(10)
// //f10 is 55
// print("f10 is \(f10)")
// //-------------------------------------------------------------------------
// //explicitly specify return type
// let powOfTwo = {
//     (power: Int) -> Int in Int(pow(2.0, Double(power)))
// }
// let pow8 = powOfTwo(8)
// //pow8 is 256
// //implicitly specified return type
// let powOfThree = {
//     power in pow(3.0, power)
// }
// let pow3 = powOfThree(3)
// //pow3 is 27.0
// print(pow8)
// print(pow3)
// //-------------------------------------------------------------------------
// let avgFunc = { (a, b) in (a + b) / 2 }
// let avg = avgFunc(3, 5)
// //avg is 4
// print("avg is \(avg)")
// //-------------------------------------------------------------------------
// let add2AndPrint = { a in print(a + 2) }
// add2AndPrint(5)
// //printed 7
// //-------------------------------------------------------------------------
// var numbers = [2, 3, 1]
// numbers.sort(by: {(a, b) in a > b})
// //or
// numbers.sort{$0 > $1}
// //numbers is [3, 2, 1]
// print("numbers is \(numbers)")
// //-------------------------------------------------------------------------
// func checkAndProcess(_ number: Int, process: (Int) -> Void) {
//     if number < 10 {
//         process(number)
//     }
// }
// let process = {
//     (number: Int) in print(number*10)
// }
// checkAndProcess(5, process: process)
// //printed: 50
// //-------------------------------------------------------------------------
// func makeSum() -> (_ a: Int, _ b: Int) -> Int {
//     return { (a, b) in a + b }
// }
// let sumFunc = makeSum()
// let sum = sumFunc(5, 8)
// //sum is 13
// print("sum is \(sum)")
// //-------------------------------------------------------------------------
// struct Point {
//     var x: Double
//     var y: Double
// }
// let getDistance = { (p1: Point, p2: Point) -> Double in
//     let d1 = pow(p1.x - p2.x, 2)
//     let d2 = pow(p1.y - p2.y, 2)
//     return sqrt(d1 + d2)
// }
// let point1 = Point(x: 0, y: 0)
// let point2 = Point(x: 5, y: 5)
// let distance = getDistance(point1, point2)
// //distance is 7.071
// print("distance is \(distance)")
// //-------------------------------------------------------------------------
// func makeWallet(_ sum: Int) -> (_ pay: Int) -> Int {
//     var result = sum
//     return { pay in
//         result -= pay
//         return result
//     }
// }
// let sum1 = 1000
// let payFromWallet1 = makeWallet(sum1)
// let sum2 = 500
// let payFromWallet2 = makeWallet(sum2)
// var balance = payFromWallet1(50)
// //balance is 950
// print("balance is \(balance)")
// balance = payFromWallet2(70)
// //balance is 430
// print("balance is \(balance)")
// balance = payFromWallet1(150)
// //balance is 800
// print("balance is \(balance)")
// //-------------------------------------------------------------------------
// var x = 5
// let addYtoX = { y in x += y }
// addYtoX(3)
// //x is 8
// print("x is \(x)")
// //-------------------------------------------------------------------------
// func carry<A, B, C>(_ f: @escaping (A, B) -> C) -> (A) -> (B) -> C {
//     return { a in { b in f(a, b) }}
// }
// let avg = { (a, b) in (a + b)/2 }
// let n1 = avg(1, 3)
// //n1 is 2
// //first universal method
// let avg1 = carry(avg)(1)
// //avg1 is avg func with first param = 1
// let n2 = avg1(3)
// //n2 is 2 = (1 + 3)/2
// //second specialized method
// let curriedAvg = { a in { b in (a + b)/2}}
// let avg3 = curriedAvg(3)
// let n3 = avg3(3)
// //n3 is 3 = (3 + 3)/2
// print("n1 is \(n1)")
// print("n2 is \(n2)")
// print("n3 is \(n3)")
// //-------------------------------------------------------------------------
// var fibonacci: ((Int) -> Int)!
// fibonacci = {
//     x in x <= 2 ? 1 :
//         fibonacci(x - 1) + fibonacci(x - 2)
// }
// let f10 = fibonacci(10)
// //f10 is 55
// print("f10 is \(f10)")
// //-------------------------------------------------------------------------
// func fibonacci(_ x: Int) -> Int {
//     x <= 2 ? 1 : fibonacci(x - 1) + fibonacci(x - 2)
// }
// func memoize<I: Hashable, U>(_ fun: @escaping (I) -> U) -> (I) -> U {
//     // item cache
//     var memo = [I: U]()
//     // send back a new closure that does our calculation
//     return { x in
//         if let r = memo[x] { return r }
//         let r = fun(x)
//         memo[x] = r
//         return r
//     }
// }
// let memFibonacci = memoize(fibonacci)
// for i in 1...2 {
//     let start = Date()
//     let f37 = memFibonacci(37)
//     let seconds = abs(start.timeIntervalSinceNow)
//     print("\(i): f37 is \(f37)")
//     print("\(i): seconds37 is \(seconds)")
// }
// // prints:
// // 1: f37 is 24157817
// // 1: seconds is 0.3996438980102539
// // 2: f37 is 24157817
// // 2: seconds is 9.5367431640625e-07
// let start = Date()
// let f38 = memFibonacci(38)
// let seconds = abs(start.timeIntervalSinceNow)
// print("f38 is \(f38)")
// print("seconds is \(seconds)")
// //f38 is 39088169
// //seconds is 0.6545610427856445
// //-------------------------------------------------------------------------
// func memoize<I: Hashable, U>(_ fun: @escaping ((I)->U, I) -> U) -> (I)->U {
//     var memo = [I: U]()
//     var memoFun: ((I) -> U)!
//     memoFun = { (x: I) -> U in
//         if let r = memo[x] { return r }
//         let r = fun(memoFun, x)
//         memo[x] = r
//         return r
//     }
//     return memoFun
// }
// let memFibonacci = memoize { f, x in
//     x <= 2 ? 1 : f(x - 1) + f(x - 2)
// }
// for i in 1...2 {
//     let start = Date()
//     let f37 = memFibonacci(37)
//     let seconds = abs(start.timeIntervalSinceNow)
//     print("\(i): f37 is \(f37)")
//     print("\(i): seconds37 is \(seconds)")
// }
// // prints:
// // 1: f37 is 24157817
// // 1: seconds37 is 0.0004799365997314453
// // 2: f37 is 24157817
// // 2: seconds37 is 0.0
// let start = Date()
// let f38 = memFibonacci(38)
// let seconds = abs(start.timeIntervalSinceNow)
// print("f38 is \(f38)")
// print("seconds is \(seconds)")
// // f38 is 39088169
// // seconds is 1.0728836059570312e-06
// //-------------------------------------------------------------------------
// func add(_ a: Int, _ b: Int) -> Int {
//     sleep(3)
//     return a + b
// }
// let queue = DispatchQueue.global(
//     qos: DispatchQoS.QoSClass.background)
// queue.async {
//     let result = add(3, 5)
//     print("result: \(result)")
// }
// print("main thread")
// //printed:
// //main thread
// //result: 8
// //-------------------------------------------------------------------------
// let action = {(i: Int) in
//     Task {
//         try await Task.sleep(
//             nanoseconds: 3_000_000_000)
//         print("\(i) * 10 is", i * 10)
//     }
//     print("in action")
// }
// //Run closure with new thread
// action(5)
// print("main thread")
// //-------------------------------------------------------------------------
// let add = {(_ a: Int, _ b: Int) in
//     return Task {() -> Int in
//         try await Task.sleep(for: .seconds(3))
//         return a + b
//     }
// }
// Task {
//     //in async context
//     let result = try await add(3, 5).value
//     print("result is", result)
// }
// print("main thread")
// //-------------------------------------------------------------------------
// class ViewController: UIViewController {
//     //...
//     func add(_ a: Int, _ b: Int) -> Int {
//         sleep(3)
//         return a + b
//     }
//     @MainActor func updateResult(_ result: Int) {
//         //synchronization with the main thread
//         //for update user interface
//         self.lResult.text = "\(result)"
//     }
//     func calculate(_ a: Int, _ b: Int) async {
//         let result = add(a, b)
//         updateResult(result)
//         //@MainActor equivalent to
//         DispatchQueue.main.async(execute: {                 self.lResult.text = "\(result)"         })
//     }
//     @IBAction func btn_TouchUp(_ sender: AnyObject) {
//         //Start new thread
//         Task { await calculate(3, 5) }
//     }
// }
// //-------------------------------------------------------------------------
// func add(_ a: Int, _ b: Int) async -> Int {
//     sleep(3)
//     return a + b
// }
// func startAsync() async {
//     let result = await add(3, 5)
//     print("result is", result)
// }
// func startTask() {
//     Task {
//         let result = await add(2, 9)
//         print("result is", result)
//     }
// }
// //client code in not async function
// Task {
//     await startAsync()
// }
// startTask()
// //-------------------------------------------------------------------------
// enum Exception: Error {
//     case isNil, isEmpty
// }
// func throwWhenNilOrEmpty(_ array: [Int]?) throws {
//     if array == nil {
//         throw Exception.isNil
//     }
//     if array!.isEmpty {
//         throw Exception.isEmpty
//     }
// }
// do {
//     try throwWhenNilOrEmpty(nil)
// }
// catch {
//     print("Error happened")
// }
// //-------------------------------------------------------------------------
// enum Exception: Error {
//     case isNil, isEmpty
// }
// func throwWhenNilOrEmpty(_ array: [Int]?) throws {
//     if array == nil {
//         throw Exception.isNil
//     }
//     if array!.isEmpty {
//         throw Exception.isEmpty
//     }
// }
// do {
//     let array = [Int]()
//     try throwWhenNilOrEmpty(array)
// }
// catch Exception.isNil {
//     print("array is not specified")
// }
// catch Exception.isEmpty {
//     print("array is empty")
// }
// catch {}
// //or
// do {
//     try throwWhenNilOrEmpty(nil)
// }
// catch Exception.isNil, Exception.isEmpty {
//     print("please pass an array")
// }
// catch {}
// //-------------------------------------------------------------------------
// class Car{}
// struct Exception: Error {
//     var message: String
// }
// class Seller {
//     var cars: [Car] = [Car]()
//     func Sell() throws {
//         if cars.isEmpty {
//             throw Exception(message: "No cars for sale")
//         }
//     }
// }
// let seller = Seller()
// do {
//     try seller.Sell()
// }
// catch let e as Exception {
//     print(e.message)
//     //e.message is "No cars for sale"
// }
// catch {}
// //-------------------------------------------------------------------------
// enum Exception: Error {
//     case text
// }
// func methodWithException() throws {
//     do {
//         throw Exception.text
//     }
//     catch {
//         //implementation of any partial processing
//         //and send error to the calling code
//         throw Exception.text
//     }
// }
// do {
//     try methodWithException()
// }
// catch let error {
//     print("Exception:", error)
// }
// //-------------------------------------------------------------------------
// //struct error type
// struct StructError: Error {
//     var message: String
// }
// //class error type
// class ClassError: Error {
//     var message: String
//     init(message: String) {
//         self.message = message
//     }
// }
// //enum error type
// enum EnumError: Error {
//     case accessDenied, fileNotFound
// }
// throw StructError(message: "Struct error")
// throw ClassError(message: "Class error")
// throw EnumError.accessDenied
// //-------------------------------------------------------------------------
// enum Exception: Error {
//     case text
// }
// func throwIfTrue(_ param: Bool) throws {
//     defer {
//         print("defer")
//     }
//     do {
//         if param {
//             throw Exception.text
//         }
//     }
//     catch {
//         print("catch")
//     }
// }
// try! throwIfTrue(true)
// //printed: "catch" and "defer"
// try! throwIfTrue(false)
// //printed only "defer"
// //-------------------------------------------------------------------------
// enum Exception: Error {
//     case text
// }
// //only the method with the keyword "throws"
// //can throw an error
// func methodWithException() throws {
//     throw Exception.text
// }
// //-------------------------------------------------------------------------
// let data = "Pi is equal to 3.14"
// let pattern = /\d+\.\d+/
// if let match = try! pattern.firstMatch(in: data) {
//     let pi = Double(match.0)!
//     //pi is 3.14
//     print("pi is \(pi)")
// }
// //-------------------------------------------------------------------------
// let data = "Pi = 3.14, exponent = 2.718"
// let pattern = /\d+\.\d+/
// let ranges = data.ranges(of: pattern)
// let values = ranges.map { data[$0] }
// //values is ["3.14", "2.718"]
// print("values is \(values)")
// //-------------------------------------------------------------------------
// let data1 = "aaab"
// let data2 = "aaaba"
// let data3 = "bbba"
// let pattern = /a+b/
// let b1 = try! pattern.firstMatch(in: data1) != nil
// //b1 is true
// let b2 = try! pattern.firstMatch(in: data2) != nil
// //b2 is true
// let b3 = try! pattern.firstMatch(in: data3) != nil
// //b3 is false
// print("b1 is \(b1)")
// print("b2 is \(b2)")
// print("b3 is \(b3)")
// //-------------------------------------------------------------------------
// let data1 = "aaab"
// let data2 = "aaaba"
// let pattern = /\Aa+b\Z/
// let b1 = try! pattern
//     .wholeMatch(in: data1) != nil
// //b1 is true
// let b2 = try! pattern
//     .wholeMatch(in: data2) != nil
// //b2 is false
// print("b1 is \(b1)")
// print("b2 is \(b2)")
// //-------------------------------------------------------------------------
// let data = "Pi = 3.14, exponent = 2.718"
// //the first method (Swift 5.7)
// let pattern1 = /\d+\.\d+/
// let data1 = data.replacing(
//     pattern1, with: "<f>$0</f>")
// //data1 is "Pi = <f>$0</f>, exponent = <f>$0</f>"
// //the second method
// let pattern2 = "\\d+\\.\\d+"
// let data2 = data.replacingOccurrences(
//     of: pattern2, with: "<f>$0</f>",
//     options: [.regularExpression])
// //data2 is "Pi = <f>3.14</f>, exponent = <f>2.718</f>"
// print("data1 is \(data1)")
// print("data2 is \(data2)")
// //-------------------------------------------------------------------------
// let strData = "1981|Kim Victorya|engineer"
// let pattern = /(?<year>\d{4})\|(?<n>[\w\s]+)\|(?<p>.+)/
// if let match = try! pattern.firstMatch(in: strData) {
//     let year = Int(match.year)!
//     //year is 1981
//     let full_name = match.n
//     //name is "Kim Victorya"
//     let position = match.p
//     //position is "engineer"
//     print("year is \(year)")
//     print("full_name is '\(full_name)'")
//     print("position is '\(position)'")
// }
// //-------------------------------------------------------------------------
// let data = "AaaA\r\naaaA"
// let pattern = /a+/
//     .ignoresCase()
//     .dotMatchesNewlines()
// if let match = try! pattern.firstMatch(in: data) {
//     print("value is '\(match.0)'")
// }
// //value is "AaaA"
// //-------------------------------------------------------------------------
// let data = "AaaA\r\naaaA"
// let pattern = /a+/
//     .ignoresCase()
//     .dotMatchesNewlines()
// if let match = try! pattern.firstMatch(in: data) {
//     print("value is '\(match.0)'")
// }
// //value is "AaaA"
// //-------------------------------------------------------------------------
// class Point {
//     var x: Int
//     var y: Int
//     init(x: Int, y: Int) {
//         self.x = x
//         self.y = y
//     }
// }
// //global function
// func + (left: Point, right: Point) -> Point {
//     return Point(x: left.x + right.x, y: left.y + right.y)
// }
// //global function
// func += (left: inout Point, right: Point) {
//     left = Point(x: left.x + right.x, y: left.y + right.y)
// }
// let p1 = Point(x: 1, y: 1)
// let p2 = Point(x: 2, y: 2)
// var p3 = p1 + p2
// //p3.x is 3 and p3.y is 3
// print("x = \(p3.x), y = \(p3.y)")
// p3 += Point(x: 3, y: 5)
// //p3.x is 6 and p3.y is 8
// print("x = \(p3.x), y = \(p3.y)")
// //-------------------------------------------------------------------------
// class Point {
//     var x: Int
//     var y: Int
//     init(x: Int, y: Int) {
//         self.x = x
//         self.y = y
//     }
// }
// //global function
// func == (left: Point, right: Point) -> Bool {
//     return (left.x == right.x) && (left.y == right.y)
// }
// //global function
// func != (left: Point, right: Point) -> Bool {
//     return (left.x != right.x) || (left.y != right.y)
// }
// let p1 = Point(x: 1, y: 1)
// let p2 = Point(x: 2, y: 2)
// let p3 = Point(x: 1, y: 1)
// let equal1 = p1 == p2
// //equal1 is false
// let equal2 = p1 == p3
// //equal2 is true
// let equal3 = p1 != p3
// //equal3 is false
// print("equal1 is \(equal1)")
// print("equal2 is \(equal2)")
// print("equal3 is \(equal3)")
// //-------------------------------------------------------------------------
// class Point {
//     var x: Int
//     var y: Int
//     init(x: Int, y: Int) {
//         self.x = x
//         self.y = y
//     }
// }
// //global function
// func > (left: Point, right: Point) -> Bool {
//     return (left.x > right.x) && (left.y > right.y)
// }
// //global function
// func < (left: Point, right: Point) -> Bool {
//     return (left.x < right.x) && (left.y < right.y)
// }
// let p1 = Point(x: 1, y: 2)
// let p2 = Point(x: 2, y: 3)
// let b1 = p1 > p2
// //b1 is false
// let b2 = p1 < p2
// //b2 is true
// print("b1 is \(b1)")
// print("b2 is \(b2)")
// //-------------------------------------------------------------------------
// class Point {
//     var x: Double
//     var y: Double
//     init(x: Double, y: Double) {
//         self.x = x
//         self.y = y
//     }
// }
// infix operator ^
// //global function
// func ^ (p: Point, power: Double) -> Point {
//     let x = pow(p.x, power)
//     let y = pow(p.y, power)
//     return Point(x: x, y: y)
// }
// postfix operator ^
// //global function
// postfix func ^ (p: inout Point) {
//     let x = pow(p.x, p.x)
//     let y = pow(p.y, p.y)
//     p = Point(x: x, y: y)
// }
// var p1 = Point(x: 2, y: 3)
// p1 = p1 ^ 3
// //p1.x is 8.0 and p1.y is 27.0
// var p2 = Point(x: 2, y: 3)
// p2^
// //p2.x is 4.0 and p2.y is 27.0
// print("x = \(p1.x), y = \(p1.y)")
// print("x = \(p2.x), y = \(p2.y)")
// //-------------------------------------------------------------------------
// let fileManager = FileManager.default
// let dir = fileManager.urls(
//     for: .documentDirectory,
//     in: .userDomainMask).first!
// let url = dir.appendingPathComponent("file.txt")
// let exists = fileManager.fileExists(atPath: url.path)
// print(exists)
// //-------------------------------------------------------------------------
// let fileManager = FileManager.default
// let dir = fileManager.urls(
//     for: .documentDirectory,
//     in: .userDomainMask).first!
// let url = dir.appendingPathComponent("file.txt")
// do {
//     try fileManager.removeItem(at: url)
//     print("successful deleting of the file")
// } catch let e {
//     print(e.localizedDescription)
// }
// //-------------------------------------------------------------------------
// let fileManager = FileManager.default
// let dir = fileManager.urls(
//     for: .documentDirectory,
//     in: .userDomainMask).first!
// let atUrl = dir.appendingPathComponent("file.txt")
// let toUrl = dir.appendingPathComponent("file_copy.txt")
// do {
//     try fileManager.copyItem(at: atUrl, to: toUrl)
//     print("successful copying of the file")
// } catch let e {
//     print(e.localizedDescription)
// }
// //-------------------------------------------------------------------------
// let fileManager = FileManager.default
// let dir = fileManager.urls(
//     for: .documentDirectory,
//     in: .userDomainMask).first!
// let atUrl = dir.appendingPathComponent("file.txt")
// let toUrl = dir.appendingPathComponent("new_file.txt")
// do {
//     try fileManager.moveItem(at: atUrl, to: toUrl)
//     print("successful moving of the file")
// } catch let e {
//     print(e.localizedDescription)
// }
// //-------------------------------------------------------------------------
// let fileManager = FileManager.default
// let dir = fileManager.urls(
//     for: .documentDirectory,
//     in: .userDomainMask).first!
// let url = dir.appendingPathComponent("file.txt")
// do {
//     let attr = try fileManager.attributesOfItem(atPath: url.path)
//     //file size (the first method)
//     var fileSize = attr[FileAttributeKey.size] as! UInt64
//     //file size (the second method)
//     let dict = attr as NSDictionary
//     fileSize = dict.fileSize()
//     //file modification date
//     let dateChanges = dict.fileModificationDate()
//     //file creation date
//     let creationDate = dict.fileCreationDate()
//     //is readable file
//     let isReadable = fileManager.isReadableFile(atPath: url.path)
//     //is writable file
//     let isWritable = fileManager.isWritableFile(atPath: url.path)
//     //file extension
//     let fileExtension = url.pathExtension
//     //file name
//     let fileName = url.deletingPathExtension().lastPathComponent
//     //file directory
//     let fileDir = url.deletingLastPathComponent().path
// } catch let e {
//     print(e.localizedDescription)
// }
// //-------------------------------------------------------------------------
// func getWorkPath() -> URL {
//     return FileManager.default.urls(
//         for: .documentDirectory,
//         in: .userDomainMask).first!
// }
// let workPath = getWorkPath()
// print(workPath.relativePath)
//
// let workDir = FileManager.default.urls(
//     for: .documentDirectory,
//     in: .userDomainMask).first!
// let dataDir = workDir.appendingPathComponent("Data")
// do {
//     try FileManager.default.createDirectory(
//         at: dataDir,
//         withIntermediateDirectories: false,
//         attributes: nil)
//     print("successfully created directory")
// } catch let e as NSError {
//     print(e.localizedDescription)
// }
// //-------------------------------------------------------------------------
// let fileManager = FileManager.default
// let dir = fileManager.urls(
//     for: .documentDirectory,
//     in: .userDomainMask).first!
// let url = dir.appendingPathComponent("data_copy")
// do {
//     try fileManager.removeItem(at: url)
//     print("successfully deleted directory")
// } catch let e {
//     print(e.localizedDescription)
// }
// //-------------------------------------------------------------------------
// let fileManager = FileManager.default
// let dir = fileManager.urls(
//     for: .documentDirectory,
//     in: .userDomainMask).first!
// let atUrl = dir.appendingPathComponent("data")
// let toUrl = dir.appendingPathComponent("data_copy")
// do {
//     try fileManager.copyItem(at: atUrl, to: toUrl)
//     print("successful copying of the directory")
// } catch let e {
//     print(e.localizedDescription)
// }
// //-------------------------------------------------------------------------
// let fileManager = FileManager.default
// let dir = fileManager.urls(
//     for: .documentDirectory,
//     in: .userDomainMask).first!
// do {
//     //get list of text files()
//     let list = try fileManager.contentsOfDirectory(
//         at: dir,
//         includingPropertiesForKeys: nil,
//         options: [])
//     let textFiles = list.filter{ $0.pathExtension == "txt" }
//     print("text urls:", textFiles)
// } catch let e {
//     print(e.localizedDescription)
// }
// //-------------------------------------------------------------------------
// let workDir = FileManager.default.urls(
//     for: .documentDirectory,
//     in: .userDomainMask).first!
// //Merging the working dir and the "Data" subdir
// let dataDir = workDir.appendingPathComponent("Data")
// print(dataDir)
// //-------------------------------------------------------------------------
// let fileName = "file.txt"
// let dir = FileManager.default.urls(
//     for: .documentDirectory,
//     in: .userDomainMask).first!
// let filePath = dir.appendingPathComponent(fileName)
// do {
//     let text = try String(contentsOf: filePath,
//         encoding: String.Encoding.utf8)
//     print(text)
// } catch(let e) {
//     print(e.localizedDescription)
// }
// //-------------------------------------------------------------------------
// let fileName = "file.txt"
// let text = "Line 1\nLine 2"
// let dir = FileManager.default.urls(
//     for: .documentDirectory,
//     in: .userDomainMask).first!
// let filePath = dir.appendingPathComponent(fileName)
// do {
//     try text.write(to: filePath,
//         atomically: false,
//         encoding: String.Encoding.utf8)
// } catch(let e) {
//     print(e.localizedDescription)
// }
// //-------------------------------------------------------------------------
// let fileName = "file.txt"
// let text = "\nadded text"
// let data = text.data(
//     using: .utf8,
//     allowLossyConversion: false)!
// let dir = FileManager.default.urls(
//     for: .documentDirectory,
//     in: .userDomainMask).first!
// let url = dir.appendingPathComponent(fileName)
// if let fileHandle = try? FileHandle(forUpdating: url) {
//     do {
//         try fileHandle.seekToEnd()
//         try fileHandle.write(contentsOf: data)
//         try fileHandle.close()
//     }
//     catch {
//         print("File write error!")
//     }
// }
// //-------------------------------------------------------------------------
// let arr = [1, 2, 3]
// let fileName = "file.txt"
// let dir = FileManager.default.urls(
//     for: .documentDirectory,
//     in: .userDomainMask).first!
// let filePath = dir.appendingPathComponent(fileName)
// let nsArr = arr as NSArray
// nsArr.write(to: filePath, atomically: true)
// //-------------------------------------------------------------------------
// let fileName = "file.txt"
// let dir = FileManager.default.urls(
//     for: .documentDirectory,
//     in: .userDomainMask).first!
// let filePath = dir.appendingPathComponent(fileName)
// let arr = NSArray(
//     contentsOf: filePath)!
// //-------------------------------------------------------------------------
// let dic = ["1" : "one", "2" : "two"]
// let fileName = "file.txt"
// let dir = FileManager.default.urls(
//     for: .documentDirectory,
//     in: .userDomainMask).first!
// let filePath = dir.appendingPathComponent(fileName)
// let nsDic = dic as! NSMutableDictionary
// nsDic.write(to: filePath, atomically: true)
// //-------------------------------------------------------------------------
// let fileName = "file.txt"
// let dir = FileManager.default.urls(
//     for: .documentDirectory,
//     in: .userDomainMask).first!
// let filePath = dir.appendingPathComponent(fileName)
// let dic = NSMutableDictionary(
//     contentsOf: filePath)!
// //-------------------------------------------------------------------------
// //XML example:
// //<Lines>
// //    <Line Id="1">one</Line>
// //    <Line Id="2">two</Line>
// //</Lines>
// class XmlReader: NSObject, XMLParserDelegate {
//     struct Line {
//         var id: Int
//         var value: String
//     }
//     var lines: [Line] = []
//     private var line: Line? = nil
//     func Read() {
//         //read "data.xml" from document path
//         let fileName = "data.xml"
//         let dir = FileManager.default.urls(
//             for: .documentDirectory,
//             in: .userDomainMask).first!
//         let url = dir.appendingPathComponent(fileName)
//         let parser = XMLParser(contentsOf: url)
//         parser?.delegate = self
//         parser?.parse()
//         print(lines)
//     }
//     //get attributes
//     func parser(_ parser: XMLParser,
//         didStartElement elementName: String,
//         namespaceURI: String?,
//         qualifiedName qName: String?,
//         attributes attributeDict: [String : String] = [:]) {
//         if elementName == "Line" {
//             line = Line(id: Int(attributeDict["Id"]!)!,
//                 value: "")
//         }
//     }
//     //get element value
//     func parser(_ parser: XMLParser,
//         foundCharacters string: String) {
//         line?.value = string
//     }
//     //add element to array
//     func parser(_ parser: XMLParser,
//         didEndElement elementName: String,
//         namespaceURI: String?,
//         qualifiedName qName: String?) {
//         if elementName == "Line" {
//             lines.append(line!)
//         }
//     }
// }
// let xmlReader = XmlReader()
// xmlReader.Read()
// //-------------------------------------------------------------------------
// //XML file:
// //<Lines>
// //    <Line Id="1">one</Line>
// //    <Line Id="2">two</Line>
// //</Lines>
// //get file path
// let fileName = "data.xml"
// let dir = FileManager.default.urls(
//     for: .documentDirectory,
//     in: .userDomainMask).first!
// let filePath = dir.appendingPathComponent(fileName)
// do {
//     //read XML data
//     //using https://github.com/tadija/AEXML
//     let xml = try String(contentsOf: filePath,
//         encoding: String.Encoding.utf8)
//     if let xmlDoc = try? AEXMLDocument(xml: xml) {
//         for element in xmlDoc.root.children {
//             print("value: " + element.value! + ", id: " +
//                 element.attributes["Id"]!)
//         }
//     }
//     //printed:
//     //value: one, id: 1
//     //value: two, id: 2
// } catch(let e) {
//     print(e.localizedDescription)
// }
// //-------------------------------------------------------------------------
// //XML file:
// //<Lines>
// //    <Line Id="1">one</Line>
// //    <Line Id="2">two</Line>
// //</Lines>
// //using https://github.com/tadija/AEXML
// let xmlDoc = AEXMLDocument()
// let lines = xmlDoc.addChild(name: "Lines")
// lines.addChild(name: "Line",
//     value: "one", attributes: ["Id" : "1"])
// lines.addChild(name: "Line",
//     value: "two", attributes: ["Id" : "2"])
// //save to file "data.xml"
// let fileName = "data.xml"
// let dir = FileManager.default.urls(
//     for: .documentDirectory,
//     in: .userDomainMask).first!
// let filePath =
//     dir.appendingPathComponent(fileName)
// do {
//     try xmlDoc.xml.write(to: filePath,
//         atomically: false,
//         encoding: String.Encoding.utf8)
// } catch(let e) {
//     print(e.localizedDescription)
// }
// //-------------------------------------------------------------------------
// import Zip
// //using: https://github.com/marmelroy/Zip.git
// //file or dir name
// let sourcePath = "data"
// let dir = FileManager.default.urls(
//     for: .documentDirectory,
//     in: .userDomainMask).first!
// let sourceURL = dir.appendingPathComponent(sourcePath)
// let destURL = dir.appendingPathComponent(sourcePath + ".zip")
// do {
//     try Zip.zipFiles(paths: [sourceURL],
//         zipFilePath: destURL, password: nil,
//         progress: { (progress) -> () in print(progress) })
// } catch {
//     print("Error: \(error)")
// }
// //-------------------------------------------------------------------------
// import Zip
// //using: https://github.com/marmelroy/Zip.git
// //file or dir name
// let sourcePath = "data"
// let dir = FileManager.default.urls(
//     for: .documentDirectory,
//     in: .userDomainMask).first!
// let sourceURL = dir.appendingPathComponent(sourcePath)
// let destURL = dir.appendingPathComponent(sourcePath + ".zip")
// do {
//     try Zip.zipFiles(paths: [sourceURL],
//         zipFilePath: destURL, password: "123",
//         progress: { (progress) -> () in print(progress) })
// } catch {
//     print("Error: \(error)")
// }
// //-------------------------------------------------------------------------
// import Zip
// //using: https://github.com/marmelroy/Zip.git
// let zipFile = "data.zip"
// let dir = FileManager.default.urls(
//     for: .documentDirectory,
//     in: .userDomainMask).first!
// let zipURL = dir.appendingPathComponent(zipFile)
// do {
//     try Zip.unzipFile(zipURL, destination: dir,
//         overwrite: true, password: nil,
//         progress: { (progress) -> () in print(progress) })
// } catch {
//     print("Error: \(error)")
// }
// //-------------------------------------------------------------------------
// import Zip
// //using: https://github.com/marmelroy/Zip.git
// let zipFile = "data.zip"
// let dir = FileManager.default.urls(
//     for: .documentDirectory,
//     in: .userDomainMask).first!
// let zipURL = dir.appendingPathComponent(zipFile)
// do {
//     try Zip.unzipFile(zipURL, destination: dir,
//         overwrite: true, password: "123",
//         progress: { (progress) -> () in print(progress) })
// } catch {
//     print("Error: \(error)")
// }
// //-------------------------------------------------------------------------
// import SQLite3
// //connect to database file "data.sqlite"
// let dbPath = Bundle.main.path(
//     forResource: "data", ofType: "sqlite")!
// var db: OpaquePointer? = nil
// sqlite3_open(dbPath, &db)
// let sql = """
//     SELECT
//         Language, Percentage
//     FROM countrylanguage
//     WHERE CountryCode = 'RUS'
//     ORDER BY Percentage DESC
// """
// var pointer: OpaquePointer?
// sqlite3_prepare_v2(db, sql, -1, &pointer, nil)
// while sqlite3_step(pointer) == SQLITE_ROW {
//     let text = sqlite3_column_text(pointer, 0)
//     let lang = String(cString: text!)
//     let percent = sqlite3_column_double(pointer, 1)
//     print("\(lang): \(percent)")
// }
// sqlite3_finalize(pointer)
// //-------------------------------------------------------------------------
// // Connect to the database
// // ...
// let sql = """
// SELECT
//   Language, Percentage
// FROM countrylanguage
// WHERE CountryCode = 'RUS'
// ORDER BY Percentage DESC
// """
// var pointer: OpaquePointer?
// if sqlite3_prepare_v2(db, sql, -1, &pointer, nil) != SQLITE_OK {
//     let err = String(cString: sqlite3_errmsg(db)!)
//     print("SQL query execution error: \(err)")
// }
// // Ger first row
// sqlite3_step(pointer)
// showRow(pointer)
// // Get all rows
// while sqlite3_step(pointer) == SQLITE_ROW {
//     showRow(pointer)
// }
// sqlite3_finalize(pointer)
// class func showRow(_ pointer: OpaquePointer?) {
//     let text = sqlite3_column_text(pointer, 0)
//     let lang = String(cString: text!)
//     let percent = sqlite3_column_double(pointer, 1)
//     print("\(lang): \(percent)")
// }
// //-------------------------------------------------------------------------
// // Connect to the database
// // ...
// let sql = """
//     SELECT
//         Language, Percentage
//     FROM countrylanguage
//     WHERE
//         CountryCode = ? AND
//         Percentage > ?
// """
// var pointer: OpaquePointer?
// sqlite3_prepare_v2(db, sql, -1, &pointer, nil)
// sqlite3_bind_text(pointer, 1, "RUS", -1, nil)
// sqlite3_bind_double(pointer, 2, 0.5)
// while sqlite3_step(pointer) == SQLITE_ROW {
//     let text = sqlite3_column_text(pointer, 0)
//     let lang = String(cString: text!)
//     let percent = sqlite3_column_double(pointer, 1)
//     print("\(lang): \(percent)")
// }
// sqlite3_finalize(pointer)
// //-------------------------------------------------------------------------
// // Connect to the database
// // ...
// let sql = """
//     DELETE FROM city
//     WHERE ID = ?
// """
// var pointer: OpaquePointer?
// sqlite3_prepare_v2(db, sql, -1, &pointer, nil)
// sqlite3_bind_int(pointer, 1, 2)
// if sqlite3_step(pointer) != SQLITE_DONE {
//     let errmsg = String(cString: sqlite3_errmsg(db)!)
//     print("record deletion error: \(errmsg)")
// }
// sqlite3_finalize(pointer)
// //-------------------------------------------------------------------------
// let red = 51.0/255.0
// let green = 255.0/255.0
// let blue = 51.0/255.0
// var colorGreen = UIColor(
//     red: red, green: green, blue: blue, alpha: 1)
// print(colorGreen)
// //with transparency
// colorGreen = UIColor(
//     red: red, green: green, blue: blue, alpha: 0.5)
// print(colorGreen)
// //-------------------------------------------------------------------------
// let orange = UIColor.orange
// var red: CGFloat = 0
// var green: CGFloat = 0
// var blue: CGFloat = 0
// var alpha: CGFloat = 0
// orange.getRed(&red, green: &green,
//     blue: &blue, alpha: &alpha)
// print("red is \(red*255)")
// print("green is \(green*255)")
// print("blue is \(blue*255)")
// //-------------------------------------------------------------------------
// let red = 51
// let green = 255
// let blue = 51
// let alpha = 128
// var htmlColor = String(format:
//     "#%02X%02X%02X", red, green, blue)
// //htmlColor is #33FF33
// print("style=\"color: \(htmlColor)\"")
// //with transparency
// htmlColor = String(format:
//     "#%02X%02X%02X%02X",
// red, green, blue, alpha)
// //htmlColor is #33FF3380
// print("htmlColor is \(htmlColor)")
// //-------------------------------------------------------------------------
// let orange = "FFC80080"
// let x = UInt64(orange, radix: 16)!
// let red = (x >> 24) & 0xFF
// let green = (x >> 16) & 0xFF
// let blue = (x >> 8) & 0xFF
// let alpha = x & 0xFF
// print("red is \(red)")
// print("green is \(green)")
// print("blue is \(blue)")
// print("alpha is \(alpha)")
// //-------------------------------------------------------------------------
// let color = UIColor.blue
// var red: CGFloat = 0
// var green: CGFloat = 0
// var blue: CGFloat = 0
// var alpha: CGFloat = 0
// color.getRed(&red, green: &green,
//     blue: &blue, alpha: &alpha)
// var htmlColor = String(format: "#%02X%02X%02X",
//     Int(red*255.0), Int(green*255.0), Int(blue*255.0))
// //htmlColor is #0000FF
// print("style=\"color: \(htmlColor)\"")
// //add transparency
// alpha = 128
// htmlColor += String(format: "%02X", Int(alpha))
// //htmlColor is #0000FF80
// print("htmlColor is \(htmlColor)")
// //-------------------------------------------------------------------------
// func search(_ arr: [Int], _ x: Int) -> Int
// {
//     var i = 0
//     let count = arr.count
//     while i < count {
//         if arr[i] == x {
//             return i
//         }
//         i+=1
//     }
//     return -1
// }
// var items = [ 2, 3, 5, 7, 11, 13, 17 ]
// print(search(items, 1))
// //print -1
// print(search(items, 7))
// //print 3
// print(search(items, 19))
// //print -1
// // *** simplified speed test ***
// items = [Int](repeating: 0, count: 1_000_000)
// for i in 0 ..< items.count {
//     items[i] = i
// }
// let count = 100
// var result = -1
// let clock = ContinuousClock()
// let time = clock.measure
// {
//     for _ in 0 ..< count {
//         result = search(items, 7777777)
//     }
// }
// print("result is \(result)")
// print("seconds is \(time.components.seconds)")
// // about 2 seconds
// //-------------------------------------------------------------------------
// func search(_ items: [Int], _ x: Int) -> Int
// {
//     var arr = items
//     let count = arr.count
//     arr.append(x)
//     var i = 0
//     while true {
//         if arr[i] == x {
//             return i < count ? i : -1
//         }
//         i+=1
//     }
// }
// var items = [ 2, 3, 5, 7, 11, 13, 17 ]
// print(search(items, 1))
// //print -1
// print(search(items, 7))
// //print 3
// print(search(items, 19))
// //print -1
// // *** simplified speed test ***
// items = [Int](repeating: 0, count: 1_000_000)
// for i in 0 ..< items.count {
//     items[i] = i
// }
// let count = 100
// let start = Date()
// var result = -1
// for _ in 0 ..< count {
//     result = search(items, 777777)
// }
// let seconds = abs(start.timeIntervalSinceNow)
// print(result)
// print(seconds)
// // about 2.13 seconds
// //-------------------------------------------------------------------------
// //works when the array is sorted
// func search(_ arr: [Int], _ x: Int) -> Int
// {
//     var i = 0
//     var j = arr.count
//     while (i != j)
//     {
//         let m = (i + j)/2
//         if x == arr[m] {
//             return m
//         }
//         if x < arr[m] {
//             j = m
//         } else {
//             i = m + 1
//         }
//     }
//     return -1
// }
// var items = [ 2, 3, 5, 7, 11, 13, 17 ]
// print(search(items, 1))
// //print -1
// print(search(items, 7))
// //print 3
// print(search(items, 19))
// //print -1
// // *** simplified speed test ***
// items = [Int](repeating: 0, count: 1_000_000)
// for i in 0 ..< items.count {
//     items[i] = i
// }
// let count = 100
// let start = Date()
// var result = -1
// for _ in 0 ..< count {
//     result = search(items, 777777)
// }
// let seconds = abs(start.timeIntervalSinceNow)
// print(result)
// print(seconds)
// // about 0.00037 seconds
// //-------------------------------------------------------------------------
// //works when the array is sorted
// func search(_ list: [Int], _ x: Int) -> Int
// {
//     var low = 0
//     var high = list.count - 1
//     while ((list[low] < x) && (x < list[high]))
//     {
//         let mid = Int(low + ((x - list[low])*(high - low))/(list[high] - list[low]))
//         if list[mid] < x {
//             low = mid + 1
//         } else if list[mid] > x {
//             high = mid - 1
//         } else {
//             return mid
//         }
//     }
//     if list[low] == x {
//         return low
//     }
//     if list[high] == x {
//         return high
//     }
//     return -1
// }
// var items = [ 2, 3, 5, 7, 11, 13, 17 ]
// print(search(items, 1))
// //print -1
// print(search(items, 7))
// //print 3
// print(search(items, 19))
// //print -1
// // *** simplified speed test ***
// items = [Int](repeating: 0, count: 1_000_000)
// for i in 0 ..< items.count {
//     items[i] = i
// }
// let count = 100
// let start = Date()
// var result = -1
// for _ in 0 ..< count {
//     result = search(items, 777777)
// }
// let seconds = abs(start.timeIntervalSinceNow)
// print(result)
// print(seconds)
// // about 0.00039 seconds
// //-------------------------------------------------------------------------
// // Time Complexity O(n^2)
// // Space Complexity O(1)
// func sort(_ arr: [Int]) -> [Int] {
//     var items = arr
//     for i in 0 ..< items.count {
//         for j in i + 1 ..< items.count {
//             if (items[j] < items[i]) {
//                 let tmp = items[j]
//                 items[j] = items[i]
//                 items[i] = tmp
//             }
//         }
//     }
//     return items
// }
// var items = [ 4, 1, 5, 3, 2 ]
// var sortItems = sort(items)
// // sortItems is {1, 2, 3, 4, 5}
// print(sortItems)
// // *** simplified speed test ***
// items = [Int](repeating: 0, count: 200)
// for i in 0 ..< items.count {
//     items[i] = i
// }
// let tmp = items[5]
// items[5] = items[6]
// items[6] = tmp
// let count = 100
// let start = Date()
// for _ in 0 ..< count {
//     sortItems = sort(items)
// }
// let seconds = abs(start.timeIntervalSinceNow)
// print(sortItems)
// print(seconds)
// // about 2.32 seconds
// //-------------------------------------------------------------------------
// // Time Complexity from O(n log(n)) to O(n^2)
// // Space Complexity O(log(n))
// func doSort(_ items: inout [Int], _ fst: Int, _ lst: Int) {
//     if fst >= lst {
//         return
//     }
//     var i = fst
//     var j = lst
//     let x = items[(fst + lst)/2]
//     while (i < j) {
//         while items[i] < x { i+=1 }
//         while items[j] > x { j-=1 }
//         if (i <= j) {
//             let tmp = items[i]
//             items[i] = items[j]
//             items[j] = tmp
//             i+=1
//             j-=1
//         }
//     }
//     doSort(&items, fst, j)
//     doSort(&items, i, lst)
// }
// func sort(_ arr: [Int]) -> [Int]
// {
//     var items = arr
//     doSort(&items, 0, items.count - 1)
//     return items
// }
// var items = [ 4, 1, 5, 3, 2 ]
// var sortItems = sort(items)
// // sortItems is {1, 2, 3, 4, 5}
// print(sortItems)
// // *** simplified speed test ***
// items = [Int](repeating: 0, count: 200)
// for i in 0 ..< items.count {
//     items[i] = i
// }
// let tmp = items[5]
// items[5] = items[6]
// items[6] = tmp
// let count = 100
// let start = Date()
// for _ in 0 ..< count {
//     sortItems = sort(items)
// }
// let seconds = abs(start.timeIntervalSinceNow)
// print(sortItems)
// print(seconds)
// // about 0.008698 seconds
// //-------------------------------------------------------------------------
// // Time Complexity O(n+k)
// // Space Complexity O(k)
// func sort(_ arr: [Int]) -> [Int] {
//     var items = arr
//     var min = Int.max
//     var max = Int.min
//     for x in arr {
//         if x > max { max = x }
//         if x < min { min = x }
//     }
//     var counts = [Int](repeating: 0, count: max - min + 1)
//     for x in arr {
//         counts[x - min]+=1
//     }
//     var total = 0
//     for i in min...max {
//         let oldCount = counts[i - min]
//         counts[i - min] = total
//         total += oldCount
//     }
//     for x in arr {
//         items[counts[x - min]] = x
//         counts[x - min]+=1
//     }
//     return items
// }
// var items = [ 4, 1, 5, 3, 2 ]
// var sortItems = sort(items)
// // sortItems is {1, 2, 3, 4, 5}
// print(sortItems)
// // *** simplified speed test ***
// items = [Int](repeating: 0, count: 200)
// for i in 0 ..< items.count {
//     items[i] = i
// }
// let tmp = items[5]
// items[5] = items[6]
// items[6] = tmp
// let count = 100
// let start = Date()
// for _ in 0 ..< count {
//     sortItems = sort(items)
// }
// let seconds = abs(start.timeIntervalSinceNow)
// print(sortItems)
// print(seconds)
// // about 0.0467 seconds
// //-------------------------------------------------------------------------
// // Time Complexity O(n log(n)))
// // Space Complexity O(n)ŽÓJÈ¯
// func sort(_ data: [Int]) -> [Int] {
//     var result: [Int] = []
//     if data.count < 2 {
//         return data
//     }
//     let l_left = data.count / 2
//     let l_right = data.count - l_left
//     let left = sort(Array(data.prefix(l_left)))
//     let right = sort(Array(data.suffix(l_right)))
//     var i = 0
//     var j = 0
//     while i < l_left && j < l_right {
//         if left[i] > right[j] {
//             result.append(right[j])
//             j += 1
//         } else {
//             result.append(left[i])
//             i += 1
//         }
//     }
//     result += left.suffix(l_left - i)
//     result += right.suffix(l_right - j)
//     return result
// }
// var items = [ 4, 1, 5, 3, 2 ]
// var sortItems = sort(items)
// // sortItems is {1, 2, 3, 4, 5}
// print(sortItems)
// // *** simplified speed test ***
// items = [Int](repeating: 0, count: 200)
// for i in 0 ..< items.count {
//     items[i] = i
// }
// let tmp = items[5]
// items[5] = items[6]
// items[6] = tmp
// let count = 100
// let start = Date()
// for _ in 0 ..< count {
//     sortItems = sort(items)
// }
// let seconds = abs(start.timeIntervalSinceNow)
// print(sortItems)
// print(seconds)
// // about 0.137 seconds
// //-------------------------------------------------------------------------
// // Time Complexity O(nk)
// // Space Complexity O(n+k)
// func listToBuckets(_ items: [Int], _ cBase: Int, _ i: Int) -> [[Int]] {
//     var buckets = [[Int]](repeating: [], count: cBase)
//     let pBase = Int(pow(Double(cBase), Double(i)))
//     for x in items {
//         //Isolate the base-digit from the number
//         let digit = (x / pBase) % cBase
//         //Drop the number into the correct bucket
//         buckets[digit].append(x)
//     }
//     return buckets
// }
// func bucketsToList(_ buckets: [[Int]]) -> [Int] {
//     var result: [Int] = []
//     for bucket in buckets {
//         //add the numbers in a bucket
//         //sequentially to the returned array
//         result += bucket
//     }
//     return result
// }
// func sort(_ arr: [Int], _ cBase: Int = 10) -> [Int] {
//     var result = arr
//     let maxVal = arr.max()!
//     var i = 0
//     while (Int(pow(Double(cBase), Double(i))) <= maxVal) {
//         result = bucketsToList(listToBuckets(result, cBase, i))
//         i+=1
//     }
//     return result
// }
// var items = [ 4, 1, 5, 3, 2 ]
// var sortItems = sort(items)
// // sortItems is {1, 2, 3, 4, 5}
// print(sortItems)
// // *** simplified speed test ***
// items = [Int](repeating: 0, count: 200)
// for i in 0 ..< items.count {
//     items[i] = i
// }
// let tmp = items[5]
// items[5] = items[6]
// items[6] = tmp
// let count = 100
// let start = Date()
// for _ in 0 ..< count {
//     sortItems = sort(items)
// }
// let seconds = abs(start.timeIntervalSinceNow)
// print(sortItems)
// print(seconds)
// // about 0.0515 seconds
// //-------------------------------------------------------------------------
// import Foundation
// class Point {
//     var x: Double
//     var y: Double
//     init (x: Double, y:Double) {
//         self.x = x
//         self.y = y
//     }
// }
// extension Point {
//     func distanceTo(_ point: Point) -> Double {
//         let d1 = pow(x - point.x, 2)
//         let d2 = pow(y - point.y, 2)
//         return sqrt(d1 + d2)
//     }
// }
// let p1 = Point (x: 1.0,y: 2.0)
// let p2 = Point (x: 2.0,y: 3.0)
// let distance = p1.distanceTo(p2)
// //distance is 1.4142
// print(distance)
// //-------------------------------------------------------------------------
// import Foundation
// class Point {
//     var x: Double
//     var y: Double
//     init (x: Double, y:Double) {
//         self.x = x
//         self.y = y
//     }
// }
// extension Point {
//     class func getDistance(_ p1: Point, _ p2: Point) -> Double {
//         let d1 = pow(p1.x - p2.x, 2)
//         let d2 = pow(p1.y - p2.y, 2)
//         return sqrt(d1 + d2)
//     }
// }
// let p1 = Point (x: 1.0,y: 2.0)
// let p2 = Point (x: 2.0,y: 3.0)
// let distance = Point.getDistance(p1, p2)
// //distance is 1.4142
// print(distance)
// //-------------------------------------------------------------------------
// class Size {
//     var width: Int
//     var height: Int
//     init(width: Int, height: Int) {
//         self.width = width
//         self.height = height
//     }
// }
// extension Size {
//     var area: Int {
//         return width * height
//     }
// }
// let size = Size(width: 4, height: 5)
// let area = size.area
// //area is 20
// print("area is", area)
// //-------------------------------------------------------------------------
// class Size {
//     var width: Int = 0
//     var height: Int = 0
// }
// extension Size {
//     convenience init(width: Int, height: Int) {
//         self.init()
//         self.width = width
//         self.height = height
//     }
// }
// let size = Size(width: 4, height: 5)
// print("size is (\(size.width), \(size.height))")
//
// extension Int {
//     subscript(i: Int) -> Int {
//         return self << i
//     }
// }
// let n = 5 //101
// //shift left by 1
// let n1 = n[1]
// //n1 is 10 (1010)
// //shift right by 2
// let n2 = n[-2]
// //n2 is 1
// print("n1 is", n1)
// print("n2 is", n2)
// //-------------------------------------------------------------------------
// extension String {
//     enum Kind {
//         case empty, short, long
//     }
//     var kind: Kind {
//         switch count {
//             case 0:
//                 return .empty
//             case 1...10:
//                 return .short
//             default:
//                 return .long
//         }
//     }
// }
// let text = "salute"
// let kind = text.kind
// //kind is .short
// print("kind is", kind)
// //-------------------------------------------------------------------------
// extension Double {
//     func getPow(_ i: Double) -> Double {
//         return pow(self, i)
//     }
//     var square: Double { return self * self }
// }
// extension String {
//     var trimmed: String {
//         self.trimmingCharacters(in: .whitespacesAndNewlines)
//     }
// }
// let n = 5.0
// let pow2 = n.getPow(2)
// //pow2 is 25.0
// let square = 3.0.square
// //square is 9.0
// let str = "  \t  word \r\n".trimmed
// //str is "word"
// print("pow2 is", pow2)
// print("square is", square)
// print("str is", str)
// //-------------------------------------------------------------------------
// class Shape {}
// private protocol Printable {
//     func Print()
// }
// extension Shape: Printable {
//     func Print() {
//         //implementation
//         print("shape print")
//     }
// }
// let shape = Shape()
// shape.Print()
// //-------------------------------------------------------------------------
// protocol  IPC {
//     func restart()
// }
// class MacBook: IPC {
//     var name: String = "123"
//     var date: Date?
//     func restart() {}
// }
// let macBook = MacBook()
// let mirror = Mirror(reflecting: macBook)
// //show fields
// for child in mirror.children {
//     let fieldName = child.label
//     let value: Any = child.value
//     print("\(fieldName!): \(value)")
// }
// //-------------------------------------------------------------------------
// let size = "m"
// // in version 5.9
// let sizeRange = switch size {
//     case "s":
//         [36...38]
//     case "m":
//         [38...40]
//     case "l":
//         [40...42]
//     default:
//         []
// }
// print("size '\(size)' is '\(sizeRange)'")
// //-------------------------------------------------------------------------
// let n = (-5...5).randomElement()!
// // in version 5.9
// let sign = if n > 0 { "positive" } else { "negative" }
// print("n is \(n)")
// print("sign is '\(sign)'")
// //-------------------------------------------------------------------------
// @backDeployed(before: iOS 16, macOS 13, tvOS 16, watchOS 9)
// @available(iOS 14.0, macOS 11, tvOS 14.0, watchOS 7.0, *)
// public func someIOS16_Features() {
//     print("some iOS16 features")
// }
// /*Swift 5.8 adds a new @backDeployed attribute that makes it possible to allow new APIs to be used on older versions of frameworks.*/
// //-------------------------------------------------------------------------
// let name: String? = "Mark"
// // *** before: ***
// if let name = name {
//     print("Hello, \(name)!")
// }
// // *** in version 5.7: ***
// if let name {
//     print("Hello, \(name)!")
// }
// //-------------------------------------------------------------------------
// // *** before: ***
// await Task.sleep(1_000_000_000)
// // *** in version 5.7: ***
// try await Task.sleep(until:
//     .now + .seconds(1),
//     clock: .continuous)
// //-------------------------------------------------------------------------
// class Vehicle { }
// class Car: Vehicle {
//     func test() {
//         print("test Car \(self)")
//     }
// }
// func example() {
//     let cars = [Car(), Car()]
//     test(vehicles: cars)
// }
// func test(vehicles: [Vehicle]) {
//     switch vehicles {
//         case let cars as [Car]:
//         for car in cars {
//             car.test()
//         }
//         default:
//         print("Nothing to test!")
//     }
// }
// /*Before Swift 5.8 that would have led to the error message, “Collection downcast in cast pattern is not implemented use an explicit downcast to '[Car]' instead.”*/
// //-------------------------------------------------------------------------
// // *** before: ***
// let numbers1: [String: [Character]] = [
//     "one": ["o", "n", "e"],
//     "two": ["t", "w", "o"]
// ]
// // *** in version 5.6: ***
// let numbers2: [_: [Character]] = [
//     "one": ["o", "n", "e"],
//     "two": ["t", "w", "o"]
// ]
// print("numbers1 is \(numbers1)")
// print("numbers2 is \(numbers2)")
// //-------------------------------------------------------------------------
// // *** before: ***
// func sortOld<T: Comparable>(_ array: [T]) -> [T] {
//     array.sorted()
// }
// // *** in version 5.7: ***
// func sort(_ array: [some Comparable]) -> [some Comparable] {
//     array.sorted()
// }
// print(sortOld([1, 3, 2]))
// print(sort(["A", "C", "B"]))
// //-------------------------------------------------------------------------
// class WeakSelfCaptures: NSObject {
//     var count = 10
//     func example() {
//         let showCount = { [weak self] in
//             guard let self else { return }
//             print("count is \(count)")
//         }
//         showCount()
//     }
// }
///*
// SE-0365 takes another step towards letting us remove self from closures by allowing an implicit self in places where a weak self capture has been unwrapped.*/
// //-------------------------------------------------------------------------
// // in version 5.9
// struct User: ~Copyable {
//     let name: String
// }
// let pavel = User(name: "Pavel")
// //move the original instance pavel to pavelCopy
// let pavelCopy = pavel
// print("pavel is '\(pavelCopy.name)'")
// //Error: 'pavel' used after consume
// //print("pavel is '\(pavel.name)'"
///* An instance of a noncopyable type always has unique ownership, unlike normal Swift types which can be freely copied.*/
// //-------------------------------------------------------------------------
// // *** in version 5.8: ***
// print(#file)
// // *** before: ***
// print(#filePath)
// /*#file evaluates to a string literal containing the full path to the current source file.*/
// //-------------------------------------------------------------------------
// lazy var map = getWeatherMap()
// if needUpdateMaps() {
//     print("Got weather maps:", map)
// } else {
//     print("Weather maps are up-to-date!")
// }
// class WeatherMap {}
// func getWeatherMap() -> WeatherMap {
//     print("Getting weather maps...")
//     return WeatherMap()
// }
// func needUpdateMaps() -> Bool {
//     let random = (0...1).randomElement()!
//     return random == 1
// }
///*Lift all limitations on variables in result builders (SE-0373). For example, in Swift 5.8 we can use lazy variables directly inside result builders.*/
// //-------------------------------------------------------------------------
// var text = "hello"
// let textCopy = consume text
// print("textCopy is '\(textCopy)'")
// //Error: 'text' used after consume
// //print("text is '\(text)'")
// _ = consume textCopy
// //Error: 'textCopy' used after consume
// //print("textCopy is '\(textCopy)'")
// text = "goodbye"
// printText(text: consume text)
// //Error: 'text' used after consume
// //print("text is '\(text)'")
// func printText(text: String) {
//     print("text is '\(text)'")
// }
// /*consume operator to end the lifetime of a variable binding */
// //-------------------------------------------------------------------------
// // *** in version 5.7 ***
// let data = "Alina is 25 years old"
// let pattern = /\d+/ //<-Regex type
// // find age
// if let match = try! pattern.firstMatch(in: data) {
//     print("age is \(match.0)")
// }
// // replace age
// print(data.replacing(pattern, with: "18"))
// //-------------------------------------------------------------------------
// let numbers = [1, 2, 3, 4, 5]
// // *** before: ***
// let oldResults = numbers.map { n -> String in
//     if n % 2 == 1 {
//         return "\(n): Odd"
//     } else {
//         return "\(n): Even"
//     }
// }
// // *** in version 5.7: ***
// let results = numbers.map { n in
//     if n % 2 == 1  {
//         return "\(n): Odd"
//     } else {
//         return "\(n): Even"
//     }
// }
// print("oldResults is \(oldResults)")
// print("results is \(results)")
// //-------------------------------------------------------------------------
// // if NOT in iOS 15
// // *** before: ***
// guard #available(iOS 15, *) else {
//     print("iOS version 14 or below")
//     return
// }
// // *** in version 5.6: ***
// if #unavailable(iOS 15) {
//     print("iOS version 14 or below")
// } else {
//     print("iOS version 15 or higher")
// }
// //-------------------------------------------------------------------------
// // *** in version 5.9: ***
// //sleep 1 second
// try await Task.sleep(for: .seconds(1))
// // or sleep between 0.5 and 1.5 second
// try await Task.sleep(for: .seconds(1),
//     tolerance: .seconds(0.5))
// // *** before: ***
// try await Task.sleep(until: .now + .seconds(1))
 //-------------------------------------------------------------------------
 
