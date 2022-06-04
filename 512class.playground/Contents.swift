import UIKit

var greeting = "Hello, playground"


func f1(num1 : Int, num2 : Double)->Int {
    return num1+Int(num2)
}

let clsr = { (num1: Int, num2: Double)-> Int in
    return num1+Int(num2)
}
let fn1 = f1(num1: 10, num2: 5.5)

print(clsr(10,5.5))

func addTwo(arg1: Int, arg2: Int)->Int{
    return arg1+arg2
}

let ret1 = addTwo(arg1: 1, arg2: 5)
print(ret1)

func addTwo2(arg1: Int, arg2: Int, answer:(Int)->()){
    answer(arg2+arg1)
}

addTwo2(arg1: 1, arg2: 5){(ret:Int)in
    print(ret)
}

let array1 = ["abc","def","gfi"]
let array1Mapped = array1.map { (item: String) -> Int in
    return item.count
}



var arr = [1,2,3,4,5,1,7,4,3]

var result = [Int]()

for i in arr.indices {
    result.append(arr[arr.count-i-1])
}

print(result) // [3, 4, 7, 1, 5, 4, 3, 2, 1]

arr.reverse()
print(arr)
