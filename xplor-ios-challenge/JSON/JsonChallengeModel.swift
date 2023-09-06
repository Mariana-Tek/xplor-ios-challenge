//
//  JsonChallengeModel.swift
//  xplor-ios-challenge
//
//  Created by devon jerothe on 9/1/23.
//

import Foundation

/*
 The goal of this challenge is to successfully create a model based of the provided JSON found in `jsonData.json`

 The below model does not conform to the JSON provided. Please update the below struct while retaining the variable names. 
 */

struct JsonChallengeModel {
    var iconImage: String?
    var buttonTitle: String?
    var title: String?
}


/*
 BONUS: after sucessfully searializing the JSON, modify these extenstion to return the 'buttonTitle' and 'title' values
 */
extension JsonChallengeModel {
    var buttonTxt: String {
        return ""
    }

    var titleTxt: String {
        return ""
    }
}
