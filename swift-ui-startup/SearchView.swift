//
//  SearchView.swift
//  swift-ui-startup
//
//  Created by 萩倉丈 on 2021/03/21.
//

import SwiftUI

struct SearchView: View {
    @Binding var isPresented : Bool
    @State var query : String = ""
    
    var body: some View {
        VStack{
            HStack{
                TextField("What's your name?", text: $query)
                    .padding()
                Button("Go"){}
                    .padding()
            }
            Spacer()
            Text("Hello, \(query == "" ? "Wrold": query)").padding()
            Button("Reset") {
                isPresented = false
            }
            Spacer()
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(isPresented: Binding.constant(false))
    }
}
