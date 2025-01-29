//
//  ChallengeView.swift
//  xplor-ios-challenge

import Foundation
import SwiftUI

struct ChallengeView: View {

    var body: some View {
        VStack {
            Text("Hello World")
        }
    }

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
