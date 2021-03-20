//
//  ContentView.swift
//  swift-ui-startup
//
//  Created by 萩倉丈 on 2021/03/16.
//

import SwiftUI

struct ContentView: View {
    @State var count : Int = 0
    var body: some View {
        VStack {
            Image("hagi")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .overlay(
                    Text(count > 0 ? "\(count)" : "Hagi")
                        .font(.system(size: 128))
                        .foregroundColor(.white)
                )
            HStack {
                Text("Hello,")
                Text("World.")
            }.font(.title).padding(.all, 20)
            
            Button("What's up?") {
                count += 1
            }.foregroundColor(.green)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
