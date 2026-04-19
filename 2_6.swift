//6 task
import Foundation
var m = Array (repeating:0, count: 100)
for i in 0...99 {
    m[i]=i+2
}
var prov = Array (repeating: true, count:100)
for i in 0..<m.count {
    var p = m[i]
    for q in 0..<m.count {
        if m[q] == m[i]*p {
            prov[q] = false
            p += 1
        }
    }
}
var m1 = Array <Int> ()
for i in 0..<prov.count {
    if prov[i] == true {
        m1.append (m[i])
    }
}
print (m1)

