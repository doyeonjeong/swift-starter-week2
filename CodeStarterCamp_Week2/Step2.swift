//
//  Step2.swift
//  CodeStarterCamp_Week2
//
//  Created by eve on 2023/02/27.
//

import Foundation

/// 로또 당첨 번호를 생성하는 함수
func getWinningLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = []
    while lottoNumbers.count < 6 {
        let randomNumber = Int.random(in: 1...45)
        lottoNumbers.insert(randomNumber)
    }
    return lottoNumbers
}

/// 로또 당첨 번호를 생성하여 비교하는 함수
func checkLottoNumbers(myNumbers: [Int]) {
    let winningLottoNumbers = getWinningLottoNumbers()
    compareLottoNumbers(winningNumbers: winningLottoNumbers, myNumbers: myNumbers)
}

/// 찍은 번호와 로또 당첨 번호의 겹치는 숫자를 확인하는 함수
func compareLottoNumbers(winningNumbers: Set<Int>, myNumbers: [Int]) {
    let overlappingNumbers = winningNumbers.intersection(Set(myNumbers))
    let sortedNumbers = overlappingNumbers.sorted()
    
    if overlappingNumbers.count > 0 {
        let stringNumbers = sortedNumbers.map { String($0) }.joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(stringNumbers) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
    print("")
}
