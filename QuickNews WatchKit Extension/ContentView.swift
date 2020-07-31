//
//  ContentView.swift
//  QuickNews WatchKit Extension
//
//  Created by Raghav Sethi on 31/07/20.
//  Copyright © 2020 Raghav Sethi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .trailing)  {
            Text("QuickNews")
                .font(.title)
                .fontWeight(.thin)
            Text("Daily news, always on your wrist")
                .fontWeight(.thin)
            Spacer()
            NavigationLink(destination: ArticlesView()) {
                Text("Start")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
