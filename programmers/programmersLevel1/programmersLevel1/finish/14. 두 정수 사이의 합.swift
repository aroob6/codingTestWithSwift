import Foundation

func solution(_ a:Int, _ b:Int) -> Int64 {
//    return Int64(Array(a > b ? b...a : a...b).reduce(0, +))

    var sum = 0
    if a < b {
        for i in a ... b {
            sum += i
        }
    } else if a > b {
        for i in b ... a {
            sum += i
        }
    }
    else {
        return Int64(a)
    }
    return Int64(sum)
}
