import Foundation
var a:Double = 10
var b:Double  = 4
var c:Double  = 6
var D:Double  = b*b-4*a*c
if D<0 {
    print ("no resheniy")
} else {
    if D==0 {
        var x:Double = (-b/2*a)
        print (x)
    } else {
        var x1:Double = (-b+sqrt(D))/2*a
        var x2:Double = (-b-sqrt(D))/2*a
        print (x1, x2)
    }
}
