//
//  SearchView.swift
//  swift-ui-startup
//
//  Created by 萩倉丈 on 2021/03/21.
//

import SwiftUI

struct SearchView: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Button("Reset") {
            isPresented = false
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(isPresented: Binding.constant(false))
    }
}
