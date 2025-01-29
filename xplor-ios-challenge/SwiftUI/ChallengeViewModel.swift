//
//  ChallengeViewModel.swift
//  xplor-ios-challenge

import Foundation

protocol ChallengeViewProtocal {}


class ChallengeViewModel {
    var jsonChallenge: JsonChallenge = JsonChallenge()

    func buttonPressed() {

    }

    func loadJsonFromClosure() {
        //self.jsonChallenge.loadJsonModelClosure()
    }

    func loadJsonFromDelegate() {
        //jsonChallenge.loadJsonModelDelegate()
    }
}
