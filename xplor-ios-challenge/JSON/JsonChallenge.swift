//
//  JsonChallenge.swift
//  xplor-ios-challenge
//
//  Created by devon jerothe on 9/1/23.
//

import Foundation

/*
Use this class to parse both JSON files and return the results in the desired way.

      1. `loadJsonModelClosure()` should return the parsed json inside of a closure
      2. `loadJsonModelDelegate()` should return the parse json through a delegate method
 */

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
