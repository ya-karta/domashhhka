// 5 task
import Foundation
var m = Array <Decimal> (repeating:0, count: 100)
m[1] = 1
for i in 2...99 {
    m[i] = m[i-1]+m[i-2]
}
print (m)

