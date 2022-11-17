import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var answer:Int64 = -1
    var sum = 0

    for i in 1 ... count { sum += price * i }

    answer = Int64(money) - Int64(sum)

    return answer > 0 ? 0 : -answer
}

print(solution(3, 20, 4))
