import Foundation
var S:Double = 100000
var pr:Double = 5
for _ in 0..<5 {
    S = S + S*pr/100
}
print (S)
