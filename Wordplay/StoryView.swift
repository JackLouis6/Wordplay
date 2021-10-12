//
//  StoryView.swift
//  Wordplay
//
//  Created by Student on 10/7/21.
//

import SwiftUI

struct StoryView: View {
    let words: Words
    var body: some View {
        Text(writeStory())
    }
    func writeStory() -> String {
        return "Today was a \(words.adjective0) day. I went to the zoo. " +
            "The \(words.animal0)s were eating \(words.adjective1) \(words.food0)s, and the " +
            "\(words.animal1)s were eating \(words.adjective2) \(words.food1)s! " +
            "I also saw a \(words.noun0) next to a \(words.noun1), which was odd. " +
            "We got to go on a Jungle \(words.verb0), and saw \(words.adjective0) \(words.noun2)s. " +
            "What a wierd day. "
    }
}


struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(words: Words())
    }
}
