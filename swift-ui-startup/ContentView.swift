//
//  ContentView.swift
//  swift-ui-startup
//
//  Created by 萩倉丈 on 2021/03/16.
//

import SwiftUI

struct ContentView: View {
    @State var count : Int = 0
    @State var isRed : Bool = false
    var body: some View {
        VStack {
            Image("hagi")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .overlay(
                    Text(count > 0 ? "\(count)" : "Hagi")
                        .font(.system(size: 128))
                        .foregroundColor(isRed ? .red : .white)
                )
            HStack {
                Text("Hello,")
                Text("World.")
            }.font(.title).padding(.all, 20)
            
            Button("What's up?") {
                count += 1
            }.foregroundColor(.green)
            
            HStack{
                Toggle(isOn: $isRed.animation(.linear)){
                    Text("Do you like Red?")
                }
                .fixedSize()
                .padding()
                
                if isRed {
                    Image(systemName: "heart.fill")
                        .foregroundColor(.red)
                } else {
                    Image(systemName: "heart.slash")
                        .foregroundColor(.gray)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
