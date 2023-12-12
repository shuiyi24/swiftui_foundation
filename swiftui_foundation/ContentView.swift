//
//  ContentView.swift
//  swift_foundation
//
//  Created by 123 on 2023/12/8.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationView {
                VStack(alignment: .center, spacing: 15){
                    NavigationLink(destination: StackView() ){
                        Text("布局")
                    }
                    NavigationLink(destination: SpacerView() ){
                        Text("Spacer")
                    }
                    NavigationLink(destination: FontColorView() ){
                        Text("颜色")
                    }
                }
            }
                            
                            

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
