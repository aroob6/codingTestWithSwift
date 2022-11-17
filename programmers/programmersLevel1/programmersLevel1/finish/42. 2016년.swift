import Foundation

func solution(_ a:Int, _ b:Int) -> String {
//    let w = ["THU", "FRI", "SAT", "SUN", "MON", "TUE", "WED"]
//        let monthDay = [ 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
//        let totalDay = monthDay[0..<a-1].reduce(0, +) + b
//
//        return w[totalDay % 7]

    var day = 0

    for i in 1 ..< a {
        switch i {
        case 1, 3, 5, 7, 8, 10, 12: day += 31
        case 2: day += 29
        case 4, 6, 9, 11: day += 30
        default: break
        }
    }

    day += b

    var res = ""
    switch day % 7 {
        case 0: res = "THU"
        case 1: res = "FRI"
        case 2: res = "SAT"
        case 3: res = "SUN"
        case 4: res = "MON"
        case 5: res = "TUE"
        case 6: res = "WED"
        default: break
    }

    return res
}
