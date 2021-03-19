//
//  ContentView.swift
//  swift-ui-startup
//
//  Created by 萩倉丈 on 2021/03/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("hagi")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .overlay(
                    Text("Hagi")
                        .font(.system(size: 128))
                        .foregroundColor(.white)
                )
            HStack {
                Text("Hello,")
                Text("World.")
            }.font(.title).padding(.all, 20)
            
            Button("What's up?") {
                print("hello")
            }.foregroundColor(.green)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
