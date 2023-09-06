//
//  ChallengeViewModel.swift
//  xplor-ios-challenge
//
//  Created by devon jerothe on 9/1/23.
//

import Foundation

protocol ChallengeViewProtocal {}

/*
 Currently this view model is not interacting with the view. Your first task is to set up basic
 state managment. This should control all string state for the `CellView`

    1. Set up state between the view and this view model
    2. Create a method that changes the cell view title and button text when the check in button is tapped

 NEXT we should modify our code to pull all text values from a `JsonChallengeModel` object.
 we will be demonstraiting two examples of asyncronous calls. Closures and Delegates

    1. Write a method that uses 'JsonChallenge.loadJsonModelClosure()'
        a. This method will return and save an optional `JsonChallengeModel`
    2. Using a protocal, create a new method that calls `JsonChallenge.loadJsonModelDelegate()`
        a. This method should trigger a delegate method once the data is loaded
    3. Test both of these new methods individually by connecting them to our views button action

 */

class ChallengeViewModel: ObservableObject{
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
