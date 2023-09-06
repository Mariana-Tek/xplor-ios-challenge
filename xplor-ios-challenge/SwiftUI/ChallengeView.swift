//
//  ChallengeView.swift
//  xplor-ios-challenge
//
//  Created by devon jerothe on 9/1/23.
//

import Foundation
import SwiftUI

/*
 SwiftUI Challenge

 For this task we would like you to create a view based off the provided sample image.

    1. Start with creating the CellView and its associated image/txt/button views.
    2. The check in button should allow a tapping action (how this is done is up to you)
    3. State of all strings should be handled inside of `ChallengeViewModel'
    4. The header and tab bar view can be completed as a bonus task if there is adequate time remaining.
        a. Tab bar images will use SFSymbols and are as such:
            1. "house"
            2. "calendar"
            3. "suitcase"
            4. "person.circle"
        b. The content of the other tabs can remain blank for this task

 Once this challenge is passed, proceed to the `ChallengeViewModel`
 */

struct ChallengeView: View {

    @ObservedObject var viewModel = ChallengeViewModel()

    var body: some View {
        VStack {
            Text("Hello World")
        }
    }

    // The main cell view containing an icon, title text, and a button
    var cellView: some View {
        VStack {
            Text("Cell View")
        }
    }

    var headerView: some View {
        VStack {
            Text("Header View")
        }
    }
}

struct ChallengeTabBarView: View {
    var body: some View {
        VStack {
            ChallengeView()
        }
    }
}

struct ChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeTabBarView()
    }
}
