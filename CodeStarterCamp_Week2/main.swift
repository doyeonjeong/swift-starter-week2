//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoTimes: Dictionary<String, Set<Int>> = [:]

func selectLottoNumbers(times: Int){
    for _ in 1...times {
        var lottoNumbers: Set<Int> = []
        while lottoNumbers.count < 6 {
            let lottoNumber = Int.random(in: 1...45)
            lottoNumbers.insert(lottoNumber)
        }
    saveLottoTimes(lottoNumbers: lottoNumbers)
    }
}

func saveLottoTimes(lottoNumbers: Set<Int>) {
        let time: String = "\(lottoTimes.count + 1)" + "회차"
        lottoTimes[time] = lottoNumbers
}

func findTimesNumbers(at findTime: Int) {
    if let lottoTime: Set<Int> = lottoTimes["\(findTime)회차"] {
        print("\(findTime)회차의 로또 당첨 번호는 ", terminator: "")
        let sortedLottoNumbers = lottoTime.sorted()
        for lottoNumber in 0...sortedLottoNumbers.count - 1 {
            if lottoNumber < sortedLottoNumbers.count {
                print("\(sortedLottoNumbers[lottoNumber]), ", terminator: "")
            } else {
                print("\(sortedLottoNumbers[lottoNumber]) ", terminator: "")
            }
        }
        print("입니다.")
    } else {
        print("해당 회차가 존재하지 않습니다.")
    }
}

selectLottoNumbers(times: 5)
findTimesNumbers(at: 2)
