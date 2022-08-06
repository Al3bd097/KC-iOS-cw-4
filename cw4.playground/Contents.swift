import UIKit

var name = "Abdullah"
var birthdayYear = 2006
var currentYear = 2022
var age = currentYear - birthdayYear

print("hello my name is \(name) and my age is \(age)")

if age <= 18 && age >= 14
{
    print("يمكنك المشاركة في مبادرة الكويت تبرمج")
}else {
    print("لا يمكنك المشاركة في مبادرة الكويت تبرمج")
}

var numb1 = "8"
var numb2 = 4
var doubleNumb: Double

doubleNumb = Double(numb2) + (Double(numb1) ?? 0) 
print(doubleNumb)
