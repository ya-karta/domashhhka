// 3 task
import Foundation
var m = Array (repeating:0, count: 100)
for i in 0...99 {
    m [i] = i+1
}
var i=0
while i<m.count {
    if m[i]%2 == 0 || m[i]%3 != 0 {
        m.remove (at:i)
    } else {
        i+=1
    }
}
print (m)
