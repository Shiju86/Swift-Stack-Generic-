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
