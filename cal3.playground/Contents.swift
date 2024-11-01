
import UIKit


class Calculator {
    // 각 클래스의 인스턴스를 담을 프로퍼티를 선언
    var addOperation: AddOperation
    var subOperation: SubOperation
    var mulOperation: MulOperation
    var divOperation: DivOperation
    
    //초기화
    init(addOperation: AddOperation, subOperation: SubOperation, mulOperation: MulOperation, divOperation: DivOperation){
        self.addOperation = addOperation
        self.subOperation = subOperation
        self.mulOperation = mulOperation
        self.divOperation = divOperation
    }
}
    
// 더하기, 빼기, 곱하기, 나누기 기능을 하는 각각의 클래스 생성
class AddOperation{
    func operate(firstNum: Double, secondNum: Double) -> Double {
        return firstNum + secondNum
    }
}

class SubOperation{
    func operate(firstNum: Double, secondNum: Double) -> Double {
        return firstNum - secondNum
    }
}

class MulOperation{
    func operate(firstNum: Double, secondNum: Double) -> Double {
        return firstNum * secondNum
    }
}

class DivOperation{
    func operate(firstNum: Double, secondNum: Double) -> Double {
        return firstNum / secondNum
    }
}

//인스턴스 생성
let addOperation = AddOperation()
let subOperation = SubOperation()
let mulOperation = MulOperation()
let divOperation = DivOperation()

let calculator = Calculator.init(addOperation: addOperation, subOperation: subOperation, mulOperation: mulOperation, divOperation: divOperation)

//클래스 별 함수 실행
calculator.addOperation.operate(firstNum: 20, secondNum: 10)
calculator.subOperation.operate(firstNum: 20, secondNum: 10)
calculator.mulOperation.operate(firstNum: 20, secondNum: 10)
calculator.divOperation.operate(firstNum: 20, secondNum: 10)
    

