//
//  JsonChallenge.swift
//  xplor-ios-challenge

import Foundation

class JsonChallenge {

    init() {}

    /// Modify this function to parse the data  and return a `JsonChallengeModel` via a completion handler
    func loadJsonModelClosure(onFinished: @escaping (_ jsonData: JsonChallengeModel?) -> Void) {
        if let url = Bundle.main.url(forResource: "jsonDataClosure", withExtension: "json") {
            do {
                var data = try Data(contentsOf: url)
                // finish searialization
            } catch {
                print("error:\(error)")
            }
        }
    }

    /// Modify this function to parse the data  and return a `JsonChallengeModel` via a delegate method
    func loadJsonModelDelegate() {
        if let url = Bundle.main.url(forResource: "jsonDataDelegate", withExtension: "json") {
            do {
                var data = try Data(contentsOf: url)
                // finish searialization
            } catch {
                print("error:\(error)")
            }
        }
    }
}
