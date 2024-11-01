import UIKit


class Calculator {
    // 연산자를 구별하기 위한 enum 타입 생성
    enum Operator {
        case add
        case sub
        case mul
        case div
        case remainder
    }
    
    // 파라미터로 연산자, 숫자1, 숫자2로 받아서 결과를 리턴하는 함수
    func cal(op: Operator, firstNum: Double, secondNum: Double) -> Double {
        
        switch op {
        case .add:
            return firstNum + secondNum
        case .sub:
            return firstNum - secondNum
        case .mul:
            return firstNum * secondNum
        case .div:
            return firstNum / secondNum
        case . remainder:
            return firstNum.truncatingRemainder(dividingBy: secondNum)
            
        }
    }
}

let calculator = Calculator() //인스턴스 생성

var addResult = calculator.cal(op: .add, firstNum: 20, secondNum: 10) // 함수 실행 결과 저장
var subResult = calculator.cal(op: .sub, firstNum: 20, secondNum: 10)
var mulResult = calculator.cal(op: .mul, firstNum: 20, secondNum: 10)
var divideResult = calculator.cal(op: .div, firstNum: 20, secondNum: 10)
var remainResult = calculator.cal(op: .remainder, firstNum: 20, secondNum: 10)

print("더하기 결과:\(addResult)") // 확인
print("빼기 결과:\(subResult)")
print("곱하기 결과:\(mulResult)")
print("나누기 결과:\(divideResult)")
print("나머지연산 결과:\(remainResult)")





