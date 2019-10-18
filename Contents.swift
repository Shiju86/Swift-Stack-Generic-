import UIKit

// Generic

// Push-Pop:: Swift Stack

struct StackGeneric<T> {
    
    var values = [T]()
    
    mutating func push(value: T) {
        
        values.append(value)
    }
    
    mutating func pop() -> T {
        return values.removeLast()
    }
}

var obj = StackGeneric<Any>()
obj.push(value: "A")
obj.push(value: "B")
print(obj)

obj.pop()
print(obj)


// Using Generic functions for incomatible type
/*
 func -(lhs: Self, rhs: Self) -> Self
 func *(lhs: Self, rhs: Self) -> Self
 func /(lhs: Self, rhs: Self) -> Self
 func %(lhs: Self, rhs: Self) -> Self
 */
 
protocol Add {
    static func +(lhs: Self, rhs: Self) -> Self
}

func adding<T: Add>(a: T, b: T) -> T {
    return a + b
}

extension Int: Add {}
extension String: Add {}
extension Double: Add {}

print(adding(a: 5, b: 5))
print(adding(a: "Sam", b: "Winchester"))
print(adding(a: 5.2, b: 5.2))
