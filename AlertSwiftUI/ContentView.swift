//
//  ContentView.swift
//  AlertSwiftUI
//
//  Created by sss on 06.04.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var isError = false
    
    
    var body: some View {
        Button {
            isError = true
            print("test")
        } label: {
            Text("Enter")
        }.actionSheet(isPresented: $isError) {
            ActionSheet(title: Text("Load"),
                        message: Text("Do you want to load a photo?"),
                        buttons: [.default(Text("Load"), action: {
                print("Load")
            }), .cancel()])
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
