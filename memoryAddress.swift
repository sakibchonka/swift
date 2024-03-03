import Foundation

func print(address o: UnsafeRawPointer) {
    print(String(format: "%p", Int(bitPattern: o)))
}

var arr1: [Int] = [0, 1, 2]

print(address: arr1)