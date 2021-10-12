//
//  ContentView.swift
//  Wordplay
//
//  Created by Student on 10/1/21.
//

import SwiftUI

struct ContentView: View {
    @State private var words = Words()
    var body: some View {
        NavigationView {
            VStack {
                Text("Enter the specified word types into the boxes")
                HStack {
                    CustomTextField(placeholder: "noun", variable: $words.noun0)
                    CustomTextField(placeholder: "noun", variable: $words.noun1)
                    CustomTextField(placeholder: "noun", variable: $words.noun2)
                }
                HStack {
                    CustomTextField(placeholder: "animal", variable: $words.animal0)
                    CustomTextField(placeholder: "animal", variable: $words.animal1)
                }
                HStack {
                    CustomTextField(placeholder: "food (Sing.)", variable: $words.food0)
                    CustomTextField(placeholder: "food (Sing.)", variable: $words.food1)
                    CustomTextField(placeholder: "verb", variable: $words.verb0)
                }
                HStack {
                    CustomTextField(placeholder: "adjective", variable: $words.adjective0)
                    CustomTextField(placeholder: "adjective", variable: $words.adjective1)
                }
                HStack {
                    CustomTextField(placeholder: "adjective", variable: $words.adjective2)
                    CustomTextField(placeholder: "adjective", variable: $words.adjective3)
                }
                Spacer()
                NavigationLink("Next", destination: StoryView(words: words))
            }
        }
        .navigationTitle("Word Play")
    }
}

struct Words {
    var noun0 = ""
    var noun1 = ""
    var noun2 = ""
    
    var animal0 = ""
    var animal1 = ""
    var verb0 = ""
    var food0 = ""
    var food1 = ""
    
    var adjective0 = ""
    var adjective1 = ""
    var adjective2 = ""
    var adjective3 = ""
}


struct CustomTextField: View {
    let placeholder : String
    let variable : Binding<String>
    var body: some View {
        TextField(placeholder, text: variable)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
