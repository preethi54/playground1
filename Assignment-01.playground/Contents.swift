import UIKit

/*
When you open this file  in Xcode, it is normal that you see errors in the source code.
 */
//**************** QUESTION 1 ****************
// 1.a) Declare a variable called  distance of type Double, using type annotation

    var distance : Double = 23

// 1.b) Declare a constant called  maxWeight of type an Int, with a value of 130, using type annotation
    
    let maxWeight:Int = 130

// 1.c) Print  "Your max weight is xxxx pounds", replacing the xxxx with the value of maxWeight. Use String interpolation
    
    print("Your max weight is \(maxWeight) pounds")

// 1.d) Write Swift source code to print the below in one single print statement
            /*
                Hello, All
                Welcome to Swift Programming..!
            */
    print("Hello, All \nWelcome to Swift Programming..!")

//**************** END OF QUESTION 1 ****************



//**************** QUESTION 2 ****************
// 2.a) Predict what will happen when you try and execute below three statements when you uncomment the third line?

var x = 15
var y = 25.0
//y = x
// ANSWER : the type of x is Int and type of y is Double , we cannot assign type of INT to DOUBLE
print("ANSWER : the type of x is Int and type of y is Double , we cannot assign type of INT to DOUBLE")


// 2.b) Fix the error in the question 2.a

    var x1:Double = 15
    var y1 = 25.0
    y1=x1

    

//**************** END OF QUESTION 2 ****************



//**************** QUESTION 3 ****************
//3.a) Declare three constants x, y, z and assign the values 2, 7, 5. Write a swift code to find the largest number among the three integers.
    let p = 2
    let q = 7
    let r = 5

    if( p>=q && p>=r){
        print("p : \(p) is the greater ")
    }else if (q >= p && q >= r){
        print("q: \(q) is the greater ")
    }else if (r >= p && r >= q ){
        print("r: \(r) is the greater ")
    }

//3.b) Declare 2 variables a,b and assign values 13, 103. Write a swift code to check whether the last digit of the two given  integer values are same or not.
    var a = 13
    var b = 103
    if( a % 10 == b % 10 ){
        print("last digit of both a and b are same")
    }else{
        print("last digit of both a and b are NOT same")

}
//**************** END OF QUESTION 3 ****************



//**************** QUESTION 4 ****************
//using loops
//4.a) Print the numbers 1 to N in alternative order, one number from the left side (starting with one) and one number from the right side (starting from N down to 1)
//Decalare var N = 10
//expected output is 1 10 2 9 3 8 4 7 5 6
    var N = 10
    for i in 1...5{
        print("\(i) \(N)",terminator: " ")
        N = N-1
    }

//4.b) If a number C is given, then print the following rhombus
//declare C = 5
//output
// Hint : use terminator in print statements and loops
//    *
//   ***
//  *****
// *******
//*********
// *******
//  *****
//   ***
//    *

print("")
var C:Int = 5;
    print("")

    for i in 1...C*2{

        if i % 2 != 0{

            for _ in stride(from: C*2, to: i, by: -1){

                print(terminator : " ")
                
            }
            for _ in 1...i{

                print("*",terminator : " ")

            }

            print(" ")

        }

    }

    for i in stride(from: C*2, to: 1, by: -1){

        if i % 2 != 0{

            for _ in stride(from: C*2, to: i-2, by: -1){

                print(terminator : " ")
                
            }
            for _ in stride(from: 2, to: i, by: 1){

                print("*",terminator : " ")
                
            }

            print(" ")

        }

    }

print ("_____________________________________")


//**************** END OF QUESTION 4 ****************



//**************** QUESTION 5 ****************
// Using Strings
//5.a) Declare a String and assign the value of your own, Write a Swift code to add "A" in front of the string and print it. If the string already begins with "A", then simply print it.

    var str:String = "Apple"

    str[str.startIndex]

    if( str[str.startIndex] == "A"){
        print("\(str)")
    }else {
        str.insert(contentsOf: "A", at:str.startIndex)
        print("\(str)")
    }

//5.b) Declare a String str1 and and assign the value of your own. Write a swift code to add the last character at the front and back of the given string and print it.
    var str1 = "snow"
    print("\(str1.last!)\(str1)\(str1.last!) ")

//5.c) Declare a String Swift and print them in the reverse order.

    let str2 = "Hello, world!"

    let reversedStr = String(str2.reversed())

    print(reversedStr)

//5.d) Write a Swift code  to check if the first or last characters are 'a' of a given string, return the given string without those 'a' characters in the first and last, otherwise return the given string.
 //declare var myString1 = "ababa"
 //expected output bab

var str3 = "abababab"



print()

var lastInddexA = str3.index(str3.endIndex,offsetBy: -2);

//print(lastInddexA)

print(str3.index(before:str3.lastIndex(of: "a")!))

if(str3[str3.startIndex] == "a" ){
    str3.remove(at : str3.startIndex)
}

if(str3[lastInddexA] == "a"){
    str3.remove(at : lastInddexA)
}
print(str3)
//**************** END OF QUESTION 5 ****************

 



